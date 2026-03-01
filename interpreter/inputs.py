"""
Centralized input file lists for the nand2tetris interpreter toolchain.
Each module's __main__ imports its relevant lists from here.
"""

import os
import glob as _glob

# Jack program directories for course compiler (interpreter: JackCompiler)
jack_dirpaths = [
    os.path.join("..", "projects", "09", "Average"),
    os.path.join("..", "projects", "09", "Fraction"),
    os.path.join("..", "projects", "09", "HelloWorld"),
    os.path.join("..", "projects", "09", "List"),
    os.path.join("..", "projects", "09", "Square"),
    os.path.join("..", "projects", "10", "ArrayTest"),
    # os.path.join("..", "projects", "10", "ExpressionLessSquare"),  # nonsense code that shouldn't compile or run
    os.path.join("..", "projects", "10", "Square"),
    os.path.join("..", "projects", "11", "Average"),
    os.path.join("..", "projects", "11", "ComplexArrays"),
    os.path.join("..", "projects", "11", "ConvertToBin"),
    os.path.join("..", "projects", "11", "Pong"),
    os.path.join("..", "projects", "11", "Seven"),
    os.path.join("..", "projects", "11", "Square"),
    os.path.join("..", "projects", "12", "SysTest"),
    os.path.join("..", "projects", "12", "ArrayTest"),
    os.path.join("..", "projects", "12", "KeyboardTest"),
    os.path.join("..", "projects", "12", "StringTest"),
    os.path.join("..", "projects", "12", "MemoryTest"),
    os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag"),
    os.path.join("..", "projects", "12", "MathTest"),
    os.path.join("..", "projects", "12", "OutputTest"),
    os.path.join("..", "projects", "12", "ScreenTest"),
    os.path.join("..", "projects", "13", "Pong"),
]

# Jack source files derived from jack_dirpaths (tokenizer, analyzer, compiler)
jack_filepaths = []
jack_filepath_lists = []
for _dir in jack_dirpaths:
    _files = sorted(_glob.glob(os.path.join(_dir, "*.jack")))
    jack_filepaths.extend(_files)
    jack_filepath_lists.append(_files)

# Reference files for validation against course compiler (compiler)
# For each .jack, prefer the corresponding .vm (course compiler output) if it exists
jack_matches = []
for _dir in jack_dirpaths:
    for _jack in sorted(_glob.glob(os.path.join(_dir, "*.jack"))):
        _vm = _jack.replace(".jack", ".vm")
        jack_matches.append(_vm if os.path.exists(_vm) else _jack)

# VM program directories (translator)
vm_dirpaths = [
    os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest"),
    os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest"),
    os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest"),
    os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd"),
    os.path.join("..", "projects", "07", "StackArithmetic", "StackTest"),
    os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop"),
    os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries"),
    # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement"),  # requires non-spec bootstrap (vm_bootstrap_paths)
    # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall"),  # requires non-spec bootstrap (vm_bootstrap_paths)
    os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction"),
    # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest"),  # requires non-spec bootstrap (vm_bootstrap_paths)
    os.path.join("..", "projects", "09", "Average"),
    os.path.join("..", "projects", "09", "Fraction"),
    os.path.join("..", "projects", "09", "HelloWorld"),
    os.path.join("..", "projects", "09", "List"),
    os.path.join("..", "projects", "09", "Square"),
    os.path.join("..", "projects", "10", "ArrayTest"),
    # os.path.join("..", "projects", "10", "ExpressionLessSquare"),  # nonsense code that shouldn't compile or run
    os.path.join("..", "projects", "10", "Square"),
    os.path.join("..", "projects", "11", "Average"),
    os.path.join("..", "projects", "11", "ComplexArrays"),
    os.path.join("..", "projects", "11", "ConvertToBin"),
    os.path.join("..", "projects", "11", "Pong"),
    os.path.join("..", "projects", "11", "Seven"),
    os.path.join("..", "projects", "11", "Square"),
    os.path.join("..", "projects", "12", "SysTest"),
    os.path.join("..", "projects", "12", "ArrayTest"),
    os.path.join("..", "projects", "12", "KeyboardTest"),
    os.path.join("..", "projects", "12", "StringTest"),
    os.path.join("..", "projects", "12", "MemoryTest"),
    os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag"),
    os.path.join("..", "projects", "12", "MathTest"),
    os.path.join("..", "projects", "12", "OutputTest"),
    os.path.join("..", "projects", "12", "ScreenTest"),
    os.path.join("..", "projects", "13", "Pong"),
]

