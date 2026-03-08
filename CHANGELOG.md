# Changelog

## Version 1.2.0: Emulator updates

* Added FPGA specific emulator with `LCD` and `RTP` support to run Tetris (requires checking out the `nand2tetris-fpga` repo for symlinks to resolve).
* Added optional cython backend to accelerate the main engine loop of the emulators, falls back to Python backend if not available.
* More performance optimizations for the Python backend.
* Added richer CLI options for both emulators.
* Added a Batocera/Knulli-oriented `interpreter/emulator/pong/pong.pygame` launcher with direct gamepad input and 640x480 letterboxing.
* Added `interpreter/emulator/pong/build_package.py` to stage a pure-Python deployment folder under `interpreter/build/pong/`.

## Version 1.1.0: Purge compilation artifacts

* History rewrite to purge compilation artifacts, use `git fetch && git reset "@{u}" --hard` to sync to new `main`.
* Updates to ignored files can still be tracked with `git add <path> -f`.
* Minor updates to documentation.
* Windows is no longer supported.

## Version 1.0.0: Initial release

This project has been developed over the course of several years, below is a high level summary of feature development starting in 2026.

- Compiler:
    - Dead code detection: automatically prunes unused VM libraries from compilation.
    - Detect broken calls to uninitialized & unlinked classes via call graph search.
    - Strict type checking around non-Array types being dereferenced as arrays. 
    - Translator refactors/optimization:
        - Pong (Original): ~74k → ~27k HACK instructions, ~63% reduction, ~2.8x perf increase, ~= to course version.
        - Pong (FPGA): ~37k → ~27k HACK instructions, ~26% reduction, ~35% perf increase.
        - `SP=256` bootstrap preamble for compiled Jack.
- Interpreter: 
    - Extracted test orchestration from `interpreter.py` into `runner.py`.
    - Decoupled CPU emulation core from `interpreter.py` into new `engine.py` module.
    - Pygame Emulator: New `emulator/emulator.py` - graphical HACK platform emulator.
    - Reworked keyboard handler for Linux support.
    - Debugger: added stack & call tree tracking.
- Test Automation
    - `ASSERT` directives: Compiler injects `// ASSERT` and `// ASSERT REACHABLE` directives from Jack into VM > ASM where interpreter actions them accordingly, added to many non-interactive programs & tests.
    - `Sys.error/halt`: Interpreter traps `Sys.error()` as a `RuntimeError` and breaks on `Sys.halt` entry.
    - CLI: Added `argparse` entry points to compiler toolchain for standalone use.
    - Centralized all input file path lists into `inputs.py`.
    - Multiprocessing: Test programs run in parallel via `multiprocessing.Process`.
    - Significantly improved interpreter/debugger performance (10-100x respectively).
    - Removed `_out` suffixed files.
- FPGA:
    - Added FPGA label support in assembler.
    - Mirrored `nand2tetris-fpga` source into `projects/13_fpga/` (symlinks).
- Docs: Updated `README.md` with usage docs and `APPENDIX.md` for environment setup.
- Code Quality: Added `ruff` & `pydoclint` for linting, formatting & type annotations pass across all interpreter modules.
