"""Build a PortMaster-ready Pong package under interpreter/build."""

import argparse
import shutil
import zipfile
from pathlib import Path

DEPLOYMENT_FILES = ("pong.pygame", "pong_launcher.py")
PORTMASTER_SCRIPT = "Pong.sh"
PORTMASTER_GAME_DIR = "Pong"
PURE_ENGINE_FILES = ("__init__.py", "engine.py")
ENGINE_FILES = PURE_ENGINE_FILES + ("accelerated_engine.py", "accelerator_common.py")
ACCELERATOR_GLOB = "fpga_backend_ext*.so"
DEFAULT_RUNTIME_BUILD_DIRNAME = "pong-runtime"


def _copy_file(src: Path, dst: Path) -> None:
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def _set_executable(path: Path) -> None:
    path.chmod(path.stat().st_mode | 0o111)


def _find_accelerator_binaries(engine_dir: Path) -> list[Path]:
    return sorted(engine_dir.glob(ACCELERATOR_GLOB))


def _find_default_runtime_artifact(interpreter_dir: Path) -> Path | None:
    build_root = interpreter_dir / "build" / DEFAULT_RUNTIME_BUILD_DIRNAME
    if not build_root.is_dir():
        return None

    latest_runtime = build_root / "latest-runtime.txt"
    if latest_runtime.exists():
        runtime_hint = latest_runtime.read_text(encoding="utf-8").strip()
        if runtime_hint:
            hinted_path = Path(runtime_hint).expanduser()
            for candidate in (hinted_path, build_root / hinted_path.name):
                if candidate.exists():
                    return candidate.resolve()

    artifacts = sorted(build_root.glob("*.squashfs"), key=lambda path: path.stat().st_mtime)
    if not artifacts:
        return None
    return artifacts[-1].resolve()


def _resolve_engine_dir(interpreter_dir: Path) -> Path:
    candidates = [
        interpreter_dir / "build" / DEFAULT_RUNTIME_BUILD_DIRNAME / "engine",
        interpreter_dir / "engine",
    ]

    for candidate in candidates:
        if not candidate.is_dir():
            continue
        required_files = [candidate / name for name in ENGINE_FILES]
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
) -> Path:
    """
    Stage the PortMaster Pong package tree in a deployment directory.

    Always bundles the accelerated engine and compiled shared object.

    :param output_dir: Destination directory to recreate with PortMaster contents.
    :param asm_path: Optional override for the Pong.asm source.
    :param runtime_artifact: Optional SquashFS runtime artifact to bundle.
    :return: The populated deployment directory containing `Pong/` plus `Pong.sh`.
    :raises FileNotFoundError: If any required source file is missing.
    """
    launcher_dir = Path(__file__).resolve().parent
    interpreter_dir = launcher_dir.parents[1]
    repo_root = interpreter_dir.parent
    package_dir = output_dir / PORTMASTER_GAME_DIR
    startup_script = launcher_dir / PORTMASTER_SCRIPT
    source_asm = asm_path or repo_root / "projects" / "11" / "Pong" / "Pong.asm"
    if runtime_artifact is not None:
        runtime_artifact = runtime_artifact.expanduser().resolve()

    package_engine_dir = _resolve_engine_dir(interpreter_dir)
    accelerator_binaries = _find_accelerator_binaries(package_engine_dir)

    required_files = [
        startup_script,
        *(launcher_dir / name for name in DEPLOYMENT_FILES),
        source_asm,
        *(package_engine_dir / name for name in ENGINE_FILES),
    ]
    if runtime_artifact is not None:
        required_files.append(runtime_artifact)
    required_files.extend(accelerator_binaries)
    missing = [path for path in required_files if not path.exists()]
    if missing:
        missing_text = "\n".join("- %s" % path for path in missing)
        raise FileNotFoundError("Missing required packaging inputs:\n%s" % missing_text)

    if output_dir.exists():
        if output_dir.is_dir():
            shutil.rmtree(output_dir)
        else:
            output_dir.unlink()
    output_dir.mkdir(parents=True, exist_ok=True)

    _copy_file(startup_script, output_dir / PORTMASTER_SCRIPT)
    _set_executable(output_dir / PORTMASTER_SCRIPT)

    for filename in DEPLOYMENT_FILES:
        _copy_file(launcher_dir / filename, package_dir / filename)

    _copy_file(source_asm, package_dir / "Pong.asm")

    for filename in ENGINE_FILES:
        _copy_file(package_engine_dir / filename, package_dir / "engine" / filename)

    for accelerator_binary in accelerator_binaries:
        _copy_file(accelerator_binary, package_dir / "engine" / accelerator_binary.name)

    if runtime_artifact is not None:
        _copy_file(runtime_artifact, package_dir / "runtime" / runtime_artifact.name)

    return output_dir


def build_zip(staging_dir: Path, zip_path: Path) -> Path:
    """
    Create the final PortMaster zip from a staged package tree.

    :param staging_dir: Directory containing the staged PortMaster package tree.
    :param zip_path: Destination zip file path.
    :return: The zip artifact path.
    """
    files_to_archive = [path for path in sorted(staging_dir.rglob("*")) if path.is_file()]
    if zip_path.exists():
        if zip_path.is_dir():
            raise IsADirectoryError("%s is a directory" % zip_path)
        zip_path.unlink()
    zip_path.parent.mkdir(parents=True, exist_ok=True)

    with zipfile.ZipFile(zip_path, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for file_path in files_to_archive:
            archive.write(file_path, file_path.relative_to(staging_dir))

    return zip_path


def main(argv: list[str] | None = None) -> int:
    """
    Build the staged Pong package tree and the final PortMaster zip.

    :param argv: Optional CLI arguments for tests or reuse.
    :return: Process exit code.
    """
    launcher_dir = Path(__file__).resolve().parent
    interpreter_dir = launcher_dir.parents[1]
    default_output_dir = interpreter_dir / "build" / "pong"

    parser = argparse.ArgumentParser(description="Build the PortMaster-ready Pong package")
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=default_output_dir,
        help="Destination directory to recreate with PortMaster contents (default: %(default)s)",
    )
    parser.add_argument(
        "--zip-path",
        type=Path,
        help="Optional destination zip path (default: <output-dir parent>/Pong.zip)",
    )
    parser.add_argument(
        "--asm",
        type=Path,
        help="Optional source path for Pong.asm (default: projects/11/Pong/Pong.asm)",
    )
    parser.add_argument(
        "--runtime-artifact",
        type=Path,
        help="Optional SquashFS runtime artifact to bundle under Pong/runtime/",
    )
    args = parser.parse_args(argv)
    runtime_artifact = (
        args.runtime_artifact.expanduser().resolve()
        if args.runtime_artifact is not None
        else _find_default_runtime_artifact(interpreter_dir)
    )
    output_dir = args.output_dir.expanduser().resolve()
    zip_path = (
        args.zip_path.expanduser().resolve()
        if args.zip_path is not None
        else output_dir.parent / ("%s.zip" % PORTMASTER_GAME_DIR)
    )

    build_package(
        output_dir,
        None if args.asm is None else args.asm.expanduser().resolve(),
        runtime_artifact,
    )
    print("Staged PortMaster package at %s" % output_dir)
    if runtime_artifact is not None:
        print("Bundled runtime artifact: %s" % runtime_artifact)
    else:
        print("No runtime artifact bundled; the package will rely on a host Python interpreter.")
    build_zip(output_dir, zip_path)
    print("Built PortMaster zip at %s" % zip_path)
    print("On Knulli, copy this zip to /userdata/system/.local/share/PortMaster/autoinstall/.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
