# nand2tetris

A complete collection of nand2tetris coursework plus supporting toolchain, emulators & test automation to enhance the student/developer experience.

## Setup

```sh
# [dev] for test/lint dependencies
pip install -e ".[dev]"   
```

All Python scripts must be run from within the `interpreter/` directory.

```sh
cd interpreter
```

## Features

## HACK emulator

![](./tools/emulator.jpg)

Pygame frontend for the HACK platform. It renders the memory-mapped display and handles keyboard I/O while driving the CPU engine on symbolic assembly.

```sh
python -m emulator.emulator path/to/file.asm                # run in HACK emulator (default: 2x scale, 60 fps)
python -m emulator.emulator path/to/file.asm --cpu-hz 1M    # limit clock speed to 1 MHz
python -m emulator.emulator path/to/file.asm --scale 1      # custom display scale
python -m emulator.emulator path/to/file.asm --fps 30       # custom fps target
```

Optional acceleration via a compiled cython backend is shared by both emulators. Build it manually when host tooling is available:

```sh
python engine/build_accelerator.py
```

When the compiled backend is present, `emulator/emulator.py` and `emulator/emulator_fpga.py` use it automatically. Pass `--no-cython` to force the pure Python path for comparisons and testing.

## FPGA emulator

<p align="center">
  <img src="./tools/tetris1.jpg" width="45%">
    &nbsp;
  <img src="./tools/tetris2.jpg" width="45%">
</p>

