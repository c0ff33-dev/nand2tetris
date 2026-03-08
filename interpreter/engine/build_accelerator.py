"""Build the optional compiled engine accelerator in place."""

from itertools import chain
from pathlib import Path
import shutil

from Cython.Build import cythonize
from setuptools import Distribution, Extension
from setuptools.command.build_ext import build_ext

EXTENSION_BASENAME = "fpga_backend_ext"
PACKAGE_NAME = Path(__file__).resolve().parent.name


def _find_built_extension(package_dir: Path, interpreter_dir: Path, repo_root: Path) -> Path:
    """
    Locate the built shared object across setuptools/Cython output locations.

    :param package_dir: engine/ directory in the repo.
    :param interpreter_dir: interpreter/ directory in the repo.
    :param repo_root: Repository root.
    :return: Path to the newest built extension.
    :raises FileNotFoundError: If no built shared object can be found.
    """
    candidates = {
        path.resolve()
        for path in chain(
            package_dir.glob(f"{EXTENSION_BASENAME}*.so"),
            interpreter_dir.glob(f"{EXTENSION_BASENAME}*.so"),
            repo_root.glob(f"{EXTENSION_BASENAME}*.so"),
            (repo_root / "build").glob(f"**/{EXTENSION_BASENAME}*.so"),
        )
    }
    if not candidates:
        raise FileNotFoundError(f"Built accelerator not found; search for {EXTENSION_BASENAME}*.so returned no matches")
    return max(candidates, key=lambda path: path.stat().st_mtime)


def _require_cython_source(package_dir: Path) -> Path:
    """Return the tracked Cython source file used to generate the extension."""
    pyx_path = package_dir / f"{EXTENSION_BASENAME}.pyx"
    if not pyx_path.exists():
        raise FileNotFoundError(f"Missing tracked Cython source: {pyx_path}")
    return pyx_path


def _copy_generated_c_source(ext_modules: list[Extension], package_dir: Path) -> None:
    """Keep the generated C file next to the engine modules as an ignored artifact."""
    generated_c = None
    for source in ext_modules[0].sources:
        if source.endswith(".c"):
            generated_c = Path(source).resolve()
            break
    if generated_c is None or not generated_c.exists():
        raise FileNotFoundError(f"Generated C source not found for {EXTENSION_BASENAME}")

    target = package_dir / generated_c.name
    if generated_c != target.resolve():
        shutil.copy2(generated_c, target)


def main() -> None:
    """
    Build fpga_backend_ext and copy the shared object next to the engine modules.
    """
    package_dir = Path(__file__).resolve().parent
    interpreter_dir = package_dir.parent
    repo_root = interpreter_dir.parent
    pyx_path = _require_cython_source(package_dir)
    extension = Extension(f"{PACKAGE_NAME}.{EXTENSION_BASENAME}", [str(pyx_path)])
    ext_modules = cythonize([extension], compiler_directives={"language_level": "3"})
    _copy_generated_c_source(ext_modules, package_dir)
    distribution = Distribution({"name": "nand2tetris-accelerator", "ext_modules": ext_modules})
    command = build_ext(distribution)
    command.inplace = True
    command.ensure_finalized()
    command.run()

    built_ext = _find_built_extension(package_dir, interpreter_dir, repo_root)
    target = package_dir / built_ext.name
    if built_ext != target:
        shutil.copy2(built_ext, target)
    print("Built accelerator: %s" % target)


if __name__ == "__main__":
    main()
