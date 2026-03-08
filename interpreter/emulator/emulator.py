"""
Pygame-based HACK emulator for Nand2Tetris.

Renders the standard memory-mapped display (RAM[16384..24575]) and handles keyboard
I/O (RAM[24576]) while driving the CPU engine at a configurable target frequency
(default: 2.5 MHz).

Usage:
    python -m emulator.emulator <file.asm> [--scale N] [--fps N] [--cpu-hz 2.5M] [--no-cython]
"""

import numpy as np
import pygame
import sys

from .emulator_cli import parse_cpu_hz
from engine import Engine
from engine.accelerated_engine import ACCEL_AVAILABLE, AcceleratedEngine

# Standard HACK memory map
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

# Pygame key -> platform key code (128+)
KEY_MAP = {
    pygame.K_RETURN: 128,
    pygame.K_KP_ENTER: 128,
    pygame.K_BACKSPACE: 129,
    pygame.K_LEFT: 130,
    pygame.K_UP: 131,
    pygame.K_RIGHT: 132,
    pygame.K_DOWN: 133,
    pygame.K_HOME: 134,
    pygame.K_END: 135,
    pygame.K_PAGEUP: 136,
    pygame.K_PAGEDOWN: 137,
    pygame.K_INSERT: 138,
    pygame.K_DELETE: 139,
    pygame.K_ESCAPE: 140,
    pygame.K_F1: 141,
    pygame.K_F2: 142,
    pygame.K_F3: 143,
    pygame.K_F4: 144,
    pygame.K_F5: 145,
    pygame.K_F6: 146,
    pygame.K_F7: 147,
    pygame.K_F8: 148,
    pygame.K_F9: 149,
    pygame.K_F10: 150,
    pygame.K_F11: 151,
    pygame.K_F12: 152,
}


def render_screen(engine: Engine, surface: pygame.Surface) -> None:
    """
    Bulk-convert display RAM to a pygame surface via numpy bit unpacking.

    :param engine: The CPU engine instance.
    :param surface: The pygame surface to render onto.
    """
    screen_mem = np.array(engine.ram[SCREEN_BASE:SCREEN_END], dtype=np.int64)
    screen_mem = (screen_mem & 0xFFFF).astype(np.uint16)

    if sys.byteorder == "big":
        screen_mem = screen_mem.byteswap()
    screen_bytes = screen_mem.view(np.uint8).reshape(SCREEN_HEIGHT, WORDS_PER_ROW * 2)
    pixels = np.unpackbits(screen_bytes, axis=1, bitorder="little")

    rgb = np.where(pixels, 0, 255).astype(np.uint8)
    rgb3 = np.stack([rgb, rgb, rgb], axis=-1).transpose(1, 0, 2)
    pygame.surfarray.blit_array(surface, rgb3)


def poll_keyboard(engine: Engine) -> bool:
    """
    Process pygame events and update the keyboard memory-mapped register.

    :param engine: The CPU engine instance.
    :return: False if the window was closed, True otherwise.
    """
    key_code = engine.ram[KBD_ADDR]
    running = True

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            if event.key in KEY_MAP:
                key_code = KEY_MAP[event.key]
            elif event.unicode and 0 < ord(event.unicode) < 128:
                key_code = ord(event.unicode)
            else:
                key_code = 0
        elif event.type == pygame.KEYUP:
            key_code = 0

    engine.ram[KBD_ADDR] = key_code
    return running


def main() -> None:
    """Entry point for the HACK emulator."""
    import argparse

    parser = argparse.ArgumentParser(description="Nand2Tetris HACK emulator")
    parser.add_argument("file", help="Path to .asm file to execute")
    parser.add_argument(
        "--scale", type=int, default=DEFAULT_SCALE, help="Display scale factor (default: %d)" % DEFAULT_SCALE
    )
    parser.add_argument("--fps", type=int, default=DEFAULT_FPS, help="Target render FPS (default: %d)" % DEFAULT_FPS)
    parser.add_argument(
        "--cpu-hz",
        type=parse_cpu_hz,
        default=CPU_HZ,
        help="Target CPU frequency in Hz/K/M notation (e.g. 1M, 2.5M; default: 2.5M)",
    )
    parser.add_argument(
        "--no-cython",
        action="store_true",
        help="Use the Python engine even when the compiled backend is available",
    )
    args = parser.parse_args()

    if args.cpu_hz < args.fps:
        parser.error("--cpu-hz must be at least as large as --fps")
    cycles_per_frame = args.cpu_hz // args.fps
    use_cython = not args.no_cython

    if use_cython and ACCEL_AVAILABLE:
        engine = AcceleratedEngine()
        print("HACK Emulator: Using compiled backend")
    elif use_cython:
        engine = Engine()
        print("HACK Emulator: Compiled backend unavailable (build with `python engine/build_accelerator.py`)")
    else:
        engine = Engine()
        print("HACK Emulator: Compiled backend disabled (--no-cython)")
    engine.load(args.file)
    print("HACK Emulator: Loaded %s (%d instructions)" % (args.file, len(engine.rom_raw)))

    pygame.init()
    window_w = SCREEN_WIDTH * args.scale
    window_h = SCREEN_HEIGHT * args.scale
    window = pygame.display.set_mode((window_w, window_h))
    pygame.display.set_caption("HACK Emulator - %s" % args.file)
    screen_surface = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
    clock = pygame.time.Clock()

    running = True
    total_cycles = 0
    while running:
        running = poll_keyboard(engine)

        if not engine.halted:
            executed = engine.run_cycles(cycles_per_frame)
            total_cycles += executed

        render_screen(engine, screen_surface)
        if args.scale == 1:
            window.blit(screen_surface, (0, 0))
        else:
            scaled = pygame.transform.scale(screen_surface, (window_w, window_h))
            window.blit(scaled, (0, 0))

        fps = clock.get_fps()
        effective_mhz = (fps * cycles_per_frame) / 1_000_000 if fps > 0 else 0
        pygame.display.set_caption("HACK - %s | %.1f FPS | %.2f MHz" % (args.file, fps, effective_mhz))
        pygame.display.flip()

        clock.tick(args.fps)

    pygame.quit()
    print("HACK Emulator: %d total cycles executed" % total_cycles)


if __name__ == "__main__":
    main()