Pygame frontend for the "Original" [nand2tetris-fpga](https://github.com/c0ff33-dev/nand2tetris-fpga) project with Screen (`LCD`) & Touch (`RTP`) support, unemulated hardware features are stubbed out. Uses mouse input to drive the touch screen and specifically for Michael Schröder's `Tetris` program also includes virtual translation of the WASD keys to button presses.

```sh
python -m emulator.emulator_fpga path/to/file.asm               # run in FPGA emulator
python -m emulator.emulator_fpga path/to/file.asm --cpu-hz 10M  # target 10 MHz
python -m emulator.emulator_fpga path/to/file.asm --patch-wait  # monkeypatch Sys.wait delay loops to skip them
```

## HACK debugger

![](./tools/debugger.jpg)

Debugger with a rich gdb-like TUI for interactive debugging. Displays the stack, call tree, register values, correlates instructions with source code. Highlights what registers are changing in current instruction and when `JMP` condition is satisfied, allows peeking of arbitrary memory addresses and setting line based or symbolic breakpoints.

```sh
python debugger.py path/to/file.asm                          # run a program
python debugger.py path/to/file.asm --break 42 100           # break at ROM (source asm) lines 42 and 100
python debugger.py path/to/file.asm --break Math.init        # break on entering Math.init
python debugger.py path/to/file.asm --break 42 String.init   # mix line numbers and function names
```

### Jack ASSERT directives

The following Jack directives will activate special test behaviour in the interpreter:

* `// ASSERT RAM[8000] = 6`: Assert the value of a RAM address after the execution of a `let` or `do` statement, e.g. `let r[0] = 2 * 3; // ASSERT RAM[8000] = 6`.
* `// ASSERT REACHABLE`: Assert this `let`, `do` or `return` statement is reachable at runtime, e.g. `return; // ASSERT REACHABLE`.

Jack files are statically scanned for `ASSERT` directives at runtime, if there are any mismatches or if the number of processed directives does not match the expected result an `AssertionError` exception will be thrown.

## Fully automated end-to-end test suite

Orchestrates the entire pipeline end-to-end: compiles Jack → tokenizes → analyzes → compiles to VM → translates to ASM → assembles to HACK → executes and validates all tests available in both course & custom tools (`VMEmulator`, `CPUEmulator`, `HardwareSimulator`, `Tester`, `Interpreter`).

```sh
python runner.py              # lint + run all tests
python runner.py --fpga       # include FPGA programs (projects/13_fpga)
python runner.py --debug      # verbose output
python runner.py --no-lint    # skip ruff linting
```

### Jack to VM compiler (1st Stage)

Compiles Jack source files into VM bytecode and validates output against course compiler if present.

```sh
python compiler.py                          # compile all configured Jack files
python compiler.py path/to/file.jack        # compile a single file
python compiler.py path/to/project/dir      # compile all .jack files in a directory
```

### Jack lexer

Lexes Jack source into XML token streams (`*T.xml`).

```sh
python tokenizer.py                          # tokenize all configured Jack files
python tokenizer.py path/to/file.jack        # tokenize a single file
python tokenizer.py path/to/project/dir      # tokenize all .jack files in a directory
```

### Jack parser

Parses token streams into CST (`*.xml`).

```sh
python analyzer.py                           # analyze all configured Jack files
python analyzer.py path/to/file.jack         # analyze a single file
python analyzer.py path/to/project/dir       # analyze all .jack files in a directory
```

### VM to ASM Translator (2nd Stage)

Translates VM bytecode directories into HACK assembly.

```sh
python translator.py                       # translate all configured VM directories
python translator.py path/to/vm/dir        # translate a single VM directory
```

### ASM to HACK assembler

Assembler that encodes HACK assembly into 16-bit binary.

```sh
python assembler.py                        # assemble all configured ASM files
python assembler.py path/to/file.asm       # assemble a single file
```

### Test script orchestrator

Parses and orchestrates `.tst` test scripts and `.cmp` comparison files.

```sh
python tester.py    # run all configured test files
```

### Linting: ruff/pydoclint

Ruff and pydoclint run automatically as part of `runner.py`. To run manually:

```sh
ruff check interpreter/          # lint check
ruff format interpreter/ --check # format check (dry run)
ruff check interpreter/ --fix    # attempt to auto-fix lint issues
ruff format interpreter/         # apply formatting
pydoclint interpreter/           # docstring lint
```

Configuration lives in `pyproject.toml` at the repo root.

## Project Files

`projects/01-12` contains complete implementations of the the original [nand2tetris](https://www.nand2tetris.org/) course content.

`projects/13_fpga` contains FPGA-targeted Jack programs symlinked from [nand2tetris-fpga](https://github.com/c0ff33-dev/nand2tetris-fpga), a complete implementation and fork of Michael Schröder's [course](https://gitlab.com/x653/nand2tetris-fpga).

### OS VM symlinks (projects 09-11)

Each Jack program directory in `projects/09`, `projects/10`, and `projects/11` contains symlinks to the stock OS VM files in `tools/OS/*.vm` (`Array`, `Keyboard`, `Math`, `Memory`, `Output`, `Screen`, `String`, `Sys`). This allows the compiler to produce a complete set of VM files for each program without duplicating the OS sources. Our compiler is expected to match the original course compiler output, so there is no need to back-test these against the stock VM files.

### OS Jack symlinks (project 12+)

The canonical OS class sources (e.g. `Array.jack`, `Math.jack`) live as regular files at the `projects/12/` base level. Symlinks fan these out so every test directory has the full set of Jack OS sources:

- `projects/12/*Test/*.jack` - each test dir symlinks all OS classes to `../*.jack`
- `projects/12/MemoryTest/MemoryDiag/*.jack` - symlinks to `../../*.jack` (base-level `projects/12/`)

### FPGA layout

```
projects/13_fpga/
├── Original/                # per-file .jack symlinks to nand2tetris-fpga/07_Operating_System/
│   ├── *.jack               # root-level OS class symlinks (shared across subdirs)
│   ├── 01_GPIO_Test/
│   ├── ...
│   └── 12_Tetris/
└── Classic/                 # per-file .jack symlinks to nand2tetris-fpga/09_More_Fun_to_Go/
    ├── 02_Operating_System/
    │   ├── 07_String_Test/
    │   ├── 09_Screen_Test/
    │   ├── 10_Output_Test/
    │   └── 14_Keyboard_Test/
    └── 03_Pong/
```

Both repos must (optionally) be cloned as siblings under the same parent directory so the symlinks resolve:

```sh
git clone https://github.com/c0ff33-dev/nand2tetris.git
git clone https://github.com/c0ff33-dev/nand2tetris-fpga.git
```

The `--fpga` flag includes these programs in the test suite. Without it, `projects/13_fpga` is ignored.

## Java Tools

The original nand2tetris Java-based tools (`HardwareSimulator`, `CPUEmulator`, `VMEmulator`, etc.) are in `tools/` and require any modern version of the JRE:

```sh
tools/HardwareSimulator.sh   
tools/CPUEmulator.sh
tools/VMEmulator.sh
```
