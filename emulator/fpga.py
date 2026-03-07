"""
Pygame-based FPGA platform emulator for Nand2Tetris.

Emulates the ILI9341V LCD controller (240x320, 16-bit RGB565) and NS2009 resistive
touch panel via memory-mapped I/O interception. Mouse clicks/drags are translated to
touch events. UART/GPIO writes are swallowed so busy-wait loops don't block.

Usage:
    python emulator/fpga.py <file.asm> [--scale N] [--fps N]
"""

from pathlib import Path
import sys

INTERPRETER_DIR = Path(__file__).resolve().parents[1] / "interpreter"
if str(INTERPRETER_DIR) not in sys.path:
    sys.path.insert(0, str(INTERPRETER_DIR))

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
TETRIS_FILENAME = "12_Tetris.asm"

# Tetris-only keyboard overlay: A/W/S/D simulate the four on-screen control buttons.
# W maps to the "L" button and S maps to the "R" button.
TETRIS_WASD_TOUCH = {
    pygame.K_a: (30, 303),
    pygame.K_w: (90, 303),
    pygame.K_s: (150, 303),
    pygame.K_d: (210, 303),
}

_RGB565_LUT = np.empty((65536, 3), dtype=np.uint8)
_lut_i = np.arange(65536, dtype=np.uint32)
_RGB565_LUT[:, 0] = ((_lut_i >> 11) & 0x1F) * 255 // 31
_RGB565_LUT[:, 1] = ((_lut_i >> 5) & 0x3F) * 255 // 63
_RGB565_LUT[:, 2] = (_lut_i & 0x1F) * 255 // 31
del _lut_i


class LcdController:
    """
    Emulate the ILI9341V LCD controller with a 240x320 RGB888 framebuffer.
    """

    def __init__(self) -> None:
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
        """
        Handle writes to the LCD command port.

        :param cmd: Raw command value written by the emulated program.
        """
        if cmd == CMD_COMPLETE:
            self.current_cmd = None
            return

        if cmd >= 512:
            return

        self.current_cmd = cmd
        self.cmd_data_idx = 0

        if cmd == CMD_RAMWR:
            self.pixel_x = self.window_x1
            self.pixel_y = self.window_y1

    def write_data(self, data: int) -> None:
        """
        Handle writes to the LCD data port.

        :param data: Raw 16-bit LCD payload.
        """
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
            self.pixel_x += 1
            if self.pixel_x > self.window_x2:
                self.pixel_x = self.window_x1
                self.pixel_y += 1
                if self.pixel_y > self.window_y2:
                    self.pixel_y = self.window_y1

    def clear(self) -> None:
        """Fill the framebuffer with white."""
        self.framebuffer[:] = 255
        self.dirty = True

    def _set_pixel(self, rgb565: int) -> None:
        if 0 <= self.pixel_x < LCD_WIDTH and 0 <= self.pixel_y < LCD_HEIGHT:
            self.framebuffer[self.pixel_x, self.pixel_y] = _RGB565_LUT[rgb565 & 0xFFFF]
            self.dirty = True


class TouchController:
    """
    Emulate the NS2009 resistive touch panel controller.
    """

    def __init__(self) -> None:
        self.current_reg: int | None = None
        self.mouse_x = 0
        self.mouse_y = 0
        self.mouse_down = False
        self._virtual_buttons: dict[int, tuple[int, int]] = {}
        self._response = 0

    def update(self, lcd_x: int, lcd_y: int, pressed: bool) -> None:
        """
        Update touch state from pygame mouse position.

        :param lcd_x: Horizontal LCD coordinate.
        :param lcd_y: Vertical LCD coordinate.
        :param pressed: Whether the touch is currently active.
        """
        self.mouse_x = max(0, min(lcd_x, LCD_WIDTH - 1))
        self.mouse_y = max(0, min(lcd_y, LCD_HEIGHT - 1))
        self.mouse_down = pressed

    def press_virtual(self, key: int, lcd_x: int, lcd_y: int) -> None:
        """
        Press a virtual touch point, overriding the mouse while held.

        :param key: Source key used to identify the virtual press.
        :param lcd_x: Horizontal LCD coordinate.
        :param lcd_y: Vertical LCD coordinate.
        """
        self._virtual_buttons.pop(key, None)
        self._virtual_buttons[key] = (
            max(0, min(lcd_x, LCD_WIDTH - 1)),
            max(0, min(lcd_y, LCD_HEIGHT - 1)),
        )

    def release_virtual(self, key: int) -> None:
        """
        Release a previously pressed virtual touch point.

        :param key: Source key used to identify the virtual press.
        """
        self._virtual_buttons.pop(key, None)

    def _active_touch(self) -> tuple[int, int, bool]:
        if self._virtual_buttons:
            key = next(reversed(self._virtual_buttons))
            x, y = self._virtual_buttons[key]
            return (x, y, True)
        return (self.mouse_x, self.mouse_y, self.mouse_down)

    def write(self, value: int) -> None:
        """
        Handle writes to the touch controller port.

        :param value: Raw command value written by the emulated program.
        """
        touch_x, touch_y, touch_down = self._active_touch()
        if value == RTP_READ:
            if self.current_reg == RTP_SET_X:
                if touch_down:
                    self._response = touch_x * RTP_ADC_MAX // max(LCD_WIDTH - 1, 1)
                else:
                    self._response = 4095
            elif self.current_reg == RTP_SET_Y:
                if touch_down:
                    adc_y = touch_y * RTP_ADC_MAX // max(LCD_HEIGHT - 1, 1)
                    self._response = RTP_ADC_MAX - adc_y
                else:
                    self._response = 4095
            elif self.current_reg == RTP_SET_Z:
                self._response = 500 if touch_down else 0
            else:
                self._response = 0
        else:
            self.current_reg = value
            self._response = 0

    def read(self) -> int:
        """
        Read the touch controller response register.

        :return: Current touch controller response.
        """
        return self._response


