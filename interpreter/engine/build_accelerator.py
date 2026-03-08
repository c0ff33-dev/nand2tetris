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


def main() -> None:
    """
    Build fpga_backend_ext and copy the shared object next to the engine modules.
    """
    package_dir = Path(__file__).resolve().parent
    interpreter_dir = package_dir.parent
    repo_root = interpreter_dir.parent
    extension = Extension(
        f"{PACKAGE_NAME}.{EXTENSION_BASENAME}",
        [str(package_dir / f"{EXTENSION_BASENAME}.pyx")],
    )
    distribution = Distribution(
        {
            "name": "nand2tetris-accelerator",
            "ext_modules": cythonize([extension], compiler_directives={"language_level": "3"}),
        }
    )
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
