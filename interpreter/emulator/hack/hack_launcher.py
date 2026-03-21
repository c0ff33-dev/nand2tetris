"""Handheld-friendly HACK emulator launcher."""

import argparse
from decimal import Decimal, InvalidOperation
from pathlib import Path
import re
from typing import List, Optional, Tuple

import pygame

try:
    from emulator.emulator_cli import parse_cpu_hz
except ImportError:
    _CPU_HZ_RE = re.compile(r"^\s*(\d+(?:\.\d+)?)\s*([kKmMgG]?)\s*$")
    _CPU_HZ_MULTIPLIERS = {
        "": 1,
        "K": 1_000,
        "M": 1_000_000,
        "G": 1_000_000_000,
    }

    def parse_cpu_hz(value: str) -> int:
        """
        Parse a CPU frequency literal into whole Hz.

        :param value: User-provided CLI literal.
        :return: Parsed frequency in whole Hz.
        :raises argparse.ArgumentTypeError: If the value is malformed or non-positive.
        """
        match = _CPU_HZ_RE.fullmatch(value)
        if match is None:
            raise argparse.ArgumentTypeError("CPU_HZ must look like 1000000, 500K, 1M, or 2.5M")

        amount_text, suffix = match.groups()
        try:
            amount = Decimal(amount_text)
        except InvalidOperation as exc:
            raise argparse.ArgumentTypeError("CPU_HZ must be a valid decimal number") from exc

        hz = amount * Decimal(_CPU_HZ_MULTIPLIERS[suffix.upper()])
        if hz != hz.to_integral_value():
            raise argparse.ArgumentTypeError("CPU_HZ must resolve to a whole number of Hz")

        parsed = int(hz)
        if parsed <= 0:
            raise argparse.ArgumentTypeError("CPU_HZ must be positive")
        return parsed


from engine import Engine
from engine.accelerated_engine import AcceleratedEngine

# Standard HACK memory map
SCREEN_BASE = 16384
SCREEN_END = 24576
KBD_ADDR = 24576
SCREEN_WORDS = SCREEN_END - SCREEN_BASE

# Screen geometry
SCREEN_WIDTH = 512
SCREEN_HEIGHT = 256
WORDS_PER_ROW = 32  # 512 pixels / 16 bits per word
WORD_WIDTH = 16
DEFAULT_WINDOW_SIZE = (640, 480)

# Timing
CPU_HZ = 2_500_000
DEFAULT_FPS = 60
AXIS_THRESHOLD = 0.5

# Colors
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)

# Joystick mappings for RG35XX Plus / Knulli
MENU_BUTTONS = (11, 16)
WINDOW_SURFACE = pygame.HWSURFACE | pygame.DOUBLEBUF


def _button_pressed(joystick: pygame.joystick.Joystick, button_ids: Tuple[int, ...]) -> bool:
    for button_id in button_ids:
        if button_id < joystick.get_numbuttons() and joystick.get_button(button_id):
            return True
    return False


def _menu_pressed(joystick: pygame.joystick.Joystick) -> bool:
    return _button_pressed(joystick, MENU_BUTTONS)


def _joystick_key_code(joystick: pygame.joystick.Joystick) -> int:
    if joystick.get_numhats() > 0:
        hat_x, _hat_y = joystick.get_hat(0)
        if hat_x < 0:
            return 130
        if hat_x > 0:
            return 132

    if joystick.get_numaxes() > 0:
        axis_x = joystick.get_axis(0)
        if axis_x <= -AXIS_THRESHOLD:
            return 130
        if axis_x >= AXIS_THRESHOLD:
            return 132

    return 0


def _poll_input(joysticks: List[pygame.joystick.Joystick]) -> Tuple[bool, int]:
    running = True
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    if not running:
        return (False, 0)

    keys = pygame.key.get_pressed()
    if keys[pygame.K_ESCAPE]:
        return (False, 0)
    if keys[pygame.K_LEFT]:
        return (True, 130)
    if keys[pygame.K_RIGHT]:
        return (True, 132)

    for joystick in joysticks:
        if _menu_pressed(joystick):
            return (False, 0)

    for joystick in joysticks:
        key_code = _joystick_key_code(joystick)
        if key_code != 0:
            return (True, key_code)

    return (True, 0)


def _resolve_asm(file_arg: Optional[str]) -> Path:
    app_dir = Path(__file__).resolve().parent
    repo_root = app_dir.parents[2]
    candidates = []
    if file_arg is not None:
        candidates.append(Path(file_arg).expanduser().resolve())
    candidates.extend(
        [
            app_dir / "Pong.asm",
            app_dir / "game" / "Pong.asm",
            repo_root / "projects" / "11" / "Pong" / "Pong.asm",
        ]
    )

    for candidate in candidates:
        if candidate.exists():
            return candidate

    raise FileNotFoundError("Could not locate Pong.asm in launcher or repository paths; pass an explicit path")


