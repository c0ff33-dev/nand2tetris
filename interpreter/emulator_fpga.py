"""
Pygame-based FPGA platform emulator for Nand2Tetris.

Emulates the ILI9341V LCD controller (240x320, 16-bit RGB565) and NS2009 resistive
touch panel via memory-mapped I/O interception. Mouse clicks/drags are translated to
touch events. UART/GPIO writes are swallowed so busy-wait loops don't block.

Usage:
    python emulator_fpga.py <file.asm> [--scale N] [--fps N]
"""

import sys
import numpy as np
import pygame
from engine import Engine, RAM_SIZE
from fpga_backend import ACCEL_AVAILABLE, AcceleratedFpgaEngine

# FPGA I/O memory map
LCD8_ADDR = 4104  # LCD command port (8-bit SPI)
LCD16_ADDR = 4105  # LCD data port (16-bit SPI)
RTP_ADDR = 4106  # Resistive touch panel (NS2009)
UART_TX_ADDR = 4098
UART_RX_ADDR = 4099

# LCD geometry (ILI9341V in portrait mode)
LCD_WIDTH = 240
LCD_HEIGHT = 320

# ILI9341V SPI commands
CMD_CASET = 42  # 0x2A - Column Address Set
CMD_PASET = 43  # 0x2B - Page (Row) Address Set
CMD_RAMWR = 44  # 0x2C - Memory Write
CMD_COMPLETE = 256  # CSX high (end SPI transaction)

# NS2009 touch registers
RTP_SET_X = 192  # 0xC0
RTP_SET_Y = 208  # 0xD0
RTP_SET_Z = 224  # 0xE0
RTP_READ = 256  # in[8]=1 for read
RTP_ADC_MAX = 4094

# Emulator-internal trigger address for ROM-patched Screen.clearScreen
CLEAR_TRIGGER = 4112
CPU_HZ = 15_000_000
DEFAULT_FPS = 60
DEFAULT_SCALE = 1

# Pre-computed RGB565 -> RGB888 lookup table (65536 entries x 3 channels)
_RGB565_LUT = np.empty((65536, 3), dtype=np.uint8)
_lut_i = np.arange(65536, dtype=np.uint32)
_RGB565_LUT[:, 0] = ((_lut_i >> 11) & 0x1F) * 255 // 31
_RGB565_LUT[:, 1] = ((_lut_i >> 5) & 0x3F) * 255 // 63
_RGB565_LUT[:, 2] = (_lut_i & 0x1F) * 255 // 31
del _lut_i


class LcdController:
    """
    Emulates ILI9341V LCD controller with a 240x320 RGB888 numpy framebuffer.

    Tracks the SPI command state machine: CASET/PASET set a pixel window,
    RAMWR receives RGB565 pixel data that fills the window row-major
    (x increments first, then y).
    """

    def __init__(self) -> None:
        # Stored as (width, height, 3) - surfarray-native order, avoids transpose on render
        self.framebuffer = np.full((LCD_WIDTH, LCD_HEIGHT, 3), 255, dtype=np.uint8)
        self.window_x1 = 0
        self.window_y1 = 0
        self.window_x2 = LCD_WIDTH - 1
        self.window_y2 = LCD_HEIGHT - 1
        self.current_cmd: int | None = None
        self.cmd_data_idx = 0
        self.pixel_x = 0
        self.pixel_y = 0
        self.dirty = True

    def write_command(self, cmd: int) -> None:
        """Handle write to LCD command port (LCD[0] / RAM[4104])."""
        if cmd == CMD_COMPLETE:
            self.current_cmd = None
            return

        # 8-bit data sent via command port with bit 9 set (MADCTL/COLMOD config)
        if cmd >= 512:
            return

        self.current_cmd = cmd
        self.cmd_data_idx = 0

        if cmd == CMD_RAMWR:
            self.pixel_x = self.window_x1
            self.pixel_y = self.window_y1

    def write_data(self, data: int) -> None:
        """Handle write to LCD data port (LCD[1] / RAM[4105])."""
        cmd = self.current_cmd

        if cmd == CMD_CASET:
            if self.cmd_data_idx == 0:
                self.window_x1 = data & 0xFFFF
            else:
                self.window_x2 = data & 0xFFFF
            self.cmd_data_idx += 1

        elif cmd == CMD_PASET:
            if self.cmd_data_idx == 0:
                self.window_y1 = data & 0xFFFF
            else:
                self.window_y2 = data & 0xFFFF
            self.cmd_data_idx += 1

        elif cmd == CMD_RAMWR:
            self._set_pixel(data)
            # Row-major fill: x increments first, then y
            self.pixel_x += 1
            if self.pixel_x > self.window_x2:
                self.pixel_x = self.window_x1
                self.pixel_y += 1
                if self.pixel_y > self.window_y2:
                    self.pixel_y = self.window_y1

    def clear(self) -> None:
        """Fill entire framebuffer with white (called via ROM-patched Screen.clearScreen)."""
        self.framebuffer[:] = 255
        self.dirty = True

    def _set_pixel(self, rgb565: int) -> None:
        """Convert RGB565 to RGB888 via LUT and write to framebuffer."""
        x, y = self.pixel_x, self.pixel_y
        if 0 <= x < LCD_WIDTH and 0 <= y < LCD_HEIGHT:
            self.framebuffer[x, y] = _RGB565_LUT[rgb565 & 0xFFFF]
            self.dirty = True


