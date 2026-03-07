"""Compatibility wrapper for the root emulator/computer.py entry point."""

from pathlib import Path
import sys

REPO_ROOT = Path(__file__).resolve().parents[1]
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))


def main() -> None:
    """Run the root emulator/computer.py entry point."""
    from emulator.computer import main as computer_main

    computer_main()


if __name__ == "__main__":
    main()