# VM programs requiring non-spec bootstrap to pass tests (translator)
vm_bootstrap_paths = [
    os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement"),
    os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall"),
    os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest"),
]

# ASM files from VM translation (assembler/tester)
vm_asm_filepaths = [
    os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.asm"),
    os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.asm"),
    os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.asm"),
    os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.asm"),
    os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.asm"),
    os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.asm"),
    os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.asm"),
    os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.asm"),
    os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.asm"),
    os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.asm"),
    os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.asm"),
]

# ASM files for assembler/interpreter
binary_asm_filepaths = [
    #  tested against HACK solutions for project 6
    os.path.join("..", "projects", "04", "fill", "Fill.asm"),
    os.path.join("..", "projects", "04", "mult", "Mult.asm"),
    os.path.join("..", "projects", "06", "add", "Add.asm"),
    os.path.join("..", "projects", "06", "max", "Max.asm"),
    os.path.join("..", "projects", "06", "max", "MaxL.asm"),
    os.path.join("..", "projects", "06", "pong", "Pong.asm"),
    os.path.join("..", "projects", "06", "pong", "PongL.asm"),
    os.path.join("..", "projects", "06", "rect", "Rect.asm"),
    os.path.join("..", "projects", "06", "rect", "RectL.asm"),

    # exercised during vm_asm_filepaths
    # os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.asm"),
    # os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.asm"),
    # os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.asm"),
    # os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.asm"),
    # os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.asm"),
    # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.asm"),
    # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.asm"),
    # os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.asm"),
    # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.asm"),
    # os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.asm"),
    # os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.asm"),

    # ASSERT = at least one ASSERT directive present for test automation
    # os.path.join("..", "projects", "09", "Average", "Average.asm"),
    os.path.join("..", "projects", "09", "Fraction", "Fraction.asm"), # ASSERT
    os.path.join("..", "projects", "09", "HelloWorld", "HelloWorld.asm"), # ASSERT
    os.path.join("..", "projects", "09", "List", "List.asm"), # ASSERT
    # os.path.join("..", "projects", "09", "Square", "Square.asm"),  # interactive, no ASSERT = bootstrap issues
    os.path.join("..", "projects", "10", "ArrayTest", "ArrayTest.asm"),
    os.path.join("..", "projects", "10", "Square", "Square.asm"),  # different Main.jack to 9/11
    os.path.join("..", "projects", "11", "Average", "Average.asm"),
    os.path.join("..", "projects", "11", "ComplexArrays", "ComplexArrays.asm"), # ASSERT
    os.path.join("..", "projects", "11", "ConvertToBin", "ConvertToBin.asm"), # ASSERT
    os.path.join("..", "projects", "11", "Pong", "Pong.asm"),
    os.path.join("..", "projects", "11", "Seven", "Seven.asm"), # ASSERT
    # os.path.join("..", "projects", "11", "Square", "Square.asm"),  # interactive, no ASSERT = bootstrap issues
    # os.path.join("..", "projects", "12", "SysTest", "SysTest.asm"),  # interactive, no ASSERT = bootstrap issues
    os.path.join("..", "projects", "12", "ArrayTest", "ArrayTest.asm"), # ASSERT
    os.path.join("..", "projects", "12", "KeyboardTest", "KeyboardTest.asm"),
    os.path.join("..", "projects", "12", "StringTest", "StringTest.asm"), # ASSERT
    os.path.join("..", "projects", "12", "MemoryTest", "MemoryTest.asm"), # ASSERT
    os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "MemoryDiag.asm"),
    os.path.join("..", "projects", "12", "MathTest", "MathTest.asm"), # ASSERT
    os.path.join("..", "projects", "12", "OutputTest", "OutputTest.asm"), # ASSERT
    os.path.join("..", "projects", "12", "ScreenTest", "ScreenTest.asm"), # ASSERT
    os.path.join("..", "projects", "13", "Pong", "Pong.asm"),
]