class TouchController:
    """
    Emulates NS2009 resistive touch panel controller.

    Converts pygame mouse state to 12-bit ADC values (0-4094).
    Implements the write-register / read-data SPI protocol.
    """

    def __init__(self) -> None:
        self.current_reg: int | None = None
        self.mouse_x = 0
        self.mouse_y = 0
        self.mouse_down = False
        self._response = 0

    def update(self, lcd_x: int, lcd_y: int, pressed: bool) -> None:
        """Update touch state from pygame mouse position (in LCD pixel coords)."""
        self.mouse_x = max(0, min(lcd_x, LCD_WIDTH - 1))
        self.mouse_y = max(0, min(lcd_y, LCD_HEIGHT - 1))
        self.mouse_down = pressed

    def write(self, value: int) -> None:
        """Handle write to RTP[0] (RAM[4106])."""
        if value == RTP_READ:
            if self.current_reg == RTP_SET_X:
                if self.mouse_down:
                    self._response = self.mouse_x * RTP_ADC_MAX // max(LCD_WIDTH - 1, 1)
                else:
                    self._response = 4095  # invalid = no touch
            elif self.current_reg == RTP_SET_Y:
                if self.mouse_down:
                    # NS2009 inverts Y axis - provide raw inverted value
                    # (Touch.jack re-inverts: y_coord = adc_max - readValue)
                    adc_y = self.mouse_y * RTP_ADC_MAX // max(LCD_HEIGHT - 1, 1)
                    self._response = RTP_ADC_MAX - adc_y
                else:
                    self._response = 4095
            elif self.current_reg == RTP_SET_Z:
                self._response = 500 if self.mouse_down else 0
            else:
                self._response = 0
        else:
            # Register select command
            self.current_reg = value
            self._response = 0

    def read(self) -> int:
        """Handle read from RTP[0]. Always returns immediately (never busy)."""
        return self._response


class FpgaRAM:
    """
    RAM proxy that intercepts reads/writes to FPGA I/O ports (4096-4111).

    Non-I/O addresses pass through to a plain list. I/O reads that would
    normally busy-wait on hardware (LCD, UART_TX) always return 0 (ready)
    so spin loops exit immediately.
    """

    def __init__(self, size: int, lcd: LcdController, touch: TouchController) -> None:
        self._data = [0] * size
        self._lcd = lcd
        self._touch = touch

    def __getitem__(self, key: int | slice) -> int | list[int]:
        # Fast path: skip I/O checks for the 99% of accesses outside I/O range
        try:
            if key < 4096 or key > 4112:
                return self._data[key]
        except TypeError:
            return self._data[key]  # slice fallback
        if key == LCD8_ADDR or key == LCD16_ADDR:
            return 0  # busy bit never set
        if key == RTP_ADDR:
            return self._touch.read()
        if key == UART_TX_ADDR:
            return 0  # always ready
        return self._data[key]

    def __setitem__(self, key: int, value: int) -> None:
        if key < 4096 or key > 4112:
            self._data[key] = value
            return
        if key == LCD8_ADDR:
            self._lcd.write_command(value)
        elif key == LCD16_ADDR:
            self._lcd.write_data(value)
        elif key == RTP_ADDR:
            self._touch.write(value)
        elif key == UART_TX_ADDR:
            # Echo UART output to terminal
            if 0 < (value & 0x7F) < 128:
                sys.stdout.write(chr(value & 0x7F))
                sys.stdout.flush()
        elif key == CLEAR_TRIGGER:
            self._lcd.clear()
        else:
            self._data[key] = value

    def __len__(self) -> int:
        return len(self._data)


