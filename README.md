# nand2tetris

A collection of nand2tetris coursework plus reworked implementations of course tools to enhance the student/developer experience.

## Project Files

`projects/01-12` contains the original [nand2tetris](https://www.nand2tetris.org/) course content.

`projects/13_fpga` contains FPGA-targeted Jack programs symlinked from [nand2tetris-fpga](https://github.com/c0ff33-dev/nand2tetris-fpga).

### FPGA layout

```
projects/13_fpga/
├── Original/     # symlinks to nand2tetris-fpga/07_Operating_System/01-12
│   ├── 01_GPIO_Test/
│   ├── ...
│   └── 12_Tetris/
└── Classic/      # symlinks to nand2tetris-fpga/09_More_Fun_to_Go/02-03
    ├── 02_Operating_System/
    └── 03_Pong/
```

Both repos must (optionally) be cloned as siblings under the same parent directory so the symlinks resolve:

```sh
git clone https://github.com/c0ff33-dev/nand2tetris.git
git clone https://github.com/c0ff33-dev/nand2tetris-fpga.git
```

The `--fpga` flag includes these programs in the test suite. Without it, `projects/13_fpga` is ignored.

## Setup

```sh
pip install -e ".[dev]"   # runtime deps (rich, numpy, pygame) + dev deps (ruff, pydoclint)
```

All Python scripts are run from within the `interpreter/` directory.

```sh
cd interpreter
```

## Usage

### runner.py — Fully automated end-to-end test suite

Orchestrates the entire pipeline end-to-end: compiles Jack → tokenizes → analyzes → compiles to VM → translates to ASM → assembles to HACK → executes and validates all tests (VMEmulator, CPUEmulator, HardwareSimulator, Tester, Interpreter).

```sh
python runner.py              # lint + run all tests
python runner.py --fpga       # include FPGA programs (projects/13_fpga)
python runner.py --debug      # verbose output
python runner.py --no-lint    # skip ruff linting
```

### emulator.py — Pygame HACK platform emulator

Graphical emulator that renders the memory-mapped screen and handles keyboard I/O while driving the CPU engine. Screen (RAM[16384..24575]) is rendered via numpy bit-unpacking at ~30 FPS; keyboard events map to RAM[24576].

```sh
python emulator.py path/to/file.asm                # run in emulator (2x scale)
python emulator.py path/to/file.asm --scale 3      # 3x display scale
python emulator.py path/to/file.asm --fps 60       # target 60 FPS rendering
```

### compiler.py — Jack to VM compiler

Compiles Jack source files into VM bytecode and validates output against course compiler reference files.

```sh
python compiler.py                          # compile all configured Jack files
python compiler.py path/to/file.jack        # compile a single file
python compiler.py path/to/project/dir      # compile all .jack files in a directory
```

### tokenizer.py — Jack lexer

Lexes Jack source into XML token streams (`*T.xml`).

```sh
python tokenizer.py    # tokenize all configured Jack files
```

### analyzer.py — Jack parser

Parses token streams into XML parse trees (`*.xml`).

```sh
python analyzer.py    # analyze all configured Jack files
```

### translator.py — VM to ASM translator

Translates VM bytecode directories into HACK assembly.

```sh
python translator.py                       # translate all configured VM directories
python translator.py path/to/vm/dir        # translate a single VM directory
```

### assembler.py — ASM to HACK assembler

Two-pass assembler that encodes HACK assembly into 16-bit binary.

```sh
python assembler.py                        # assemble all configured ASM files
python assembler.py path/to/file.asm       # assemble a single file
```

### debugger.py — HACK CPU debugger

Interactive CPU debugger with a Rich TUI for step-through debugging. Uses `Engine` from `engine.py` for execution.

There is a default cycle limit for batch runs, `--break` removes the limit for interactive use. Test harness runs (`runner.py`) override the limit per `.tst` file, and Jack programs tagged with `ASSERT` directives auto-raise to a higher limit.

```sh
python debugger.py path/to/file.asm                          # run a program
python debugger.py path/to/file.asm --break 42 100           # break at ROM lines 42 and 100
python debugger.py path/to/file.asm --break Math.init        # break on entering Math.init
python debugger.py path/to/file.asm --break 42 String.init   # mix line numbers and function names
python debugger.py path/to/file.asm --debug                  # verbose output
```

### debugger.py — Jack ASSERT directives

The following Jack directives will activate special test behaviour in the interpreter:

* `// ASSERT RAM[8000] = 6`: Assert the value of a RAM address after the execution of a `let` or `do` statement, e.g. `let r[0] = 2 * 3; // ASSERT RAM[8000] = 6`.
* `// ASSERT REACHABLE`: Assert this `let`, `do` or `return` statement is reachable at runtime, e.g. `return; // ASSERT REACHABLE`.

Jack files are statically scanned for `ASSERT` directives at runtime, if there are any mismatches or if the number of processed directives does not match the expected result an `AssertionError` exception will be thrown.


### tester.py — test script parser

Parses `.tst` test scripts and `.cmp` comparison files (used internally by `runner.py`).

```sh
python tester.py    # parse all configured test files
```

### Linting — ruff

Ruff and pydoclint run automatically as part of `runner.py`. To run manually:

```sh
ruff check interpreter/          # lint check
ruff format interpreter/ --check # format check (dry run)
ruff check interpreter/ --fix    # attempt to auto-fix lint issues
ruff format interpreter/         # apply formatting
pydoclint interpreter/           # docstring lint
```

Configuration lives in `pyproject.toml` at the repo root.

## Java Tools

The original nand2tetris Java-based tools (HardwareSimulator, CPUEmulator, VMEmulator, etc.) are in `tools/` and require a JRE:

```sh
# .bat on Windows
tools/HardwareSimulator.sh   
tools/CPUEmulator.sh
tools/VMEmulator.sh
```