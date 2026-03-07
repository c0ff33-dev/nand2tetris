"""Compatibility wrapper for the root emulator/fpga.py entry point."""

from pathlib import Path
import sys

REPO_ROOT = Path(__file__).resolve().parent.parent
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))


def main() -> None:
    """Run the root emulator/fpga.py entry point."""
    from emulator.fpga import main as fpga_main

    fpga_main()


if __name__ == "__main__":
    main()