def _patch_function_to_nop(engine: Engine, func_name: str, local_count: int, trigger_addr: int | None = None) -> bool:
    """
    Patch a function to skip its body and return immediately.

    Replaces body instructions after local variable init with a direct jump
    to the function's return sequence. Optionally writes to a trigger address
    first (used by Screen.clearScreen to signal the LCD controller).

    :param engine: Engine with ROM loaded.
    :param func_name: Function label (e.g. "Sys.wait").
    :param local_count: Number of local variables (determines init instruction count).
    :param trigger_addr: Optional RAM address to write to before returning.
    :return: True if patched successfully.
    """
    if func_name not in engine.address_labels:
        return False

    addr = engine.address_labels[func_name]
    rom = engine.rom_raw

    # Find the function's return: @RETURN_SUB followed by 0;JMP
    ret_jmp = None
    for i in range(addr + 6, min(addr + 500, len(rom))):
        if rom[i][1] == "0;JMP" and i > 0 and "RETURN" in rom[i - 1][1]:
            ret_jmp = i
            break

    if ret_jmp is None:
        return False

    # Return sequence is 6 instructions: push 0 + @RETURN_SUB + 0;JMP
    ret_start = ret_jmp - 5

    # Skip past local variable init prologue:
    # @SP, A=M, [M=0, A=A+1] * (n-1), M=0, D=A+1, @SP, M=D
    # = 4 + 2*locals instructions (or 6 minimum when locals >= 1)
    init_len = max(4 + 2 * local_count, 6) if local_count > 0 else 0
    body = addr + init_len

    if trigger_addr is not None:
        # @trigger_addr; M=0; @ret_start; 0;JMP
        src = rom[body][0]
        rom[body] = [src, "@%d" % trigger_addr]
        engine.rom_debug[body] = [src, "@%d // %s: trigger" % (trigger_addr, func_name)]
        body += 1
        src = rom[body][0]
        rom[body] = [src, "M=0"]
        engine.rom_debug[body] = [src, "M=0 // %s: trigger write" % func_name]
        body += 1

    src0 = rom[body][0]
    rom[body] = [src0, "@%d" % ret_start]
    engine.rom_debug[body] = [src0, "@%d // %s: skip to return" % (ret_start, func_name)]

    src1 = rom[body + 1][0]
    rom[body + 1] = [src1, "0;JMP"]
    engine.rom_debug[body + 1] = [src1, "0;JMP // %s: skip body" % func_name]
    return True


def _patch_rom(engine: Engine, patch_wait: bool = True) -> None:
    """
    Apply all ROM patches for FPGA emulation.

    - Sys.wait: optionally skip busy-loop delays (LCD init waits, animation timing)
    - Screen.clearScreen: skip 76,800 SPI pixel writes, trigger numpy fill instead

    :param engine: Engine with ROM loaded.
    :param patch_wait: When True, patch Sys.wait to return immediately.
    """
    patched = []
    if patch_wait and _patch_function_to_nop(engine, "Sys.wait", 1):
        patched.append("Sys.wait")
    if _patch_function_to_nop(engine, "Screen.clearScreen", 3, trigger_addr=CLEAR_TRIGGER):
        patched.append("Screen.clearScreen")
    if patched:
        print("FPGA Emulator: Patched out %s" % ", ".join(patched))
    engine.decode()  # re-decode after ROM modifications


