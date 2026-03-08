"""Build a deployment-ready Batocera/Knulli Pong package under interpreter/build."""

import argparse
import shutil
from pathlib import Path

DEPLOYMENT_FILES = ("pong.pygame", "pong_launcher.py")
ENGINE_FILES = ("__init__.py", "engine.py")


def _copy_file(src: Path, dst: Path) -> None:
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def build_package(output_dir: Path, asm_path: Path | None = None) -> Path:
    """
    Copy the minimal Pong launcher runtime into a deployment directory.

    :param output_dir: Destination directory to recreate.
    :param asm_path: Optional override for the Pong.asm source.
    :return: The populated deployment directory.
    :raises FileNotFoundError: If any required source file is missing.
    """
    launcher_dir = Path(__file__).resolve().parent
    interpreter_dir = launcher_dir.parents[1]
    repo_root = interpreter_dir.parent
    engine_dir = interpreter_dir / "engine"
    source_asm = asm_path or repo_root / "projects" / "11" / "Pong" / "Pong.asm"

    required_files = [
        *(launcher_dir / name for name in DEPLOYMENT_FILES),
        source_asm,
        *(engine_dir / name for name in ENGINE_FILES),
    ]
    missing = [path for path in required_files if not path.exists()]
    if missing:
        missing_text = "\n".join("- %s" % path for path in missing)
        raise FileNotFoundError("Missing required packaging inputs:\n%s" % missing_text)

    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    for filename in DEPLOYMENT_FILES:
        _copy_file(launcher_dir / filename, output_dir / filename)

    _copy_file(source_asm, output_dir / "Pong.asm")

    for filename in ENGINE_FILES:
        _copy_file(engine_dir / filename, output_dir / "engine" / filename)

    return output_dir


def main(argv: list[str] | None = None) -> int:
    """
    Build the Pong deployment folder.

    :param argv: Optional CLI arguments for tests or reuse.
    :return: Process exit code.
    """
    launcher_dir = Path(__file__).resolve().parent
    interpreter_dir = launcher_dir.parents[1]
    default_output_dir = interpreter_dir / "build" / "pong"

    parser = argparse.ArgumentParser(description="Build the Batocera/Knulli Pong deployment folder")
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=default_output_dir,
        help="Destination directory to recreate (default: %(default)s)",
    )
    parser.add_argument(
        "--asm",
        type=Path,
        help="Optional source path for Pong.asm (default: projects/11/Pong/Pong.asm)",
    )
    args = parser.parse_args(argv)

    output_dir = build_package(
        args.output_dir.expanduser().resolve(), None if args.asm is None else args.asm.expanduser().resolve()
    )
    print("Built Pong deployment package at %s" % output_dir)
    print("Copy this folder to /userdata/roms/pygame/pong/ on the target device.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
