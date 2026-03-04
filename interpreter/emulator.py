"""
Pygame-based HACK platform emulator for Nand2Tetris.

Renders the memory-mapped screen (RAM[16384..24575]) and handles keyboard I/O (RAM[24576])
while driving the CPU engine at approximately 6.25 MHz (hardware baseline).

Usage:
    python emulator.py <file.asm> [--scale N] [--fps N]
"""
import sys
import numpy as np
import pygame
from engine import Engine

# HACK platform memory map
SCREEN_BASE = 16384
SCREEN_END = 24576
KBD_ADDR = 24576

# Screen geometry
SCREEN_WIDTH = 512
SCREEN_HEIGHT = 256
WORDS_PER_ROW = 32  # 512 pixels / 16 bits per word

# Timing
CPU_HZ = 2_500_000
DEFAULT_FPS = 60
DEFAULT_SCALE = 2

# Pygame key → HACK key code (128+)
KEY_MAP = {
    pygame.K_RETURN: 128,    pygame.K_KP_ENTER: 128,
    pygame.K_BACKSPACE: 129,
    pygame.K_LEFT: 130,      pygame.K_UP: 131,
    pygame.K_RIGHT: 132,     pygame.K_DOWN: 133,
    pygame.K_HOME: 134,      pygame.K_END: 135,
    pygame.K_PAGEUP: 136,    pygame.K_PAGEDOWN: 137,
    pygame.K_INSERT: 138,    pygame.K_DELETE: 139,
    pygame.K_ESCAPE: 140,
    pygame.K_F1: 141,  pygame.K_F2: 142,  pygame.K_F3: 143,
    pygame.K_F4: 144,  pygame.K_F5: 145,  pygame.K_F6: 146,
    pygame.K_F7: 147,  pygame.K_F8: 148,  pygame.K_F9: 149,
    pygame.K_F10: 150, pygame.K_F11: 151, pygame.K_F12: 152,
}


def render_screen(engine, surface):
    """Bulk-convert HACK screen RAM to a pygame surface via numpy bit unpacking."""
    # Extract screen memory, masking to 16 bits (HACK uses two's complement)
    screen_mem = np.array(engine.ram[SCREEN_BASE:SCREEN_END], dtype=np.int64)
    screen_mem = (screen_mem & 0xFFFF).astype(np.uint16)

    # View as bytes in native uint16 layout, then unpack bits
    # Force little-endian so bit ordering is correct: LSB = leftmost pixel
    if sys.byteorder == 'big':
        screen_mem = screen_mem.byteswap()
    screen_bytes = screen_mem.view(np.uint8).reshape(SCREEN_HEIGHT, WORDS_PER_ROW * 2)
    pixels = np.unpackbits(screen_bytes, axis=1, bitorder='little')  # (256, 512), 0 or 1

    # HACK convention: bit set = black (0), bit clear = white (255)
    rgb = np.where(pixels, 0, 255).astype(np.uint8)

    # pygame surfarray expects (width, height, 3) — transpose and broadcast to RGB
    rgb3 = np.stack([rgb, rgb, rgb], axis=-1).transpose(1, 0, 2)
    pygame.surfarray.blit_array(surface, rgb3)


def poll_keyboard(engine):
    """Process pygame events and update HACK keyboard memory-mapped register.

    Returns False if the window was closed (signals exit).
    HACK only tracks one key at a time: last KEYDOWN wins, matching KEYUP clears.
    """
    hack_code = engine.ram[KBD_ADDR]
    running = True

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key in KEY_MAP:
                hack_code = KEY_MAP[event.key]
            elif event.unicode and 0 < ord(event.unicode) < 128:
                hack_code = ord(event.unicode)
            else:
                hack_code = 0
        elif event.type == pygame.KEYUP:
            hack_code = 0

    engine.ram[KBD_ADDR] = hack_code
    return running


def main():
    import argparse

    parser = argparse.ArgumentParser(description="Nand2Tetris HACK platform emulator")
    parser.add_argument('file', help='Path to .asm file to execute')
    parser.add_argument('--scale', type=int, default=DEFAULT_SCALE,
                        help='Display scale factor (default: %d)' % DEFAULT_SCALE)
    parser.add_argument('--fps', type=int, default=DEFAULT_FPS,
                        help='Target render FPS (default: %d)' % DEFAULT_FPS)
    args = parser.parse_args()

    cycles_per_frame = CPU_HZ // args.fps

    # Initialize engine
    engine = Engine()
    engine.load(args.file)
    print("Emulator: Loaded %s (%d instructions)" % (args.file, len(engine.rom_raw)))

    # Initialize pygame
    pygame.init()
    window_w = SCREEN_WIDTH * args.scale
    window_h = SCREEN_HEIGHT * args.scale
    window = pygame.display.set_mode((window_w, window_h))
    pygame.display.set_caption("HACK Emulator — %s" % args.file)
    screen_surface = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
    clock = pygame.time.Clock()

    running = True
    total_cycles = 0
    while running:
        # 1. Poll I/O (keyboard + window close)
        running = poll_keyboard(engine)

        # 2. Execute one frame's worth of CPU cycles
        if not engine.halted:
            executed = engine.run_cycles(cycles_per_frame)
            total_cycles += executed

        # 3. Render screen from memory-mapped RAM
        render_screen(engine, screen_surface)
        if args.scale == 1:
            window.blit(screen_surface, (0, 0))
        else:
            scaled = pygame.transform.scale(screen_surface, (window_w, window_h))
            window.blit(scaled, (0, 0))

        # 4. Show FPS in title bar
        fps = clock.get_fps()
        effective_mhz = (fps * cycles_per_frame) / 1_000_000 if fps > 0 else 0
        pygame.display.set_caption("HACK — %s | %.1f FPS | %.2f MHz" % (args.file, fps, effective_mhz))
        pygame.display.flip()

        # 5. Cap frame rate
        clock.tick(args.fps)

    pygame.quit()
    print("Emulator: %d total cycles executed" % total_cycles)


if __name__ == '__main__':
    main()