def render_screen(lcd: LcdController, surface: pygame.Surface) -> None:
    """Blit LCD framebuffer onto the pygame surface."""
    if not lcd.dirty:
        return
    # framebuffer is already (width, height, 3) - surfarray-native order
    pygame.surfarray.blit_array(surface, lcd.framebuffer)
    lcd.dirty = False


def poll_input(touch: TouchController, scale: int) -> bool:
    """Process pygame events and feed mouse state to the touch controller."""
    running = True
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN and event.key == pygame.K_ESCAPE:
            running = False
        elif event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
            touch.update(event.pos[0] // scale, event.pos[1] // scale, True)
        elif event.type == pygame.MOUSEBUTTONUP and event.button == 1:
            touch.update(event.pos[0] // scale, event.pos[1] // scale, False)
        elif event.type == pygame.MOUSEMOTION and pygame.mouse.get_pressed()[0]:
            touch.update(event.pos[0] // scale, event.pos[1] // scale, True)
    return running


def main() -> None:
    """Entry point for the FPGA emulator."""
    import argparse

    parser = argparse.ArgumentParser(description="Nand2Tetris FPGA platform emulator")
    parser.add_argument("file", help="Path to .asm file to execute")
    parser.add_argument(
        "--scale", type=int, default=DEFAULT_SCALE, help="Display scale factor (default: %d)" % DEFAULT_SCALE
    )
    parser.add_argument("--fps", type=int, default=DEFAULT_FPS, help="Target render FPS (default: %d)" % DEFAULT_FPS)
    parser.add_argument(
        "--patch-wait",
        action="store_true",
        help="Patch Sys.wait to return immediately instead of emulating its delay loop",
    )
    args = parser.parse_args()

    cycles_per_frame = CPU_HZ // args.fps

    # Initialize peripheral controllers
    lcd = LcdController()
    touch = TouchController()

    # Initialize engine with I/O-intercepting RAM
    if ACCEL_AVAILABLE:
        engine = AcceleratedFpgaEngine(lcd, touch)
    else:
        engine = Engine()
        engine.ram = FpgaRAM(RAM_SIZE, lcd, touch)
    engine.load(args.file)
    patch_wait = args.patch_wait or not ACCEL_AVAILABLE
    _patch_rom(engine, patch_wait=patch_wait)
    if ACCEL_AVAILABLE:
        print("FPGA Emulator: Using compiled backend")
        if not patch_wait:
            print("FPGA Emulator: Preserving Sys.wait delay loops")
    else:
        print("FPGA Emulator: Compiled backend unavailable (build with `python build_fpga_backend.py`)")
    print("FPGA Emulator: Loaded %s (%d instructions)" % (args.file, len(engine.rom_raw)))

    # Initialize pygame
    pygame.init()
    window_w = LCD_WIDTH * args.scale
    window_h = LCD_HEIGHT * args.scale
    window = pygame.display.set_mode((window_w, window_h))
    pygame.display.set_caption("FPGA Emulator - %s" % args.file)
    screen_surface = pygame.Surface((LCD_WIDTH, LCD_HEIGHT))
    clock = pygame.time.Clock()

    running = True
    total_cycles = 0
    while running:
        running = poll_input(touch, args.scale)

        if not engine.halted:
            executed = engine.run_cycles(cycles_per_frame)
            total_cycles += executed

        render_screen(lcd, screen_surface)
        if args.scale == 1:
            window.blit(screen_surface, (0, 0))
        else:
            scaled = pygame.transform.scale(screen_surface, (window_w, window_h))
            window.blit(scaled, (0, 0))

        fps = clock.get_fps()
        effective_mhz = (fps * cycles_per_frame) / 1_000_000 if fps > 0 else 0
        pygame.display.set_caption("FPGA - %s | %.1f FPS | %.2f MHz" % (args.file, fps, effective_mhz))
        pygame.display.flip()

        clock.tick(args.fps)

    pygame.quit()
    print("FPGA Emulator: %d total cycles executed" % total_cycles)


if __name__ == "__main__":
    main()
