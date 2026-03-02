# Changelog

`main` (`d21e028`) → `HEAD` (`65531332`), on `fpga-updates`.

---

- Docs: Updated `README.md` with usage docs and `Appendix.md` for environment setup.
- Input Refactor: Centralized all input file path lists into `inputs.py`, replacing per-module `__main__` lists.
- Translator Optimization:
    - Pong (Original): ~74k → ~27k HACK instructions, ~63% reduction, ~2.8x perf increase.
    - Pong (FPGA): ~32k → ~27k HACK instructions, ~16% reduction, ~18% perf increase.
- Test Automation
    - ASSERTs: Compiler injects `// ASSERT` and `// ASSERT REACHABLE` directives from Jack into VM > ASM where interpreter actions them accordingly, added to many non-interactive programs & tests.
    - `Sys.error/halt`: Interpreter traps `Sys.error()` as a `RuntimeError` and breaks on `Sys.halt` entry.
    - CLI: Added `argparse` entry points to assembler, compiler, and translator for standalone use.
    - Multiprocessing: Test programs run in parallel via `multiprocessing.Process`.
    - Interpreter refactors: Extracted test orchestration from `interpreter.py` into `runner.py`, reworked keyboard handler for Linux support.
- FPGA: Special Pong build with all Jack OS classes plus `GPIO.jack` for hardware I/O and FPGA label support in assembler.
- Translator: SP=256 bootstrap preamble for compiled Jack.
- Debugger: added stack & call tree tracking, refactors. 
- Compiler:
    - Dead code detection: automatically prunes unused libraries from compilation.
    - Detect broken calls to uninitialized & unlinked classes via graph search.