class FpgaRAM:
    """
    RAM proxy that intercepts reads and writes to FPGA I/O ports.
    """

    def __init__(self, size: int, lcd: LcdController, touch: TouchController) -> None:
        self._data = [0] * size
        self._lcd = lcd
        self._touch = touch

    def __getitem__(self, key: int | slice) -> int | list[int]:
        try:
            if key < 4096 or key > 4112:
                return self._data[key]
        except TypeError:
            return self._data[key]
        if key == LCD8_ADDR or key == LCD16_ADDR:
            return 0
        if key == RTP_ADDR:
            return self._touch.read()
        if key == UART_TX_ADDR:
            return 0
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

    :param engine: Engine with ROM loaded.
    :param func_name: Function label.
    :param local_count: Number of local variables in the function prologue.
    :param trigger_addr: Optional trigger address to write before returning.
    :return: True when the function was patched.
    """
    if func_name not in engine.address_labels:
        return False

    addr = engine.address_labels[func_name]
    rom = engine.rom_raw

    ret_jmp = None
    for i in range(addr + 6, min(addr + 500, len(rom))):
        if rom[i][1] == "0;JMP" and i > 0 and "RETURN" in rom[i - 1][1]:
            ret_jmp = i
            break

    if ret_jmp is None:
        return False

    ret_start = ret_jmp - 5
    init_len = max(4 + 2 * local_count, 6) if local_count > 0 else 0
    body = addr + init_len

    if trigger_addr is not None:
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
    Apply the ROM patches used by the FPGA emulator.

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
    engine.decode()


def render_screen(lcd: LcdController, surface: pygame.Surface) -> None:
    """
    Blit the LCD framebuffer onto the pygame surface.

    :param lcd: LCD controller containing the framebuffer.
    :param surface: Target pygame surface.
    """
    if not lcd.dirty:
        return
    pygame.surfarray.blit_array(surface, lcd.framebuffer)
    lcd.dirty = False


def poll_input(touch: TouchController, scale: int, tetris_wasd: bool = False) -> bool:
    """
    Process pygame events and feed mouse state to the touch controller.

    :param touch: Touch controller instance.
    :param scale: Current window scaling factor.
    :param tetris_wasd: Whether to enable the Tetris-only WASD overlay.
    :return: False if the window was closed, True otherwise.
    """
    running = True
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN and event.key == pygame.K_ESCAPE:
            running = False
        elif tetris_wasd and event.type == pygame.KEYDOWN and event.key in TETRIS_WASD_TOUCH:
            touch.press_virtual(event.key, *TETRIS_WASD_TOUCH[event.key])
        elif tetris_wasd and event.type == pygame.KEYUP and event.key in TETRIS_WASD_TOUCH:
            touch.release_virtual(event.key)
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
    tetris_wasd = args.file.endswith(TETRIS_FILENAME)

    lcd = LcdController()
    touch = TouchController()

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
        print("FPGA Emulator: Compiled backend unavailable (build with `python interpreter/build_accelerator.py`)")
    if tetris_wasd:
        print("FPGA Emulator: Tetris WASD overlay enabled (A=left, W=L, S=R, D=right)")
    print("FPGA Emulator: Loaded %s (%d instructions)" % (args.file, len(engine.rom_raw)))

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
        running = poll_input(touch, args.scale, tetris_wasd=tetris_wasd)

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
