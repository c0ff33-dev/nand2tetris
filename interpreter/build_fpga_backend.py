"""Build the optional FPGA emulator accelerator in place."""

from pathlib import Path
import shutil
from itertools import chain

from Cython.Build import cythonize
from setuptools import Distribution, Extension
from setuptools.command.build_ext import build_ext


def _find_built_extension(interpreter_dir: Path, repo_root: Path) -> Path:
    """
    Locate the built shared object across setuptools/Cython output locations.

    :param interpreter_dir: interpreter/ directory in the repo.
    :param repo_root: Repository root.
    :return: Path to the newest built extension.
    :raises FileNotFoundError: If no built shared object can be found.
    """
    candidates = {
        path.resolve()
        for path in chain(
            interpreter_dir.glob("fpga_backend_ext*.so"),
            repo_root.glob("fpga_backend_ext*.so"),
            (repo_root / "build").glob("**/fpga_backend_ext*.so"),
        )
    }
    if not candidates:
        raise FileNotFoundError("Built accelerator not found; search for fpga_backend_ext*.so returned no matches")
    return max(candidates, key=lambda path: path.stat().st_mtime)


def main() -> None:
    """
    Build fpga_backend_ext and copy the shared object next to emulator_fpga.py.

    This keeps the normal editable install pure Python while still providing a
    one-command path to compile the optional accelerator when toolchain support
    is available on the host.
    """
    interpreter_dir = Path(__file__).resolve().parent
    repo_root = interpreter_dir.parent
    extension = Extension("fpga_backend_ext", [str(interpreter_dir / "fpga_backend_ext.pyx")])
    distribution = Distribution(
        {
            "name": "nand2tetris-fpga-backend",
            "ext_modules": cythonize([extension], compiler_directives={"language_level": "3"}),
        }
    )
    command = build_ext(distribution)
    command.inplace = True
    command.ensure_finalized()
    command.run()

    built_ext = _find_built_extension(interpreter_dir, repo_root)
    target = interpreter_dir / built_ext.name
    if built_ext != target:
        shutil.copy2(built_ext, target)
    print("Built FPGA accelerator: %s" % target)


if __name__ == "__main__":
    main()
