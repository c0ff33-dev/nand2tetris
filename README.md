# nand2tetris

A collection of nand2tetris coursework plus reworked implementations of course tools to enhance the student/developer experience.

## Setup

```sh
pip install -r requirements.txt
```

All Python scripts are run from within the `interpreter/` directory.

```sh
cd interpreter
```

## Usage

### runner.py — Fully automated end-to-end test suite

Orchestrates the entire pipeline end-to-end: compiles Jack → tokenizes → analyzes → compiles to VM → translates to ASM → assembles to HACK → executes and validates all tests (VMEmulator, CPUEmulator, HardwareSimulator, Tester, Interpreter).

```sh
python runner.py            # run all tests
python runner.py --debug    # verbose output
```

### compiler.py — Jack to VM compiler

Compiles Jack source files into VM bytecode and validates output against course compiler reference files.

```sh
python compiler.py                          # compile all configured Jack files
python compiler.py path/to/file.jack        # compile a single file
python compiler.py path/to/project/dir      # compile all .jack files in a directory
```

### tokenizer.py — Jack lexer

Lexes Jack source into XML token streams (`*T_out.xml`).

```sh
python tokenizer.py    # tokenize all configured Jack files
```

*No single-file CLI yet.*

### analyzer.py — Jack parser

Parses token streams into XML parse trees (`*_out.xml`).

```sh
python analyzer.py    # analyze all configured Jack files
```

*No single-file CLI yet.*

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

### interpreter.py — HACK CPU emulator & debugger

Interactive CPU emulator with a Rich TUI for step-through debugging. 

There is a default cycle limit for batch runs, `--break` removes the limit for interactive use. Test harness runs (`runner.py`) override the limit per `.tst` file, and Jack programs tagged with `ASSERT` directives auto-raise to a higher limit. See `hw["MAX"]` in `interpreter.py` for implementation details. It will take a while to break in at `Main.main` or beyond for a typical Jack OS runtime.

```sh
python interpreter.py path/to/file.asm                          # run a program
python interpreter.py path/to/file.asm --break 42 100           # break at ROM lines 42 and 100
python interpreter.py path/to/file.asm --break Math.init        # break on entering Math.init
python interpreter.py path/to/file.asm --break 42 String.init   # mix line numbers and function names
python interpreter.py path/to/file.asm --debug                  # verbose output
```

### interpreter.py — Jack ASSERT directives

The following Jack directives will activate special test behaviour in the interpreter:

* `// ASSERT RAM[8000] = 6`: Assert the value of a RAM address after the execution of a `let` or `do` statement, e.g. `let r[0] = 2 * 3; // ASSERT RAM[8000] = 6`.
* `// ASSERT REACHABLE`: Assert this `let`, `do` or `return` statement is reachable at runtime, e.g. `return; // ASSERT REACHABLE`.

Jack files are statically scanned for `ASSERT` directives at runtime, if there are any mismatches or if the number of processed directives does not match the expected result an `AssertionError` exception will be thrown.


### tester.py — test script parser

Parses `.tst` test scripts and `.cmp` comparison files (used internally by `runner.py`).

```sh
python tester.py    # parse all configured test files
```

*No single-file CLI yet.*

## Java Tools

The original nand2tetris Java-based tools (HardwareSimulator, CPUEmulator, VMEmulator, etc.) are in `tools/` and require a JRE:

```sh
# .bat on Windows
tools/HardwareSimulator.sh   
tools/CPUEmulator.sh
tools/VMEmulator.sh
```