# HDL test scripts (interpreter: HardwareSimulator)
hw_tst_files = [
    # os.path.join("..", "projects", "01", "And.tst"),
    # os.path.join("..", "projects", "01", "And16.tst"),
    # os.path.join("..", "projects", "01", "DMux.tst"),
    # os.path.join("..", "projects", "01", "DMux4Way.tst"),
    # os.path.join("..", "projects", "01", "DMux8Way.tst"),
    # os.path.join("..", "projects", "01", "Mux.tst"),
    # os.path.join("..", "projects", "01", "Mux16.tst"),
    # os.path.join("..", "projects", "01", "Mux4Way16.tst"),
    # os.path.join("..", "projects", "01", "Mux8Way16.tst"),
    # os.path.join("..", "projects", "01", "Not.tst"),
    # os.path.join("..", "projects", "01", "Not16.tst"),
    # os.path.join("..", "projects", "01", "Or.tst"),
    # os.path.join("..", "projects", "01", "Or16.tst"),
    # os.path.join("..", "projects", "01", "Or8Way.tst"),
    # os.path.join("..", "projects", "01", "Xor.tst"),
    # os.path.join("..", "projects", "02", "Add16.tst"),
    # os.path.join("..", "projects", "02", "ALU-nostat.tst"),
    # os.path.join("..", "projects", "02", "ALU.tst"),
    # os.path.join("..", "projects", "02", "FullAdder.tst"),
    # os.path.join("..", "projects", "02", "HalfAdder.tst"),
    # os.path.join("..", "projects", "02", "Inc16.tst"),
    # os.path.join("..", "projects", "03", "a", "Bit.tst"),
    # os.path.join("..", "projects", "03", "a", "PC.tst"),
    # os.path.join("..", "projects", "03", "a", "RAM64.tst"),
    # os.path.join("..", "projects", "03", "a", "RAM8.tst"),
    # os.path.join("..", "projects", "03", "a", "Register.tst"),
    # os.path.join("..", "projects", "03", "b", "RAM16K.tst"),
    # os.path.join("..", "projects", "03", "b", "RAM4K.tst"),
    # os.path.join("..", "projects", "03", "b", "RAM512.tst"),
    # os.path.join("..", "projects", "05", "ComputerAdd-external.tst"),
    # os.path.join("..", "projects", "05", "ComputerAdd.tst"),
    # os.path.join("..", "projects", "05", "ComputerMax-external.tst"),
    # os.path.join("..", "projects", "05", "ComputerMax.tst"),
    # os.path.join("..", "projects", "05", "ComputerRect-external.tst"),
    # os.path.join("..", "projects", "05", "ComputerRect.tst"),
    # os.path.join("..", "projects", "05", "CPU-external.tst"),
    # os.path.join("..", "projects", "05", "CPU.tst"),
    # # os.path.join("..", "projects", "05", "Memory.tst"),  # interactive test (passed manually)
]

# ASM test scripts (interpreter: CPUEmulator)
cpu_tst_files = [
    # os.path.join("..", "projects", "04", "fill", "Fill.tst"),  # interactive test (passed manually)
    os.path.join("..", "projects", "04", "fill", "FillAutomatic.tst"),
    os.path.join("..", "projects", "04", "mult", "Mult.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.tst"),
    os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.tst"),
    os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.tst"),
    os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.tst"),
    os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.tst"),
]

# VM test scripts (interpreter: VMEmulator, not included in tester)
vm_tst_files = [
    os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTestVME.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTestVME.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTestVME.tst"),
    os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAddVME.tst"),
    os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTestVME.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElementVME.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCallVME.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunctionVME.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTestVME.tst"),
    os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoopVME.tst"),
    os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeriesVME.tst"),
    os.path.join("..", "projects", "12", "ArrayTest", "ArrayTest.tst"),
    os.path.join("..", "projects", "12", "MemoryTest", "MemoryTest.tst"),
    os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "MemoryDiag.tst"),
    os.path.join("..", "projects", "12", "MathTest", "MathTest.tst"),

    # interactively tested / no test files
    # os.path.join("..", "projects", "12", "SysTest"),  
    # os.path.join("..", "projects", "12", "KeyboardTest"),
    # os.path.join("..", "projects", "12", "StringTest"),
    # os.path.join("..", "projects", "12", "OutputTest"),
    # os.path.join("..", "projects", "12", "ScreenTest"),
]

# ASM tests (tester)
tester_tst_files = [
    # week 5 and below use different multi row format (tested with HardwareSimulator/CPUEmulator)
    # os.path.join("..", "projects", "04", "fill", "Fill.tst"),  # interactive test (passed manually)
    # os.path.join("..", "projects", "04", "fill", "FillAutomatic.tst"),
    # os.path.join("..", "projects", "04", "mult", "Mult.tst"),

    os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.tst"),
    os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.tst"),
    os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.tst"),
    os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.tst"),
    os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.tst"),
    os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.tst"),
    os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.tst"),
]
