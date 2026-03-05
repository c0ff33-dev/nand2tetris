# Copilot Instructions

## Architecture

This repo contains nand2tetris coursework (`projects/`) and a Python reimplementation of the course toolchain (`interpreter/`).

### Compilation Pipeline

The `interpreter/` directory implements the full nand2tetris toolchain as a Python pipeline:

```
Jack source → tokenizer.py → analyzer.py → compiler.py → translator.py → assembler.py → HACK binary
                  ↓                ↓
              *T.xml            *.xml
```

- **engine.py** — `Engine` class encapsulating all HACK CPU state (RAM, ROM, registers, PC) and execution logic. Provides `load()` to parse ASM files, `step()` for per-instruction execution (returns debug info), and `run_cycles(n)` for optimized bulk execution. Uses ALU lookup tables (`_COMP`, `_JUMP`) instead of `eval()`.
- **emulator.py** — Pygame-based HACK platform emulator. Renders the memory-mapped screen (RAM[16384..24575]) via numpy bit-unpacking, handles keyboard I/O (RAM[24576]), and drives the engine at ~208K cycles/frame (6.25 MHz / 30 FPS target).
- **debugger.py** — Interactive debugger with Rich TUI for step-through debugging (breakpoints, call tree, stack view). Uses `Engine` from `engine.py`. Standalone entry point for running/debugging individual `.asm` files.
- **runner.py** — Test runner that orchestrates the full pipeline: course compiler, tokenizer, analyzer, compiler, translator, assembler, and all test suites (HardwareSimulator, CPUEmulator, VMEmulator). This is the main entry point for running all tests.
- **tokenizer.py** — Lexes Jack source into XML token stream. Uses recursive descent with a string placeholder system (`__string0__`, etc.).
- **analyzer.py** — Parses token stream into XML parse tree. Stateful parsing with parent pointer tracking and look-ahead.
- **compiler.py** — Compiles parse tree XML into VM bytecode. Handles Jack's class/method/constructor semantics, array/pointer arithmetic, and standard library (`sys_func` dict).
- **translator.py** — `Translator` class converts VM instructions to HACK assembly. Manages memory segments (temp, pointer, static, local, argument, this, that) and emits inline comments for traceability.
- **assembler.py** — Two-pass assembler: first pass resolves labels to addresses, second pass encodes A/C-instructions into 16-bit binary.
- **tester.py** — Parses `.tst` test scripts and `.cmp` comparison files; equivalent to the course's CPUEmulator in non-interactive mode.

### Project Files (`projects/01-12`)

Follow the nand2tetris course progression:
- **01-03**: Hardware (`.hdl` files) — logic gates, arithmetic, sequential chips
- **04-05**: Machine language and computer architecture (`.asm`, `.hdl`)
- **06**: Assembler input/output (`.asm` → `.hack`)
- **07-08**: VM translator input (`.vm` files)
- **09-11**: Jack programs and compiler (`.jack` files)
- **12**: Jack OS standard library (`.jack`)

Test/comparison files: `.tst` (test scripts), `.cmp` (expected output).

### Java Tools (`tools/`)

The original nand2tetris Java-based tools (HardwareSimulator, CPUEmulator, VMEmulator, etc.). Require JRE to run.

## Build & Run

Python dependencies (defined in `pyproject.toml`):

```sh
pip install -e ".[dev]"   # runtime deps (rich, numpy, pygame) + dev deps (ruff, pydoclint)
```

The interpreter modules are run from within the `interpreter/` directory (they import each other as siblings, not as a package).

```sh
cd interpreter
python runner.py             # lint + run the full test suite
python runner.py --debug     # run with verbose output
python runner.py --no-lint   # skip ruff linting
python debugger.py file.asm  # run/debug a single .asm file
python emulator.py file.asm  # run in pygame emulator
```

The Java tools are invoked via shell/batch scripts in `tools/`:

```sh
tools/HardwareSimulator.bat   # or .sh on Linux
tools/CPUEmulator.bat
tools/VMEmulator.bat
```

## Scope

Code changes should be focused on the `interpreter/` folder. Never modify files in `projects/` or `tools/` unless explicitly told otherwise.

## Conventions

- All interpreter modules use a `debug=False` parameter to gate verbose output.
- Intermediate XML outputs (`*T.xml`, `*.xml`) are generated for validation against reference XML files when available.
- `Engine` is the core CPU class (`engine.py`); `Translator` is the only other class-based module. All others use standalone functions.
- Assembly output includes inline `//` comments tracing back to the source VM command for debuggability.
- The HACK CPU emulator simulates 57,344 words of RAM (extended from the original 24,577 for FPGA compatibility).
- `Engine` encapsulates CPU state as attributes: `ram` (list), `A`, `D`, `pc` (int), `halted` (bool), `rom_raw`/`rom_debug` (lists), `address_labels` (dict).

## Directives

- All tests and linting must pass before marking a task as done.
- Must run `source ~/src/nand2tetris/.venv/bin/activate` in each shell before running Python commands.
- Must `cd ~/src/nand2tetris/interpreter` before running tests via `python runner.py`.
- On lint failures, run `ruff format interpreter/` && `ruff check interpreter/ --fix` before attempting manual fixes.
- Never commit changes (git commit) without being explicitly told to by the user.