def _create_engine() -> Engine:
    return AcceleratedEngine()


def _render_word(surface: pygame.Surface, word_index: int, word_value: int) -> None:
    x = (word_index % WORDS_PER_ROW) * WORD_WIDTH
    y = word_index // WORDS_PER_ROW
    surface.fill(WHITE, (x, y, WORD_WIDTH, 1))
    if word_value == 0:
        return
    if word_value == 0xFFFF:
        surface.fill(BLACK, (x, y, WORD_WIDTH, 1))
        return
    for bit in range(WORD_WIDTH):
        if word_value & (1 << bit):
            surface.set_at((x + bit, y), BLACK)


def _render_screen(engine: Engine, surface: pygame.Surface, previous_words: List[int]) -> None:
    surface.lock()
    try:
        for word_index in range(SCREEN_WORDS):
            current_word = engine.ram[SCREEN_BASE + word_index] & 0xFFFF
            if current_word == previous_words[word_index]:
                continue
            previous_words[word_index] = current_word
            _render_word(surface, word_index, current_word)
    finally:
        surface.unlock()


def _letterbox_rect(window_size: Tuple[int, int]) -> pygame.Rect:
    window_w, window_h = window_size
    scale = min(window_w / SCREEN_WIDTH, window_h / SCREEN_HEIGHT)
    scaled_w = max(1, int(round(SCREEN_WIDTH * scale)))
    scaled_h = max(1, int(round(SCREEN_HEIGHT * scale)))
    offset_x = (window_w - scaled_w) // 2
    offset_y = (window_h - scaled_h) // 2
    return pygame.Rect(offset_x, offset_y, scaled_w, scaled_h)


def main(argv: Optional[List[str]] = None) -> int:
    """
    Run the handheld-friendly HACK emulator launcher.

    :param argv: Optional CLI arguments for testing or local development.
    :return: Process exit code.
    """
    parser = argparse.ArgumentParser(description="Nand2Tetris HACK emulator for Knulli")
    parser.add_argument("file", nargs="?", help="Optional path to a .asm program (default: Pong.asm)")
    parser.add_argument("--fps", type=int, default=DEFAULT_FPS, help="Target render FPS (default: %d)" % DEFAULT_FPS)
    parser.add_argument(
        "--cpu-hz",
        type=parse_cpu_hz,
        default=CPU_HZ,
        help="Target CPU frequency in Hz/K/M notation (e.g. 1M, 2.5M; default: 2.5M)",
    )
    parser.add_argument(
        "--max-frames",
        type=int,
        help="Exit after rendering the given number of frames (useful for automated smoke tests)",
    )
    args = parser.parse_args(argv)

    if args.cpu_hz < args.fps:
        parser.error("--cpu-hz must be at least as large as --fps")
    if args.max_frames is not None and args.max_frames <= 0:
        parser.error("--max-frames must be positive")

    asm_path = _resolve_asm(args.file)
    cycles_per_frame = args.cpu_hz // args.fps

    engine = _create_engine()
    engine.load(str(asm_path))
    print("HACK Launcher: Loaded %s (%d instructions)" % (asm_path, len(engine.rom_raw)))

    pygame.init()
    pygame.joystick.init()

    window_size = DEFAULT_WINDOW_SIZE

    window = pygame.display.set_mode(window_size, WINDOW_SURFACE)
    pygame.display.set_caption("Nand2Tetris HACK")
    pygame.mouse.set_visible(False)
    render_rect = _letterbox_rect(window_size)
    raw_surface = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT)).convert()
    raw_surface.fill(WHITE)
    scaled_surface = pygame.Surface(render_rect.size).convert()
    previous_words = [-1] * SCREEN_WORDS
    joysticks = []
    for joystick_id in range(pygame.joystick.get_count()):
        joystick = pygame.joystick.Joystick(joystick_id)
        joystick.init()
        joysticks.append(joystick)

    clock = pygame.time.Clock()
    total_cycles = 0
    frames_rendered = 0
    running = True
    while running:
        running, key_code = _poll_input(joysticks)
        engine.ram[KBD_ADDR] = key_code

        if not engine.halted:
            executed = engine.run_cycles(cycles_per_frame)
            total_cycles += executed

        _render_screen(engine, raw_surface, previous_words)
        window.fill(BLACK)
        pygame.transform.scale(raw_surface, render_rect.size, scaled_surface)
        window.blit(scaled_surface, render_rect.topleft)
        pygame.display.flip()

        frames_rendered += 1
        if args.max_frames is not None and frames_rendered >= args.max_frames:
            running = False
        clock.tick(args.fps)

    pygame.quit()
    print("HACK Launcher: %d total cycles executed" % total_cycles)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
