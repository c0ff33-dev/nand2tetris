# Changelog

`main` (`d21e028`) → `HEAD` (`feb44de`), on `fpga-updates`.

---

- Compiler:
    - Dead code detection: automatically prunes unused VM libraries from compilation.
    - Detect broken calls to uninitialized & unlinked classes via graph search.
    - Translator refactors/optimization:
        - Pong (Original): ~74k → ~27k HACK instructions, ~63% reduction, ~2.8x perf increase, ~= to course version.
        - Pong (FPGA): ~37k → ~27k HACK instructions, ~26% reduction, ~35% perf increase.
        - `SP=256` bootstrap preamble for compiled Jack.
- Interpreter: 
    - Extracted test orchestration from `interpreter.py` into `runner.py`.
    - Decoupled CPU emulation core from `interpreter.py` into new `engine.py` module.
    - Pygame Emulator: New `emulator.py` — graphical HACK platform emulator.
    - Reworked keyboard handler for Linux support.
    - Debugger: added stack & call tree tracking.
- Test Automation
    - ASSERTs: Compiler injects `// ASSERT` and `// ASSERT REACHABLE` directives from Jack into VM > ASM where interpreter actions them accordingly, added to many non-interactive programs & tests.
    - `Sys.error/halt`: Interpreter traps `Sys.error()` as a `RuntimeError` and breaks on `Sys.halt` entry.
    - CLI: Added `argparse` entry points to assembler, compiler, and translator for standalone use.
    - Centralized all input file path lists into `inputs.py`.
    - Multiprocessing: Test programs run in parallel via `multiprocessing.Process`.
    - Significantly improved interpreter/debugger performance (10-100x respectively).
    - Removed `_out` suffixed files.
- Assembler: Added FPGA label support in assembler.
- Docs: Updated `README.md` with usage docs and `APPENDIX.md` for environment setup.
