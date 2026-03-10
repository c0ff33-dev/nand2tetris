"""Build a deployment-ready Batocera/Knulli Pong package under interpreter/build."""

import argparse
import shutil
from pathlib import Path

DEPLOYMENT_FILES = ("pong.pygame", "pong_launcher.py")
PURE_ENGINE_FILES = ("__init__.py", "engine.py")
ACCEL_ENGINE_FILES = PURE_ENGINE_FILES + ("accelerated_engine.py", "accelerator_common.py")
ACCELERATOR_GLOB = "fpga_backend_ext*.so"
DEFAULT_RUNTIME_BUILD_DIRNAME = "pong-runtime"


def _copy_file(src: Path, dst: Path) -> None:
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def _find_accelerator_binaries(engine_dir: Path) -> list[Path]:
    return sorted(engine_dir.glob(ACCELERATOR_GLOB))


def _resolve_accelerated_engine_dir(interpreter_dir: Path, accelerated_engine_dir: Path | None) -> Path:
    candidates = []
    if accelerated_engine_dir is not None:
        candidates.append(accelerated_engine_dir.expanduser().resolve())
    candidates.extend(
        [
            interpreter_dir / "build" / DEFAULT_RUNTIME_BUILD_DIRNAME / "engine",
            interpreter_dir / "engine",
        ]
    )

    for candidate in candidates:
        if not candidate.is_dir():
            continue
        required_files = [candidate / name for name in ACCEL_ENGINE_FILES]
        if all(path.exists() for path in required_files) and _find_accelerator_binaries(candidate):
            return candidate

    searched = "\n".join("- %s" % path for path in candidates)
    raise FileNotFoundError(
        "Could not locate accelerated engine files.\n"
        "Searched:\n%s\n"
        "Build the runtime builder first or run `python engine/build_accelerator.py`." % searched
    )


def build_package(
    output_dir: Path,
    asm_path: Path | None = None,
    runtime_artifact: Path | None = None,
    accelerated: bool = False,
    accelerated_engine_dir: Path | None = None,
) -> Path:
    """
    Copy the Pong launcher into a deployment directory.

    :param output_dir: Destination directory to recreate.
    :param asm_path: Optional override for the Pong.asm source.
    :param runtime_artifact: Optional SquashFS runtime artifact to bundle.
    :param accelerated: Whether to stage the accelerated engine helpers and shared object.
    :param accelerated_engine_dir: Optional override for a pre-staged accelerator engine directory.
    :return: The populated deployment directory.
    :raises FileNotFoundError: If any required source file is missing.
    """
    launcher_dir = Path(__file__).resolve().parent
    interpreter_dir = launcher_dir.parents[1]
    repo_root = interpreter_dir.parent
    engine_dir = interpreter_dir / "engine"
    source_asm = asm_path or repo_root / "projects" / "11" / "Pong" / "Pong.asm"
    if runtime_artifact is not None:
        runtime_artifact = runtime_artifact.expanduser().resolve()
    if accelerated:
        package_engine_dir = _resolve_accelerated_engine_dir(interpreter_dir, accelerated_engine_dir)
        engine_files = ACCEL_ENGINE_FILES
        accelerator_binaries = _find_accelerator_binaries(package_engine_dir)
    else:
        package_engine_dir = engine_dir
        engine_files = PURE_ENGINE_FILES
        accelerator_binaries = []

    required_files = [
        *(launcher_dir / name for name in DEPLOYMENT_FILES),
        source_asm,
        *(package_engine_dir / name for name in engine_files),
    ]
    if runtime_artifact is not None:
        required_files.append(runtime_artifact)
    required_files.extend(accelerator_binaries)
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

    for filename in engine_files:
        _copy_file(package_engine_dir / filename, output_dir / "engine" / filename)

    for accelerator_binary in accelerator_binaries:
        _copy_file(accelerator_binary, output_dir / "engine" / accelerator_binary.name)

    if runtime_artifact is not None:
        _copy_file(runtime_artifact, output_dir / "runtime" / runtime_artifact.name)

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
    parser.add_argument(
        "--runtime-artifact",
        type=Path,
        help="Optional SquashFS runtime artifact to bundle under runtime/",
    )
    parser.add_argument(
        "--accelerated",
        action="store_true",
        help="Bundle accelerated engine helpers and the compiled shared object when available",
    )
    parser.add_argument(
        "--accelerated-engine-dir",
        type=Path,
        help="Optional directory containing accelerated engine files and fpga_backend_ext*.so",
    )
    args = parser.parse_args(argv)
    include_accelerator = args.accelerated or args.accelerated_engine_dir is not None

    output_dir = build_package(
        args.output_dir.expanduser().resolve(),
        None if args.asm is None else args.asm.expanduser().resolve(),
        None if args.runtime_artifact is None else args.runtime_artifact.expanduser().resolve(),
        include_accelerator,
        None if args.accelerated_engine_dir is None else args.accelerated_engine_dir.expanduser().resolve(),
    )
    print("Built Pong deployment package at %s" % output_dir)
    if args.runtime_artifact is not None:
        print("Bundled runtime artifact: %s" % args.runtime_artifact.expanduser().resolve())
    if include_accelerator:
        print("Bundled accelerator support files")
    print("Copy this folder to /userdata/roms/pygame/pong/ on the target device.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
