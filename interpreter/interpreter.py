""""
Python bindings & test framework for Nand2Tetris HACK Assembly language
"""
import warnings
import traceback
import os
import sys

import assembler
import tester
import subprocess
import tokenizer
import analyzer
import compiler
from translator import Translator

from pathlib import Path
from pynput import keyboard
from rich.console import Console
from rich.table import Table
console = Console()
step = False


def process_debug(gui_log, debug_cmd, hw, src_line, breakpoints):
    # highlight current command in red
    gui_log.append(f"[red]{src_line}: {debug_cmd}[/red]")
    if len(gui_log) > 1:
        gui_log[-2] = gui_log[-2].replace("[red]", "").replace("[/red]", "")
    
    # how many lines to show in code panel
    if len(gui_log) > 17:
        gui_log.pop(0)

    table = Table(show_header=False)
    table.add_column(justify="left")
    table.add_column(justify="left")

    def title(header, size):
        multi = int((size - len(header)) / 2)
        return "[bold magenta]%s[/bold magenta]" % ("[" + "-" * multi + header + "-" * multi + "]\n")

    def code(gui_log):
        _code = ""
        for cmd in gui_log:
            _code += (cmd + "\n")
        return _code

    row_code = title("Code", 80) + code(gui_log)
    row_stack = title("Stack", 80) + "[TODO]"

    if debug_cmd.startswith("@") or debug_cmd.startswith("A="):
        row_reg = title("Registers", 0) +\
        "[red]A[/red] [bold yellow]%s[/bold yellow]\n[red]D[/red] %s\n[red]M[/red] %s\n" %\
            (hw["A"], hw["D"], hw["RAM"][hw["A"]]) +\
        "[red]R0(SP)[/red] %s\n[red]R1(LCL)[/red] %s\n[red]R2(ARG)[/red] %s\n[red]R3(THIS)[/red] %s\n[red]R4(THAT)[/red] %s\n" %\
            (hw["RAM"][0], hw["RAM"][1], hw["RAM"][2], hw["RAM"][3], hw["RAM"][4]) +\
        "[red]R5[/red] %s\n[red]R6[/red] %s\n[red]R7[/red] %s\n[red]R8[/red] %s\n[red]R9[/red] %s\n" %\
            (hw["RAM"][5], hw["RAM"][6], hw["RAM"][7], hw["RAM"][8], hw["RAM"][9]) +\
        "[red]R10[/red] %s\n[red]R11[/red] %s\n[red]R12[/red] %s\n[red]R13[/red] %s\n[red]R14[/red] %s\n" %\
            (hw["RAM"][10], hw["RAM"][11], hw["RAM"][12], hw["RAM"][13], hw["RAM"][14]) +\
        "[red]R15[/red] %s" % (hw["RAM"][15])

    elif debug_cmd.startswith("D="):
        row_reg = title("Registers", 0) +\
        "[red]A[/red] %s\n[red]D[/red] [bold yellow]%s[/bold yellow]\n[red]M[/red] %s\n" %\
            (hw["A"], hw["D"], hw["RAM"][hw["A"]]) +\
        "[red]R0(SP)[/red] %s\n[red]R1(LCL)[/red] %s\n[red]R2(ARG)[/red] %s\n[red]R3(THIS)[/red] %s\n[red]R4(THAT)[/red] %s\n" %\
            (hw["RAM"][0], hw["RAM"][1], hw["RAM"][2], hw["RAM"][3], hw["RAM"][4]) +\
        "[red]R5[/red] %s\n[red]R6[/red] %s\n[red]R7[/red] %s\n[red]R8[/red] %s\n[red]R9[/red] %s\n" %\
            (hw["RAM"][5], hw["RAM"][6], hw["RAM"][7], hw["RAM"][8], hw["RAM"][9]) +\
        "[red]R10[/red] %s\n[red]R11[/red] %s\n[red]R12[/red] %s\n[red]R13[/red] %s\n[red]R14[/red] %s\n" %\
            (hw["RAM"][10], hw["RAM"][11], hw["RAM"][12], hw["RAM"][13], hw["RAM"][14]) +\
        "[red]R15[/red] %s" % (hw["RAM"][15])

    elif debug_cmd.startswith("M="):
        row_reg = title("Registers", 0) +\
        "[red]A[/red] %s\n[red]D[/red] %s\n[red]M[/red] [bold yellow]%s[/bold yellow]\n" %\
            (hw["A"], hw["D"], hw["RAM"][hw["A"]]) +\
        "[red]R0(SP)[/red] %s\n[red]R1(LCL)[/red] %s\n[red]R2(ARG)[/red] %s\n[red]R3(THIS)[/red] %s\n[red]R4(THAT)[/red] %s\n" %\
            (hw["RAM"][0], hw["RAM"][1], hw["RAM"][2], hw["RAM"][3], hw["RAM"][4]) +\
        "[red]R5[/red] %s\n[red]R6[/red] %s\n[red]R7[/red] %s\n[red]R8[/red] %s\n[red]R9[/red] %s\n" %\
            (hw["RAM"][5], hw["RAM"][6], hw["RAM"][7], hw["RAM"][8], hw["RAM"][9]) +\
        "[red]R10[/red] %s\n[red]R11[/red] %s\n[red]R12[/red] %s\n[red]R13[/red] %s\n[red]R14[/red] %s\n" %\
            (hw["RAM"][10], hw["RAM"][11], hw["RAM"][12], hw["RAM"][13], hw["RAM"][14]) +\
        "[red]R15[/red] %s" % (hw["RAM"][15])

    elif debug_cmd.startswith("D;"):
        row_reg = title("Registers", 0) +\
        "[red]A[/red] [bold green]%s[/bold green]\n[red]D[/red] [bold cyan]%s[/bold cyan]\n[red]M[/red] %s\n" %\
            (hw["A"], hw["D"], hw["RAM"][hw["A"]]) +\
        "[red]R0(SP)[/red] %s\n[red]R1(LCL)[/red] %s\n[red]R2(ARG)[/red] %s\n[red]R3(THIS)[/red] %s\n[red]R4(THAT)[/red] %s\n" %\
            (hw["RAM"][0], hw["RAM"][1], hw["RAM"][2], hw["RAM"][3], hw["RAM"][4]) +\
        "[red]R5[/red] %s\n[red]R6[/red] %s\n[red]R7[/red] %s\n[red]R8[/red] %s\n[red]R9[/red] %s\n" %\
            (hw["RAM"][5], hw["RAM"][6], hw["RAM"][7], hw["RAM"][8], hw["RAM"][9]) +\
        "[red]R10[/red] %s\n[red]R11[/red] %s\n[red]R12[/red] %s\n[red]R13[/red] %s\n[red]R14[/red] %s\n" %\
            (hw["RAM"][10], hw["RAM"][11], hw["RAM"][12], hw["RAM"][13], hw["RAM"][14]) +\
        "[red]R15[/red] %s" % (hw["RAM"][15])

    elif debug_cmd.startswith("0;"):
        row_reg = title("Registers", 0) +\
        "[red]A[/red] [bold green]%s[/bold green]\n[red]D[/red] %s\n[red]M[/red] %s\n" %\
            (hw["A"], hw["D"], hw["RAM"][hw["A"]]) +\
        "[red]R0(SP)[/red] %s\n[red]R1(LCL)[/red] %s\n[red]R2(ARG)[/red] %s\n[red]R3(THIS)[/red] %s\n[red]R4(THAT)[/red] %s\n" %\
            (hw["RAM"][0], hw["RAM"][1], hw["RAM"][2], hw["RAM"][3], hw["RAM"][4]) +\
        "[red]R5[/red] %s\n[red]R6[/red] %s\n[red]R7[/red] %s\n[red]R8[/red] %s\n[red]R9[/red] %s\n" %\
            (hw["RAM"][5], hw["RAM"][6], hw["RAM"][7], hw["RAM"][8], hw["RAM"][9]) +\
        "[red]R10[/red] %s\n[red]R11[/red] %s\n[red]R12[/red] %s\n[red]R13[/red] %s\n[red]R14[/red] %s\n" %\
            (hw["RAM"][10], hw["RAM"][11], hw["RAM"][12], hw["RAM"][13], hw["RAM"][14]) +\
        "[red]R15[/red] %s" % (hw["RAM"][15])

    else:
        raise RuntimeError(debug_cmd)

    table.add_row(row_code + row_stack, row_reg)
    if src_line in breakpoints or step or breakpoints == [-1]:
        console.print(table)

        def on_press(key):
            global step
            try:
                if key.char == 'q': 
                    os._exit(0) # quit
                elif key.char == 'p':
                    # continue
                    step = False
                    return False
                elif key.char == 'n':
                    # step to next instruction
                    step = True
                    return False
                elif key.char == 'i':
                    addr = input("peek: ")
                    print(f"RAM[{addr}] = {hw['RAM'][int(addr)]}")
            except AttributeError:
                pass
        
        # TODO: linux: only works on xorg not wayland
        with keyboard.Listener(on_press=on_press, suppress=True) as listener:
            listener.join()


def run(asm_filepath, static_dict=None, tst_params=None, breakpoints=[], debug=False):
    gui_log = []

    # initialize hardware
    ram = [0] * 57344  # original spec: 24577 (~24k) words, fgpa spec: 57344 (56k) words
    hw = {
        "RAM": ram,
        "ROM": {},
        "A": 0,
        "D": 0,
        "M": 0,
        "PC": 0,  # 15 bit program counter = 32768 max instructions
        "MAX": 1000,  # this might need to be higher for complex programs
    }

    # load test params
    if tst_params is not None:
        hw["RAM"] = tst_params["RAM"]
        hw["MAX"] = tst_params["MAX"]

    print('Interpreter: Running %s' % asm_filepath)

    address_labels = {
        # alternate notation
        "R0": 0,  # SP
        "R1": 1,  # LCL
        "R2": 2,  # ARG
        "R3": 3,  # THIS
        "R4": 4,  # THAT
        "R5": 5,  # TEMP
        "R6": 6,  # TEMP
        "R7": 7,  # TEMP
        "R8": 8,  # TEMP
        "R9": 9,  # TEMP
        "R10": 10,  # TEMP
        "R11": 11,  # TEMP
        "R12": 12,  # TEMP
        "BASE": 15,  # R15 (statics assigned at BASE+n, starting at 1 e.g. RAM[16])

        # VM symbols
        "SP": 0,  # segmented by function (saved)
        "LCL": 1,  # segmented by function (saved) -- locals are initialized to zero on call
        "ARG": 2,  # segmented by function (saved) -- args are initialized as passed on call
        "THIS": 3,  # pointer 0 // segmented by function (saved) -- undefined on call
        "THAT": 4,  # pointer 1 // segmented by function (saved) -- undefined on call
        "TEMP": 5,  # 5-12 incl (volatile) -- undefined on call
        "R13": 13,  # reserved for VM translator (volatile) -- variable
        "R14": 14,  # reserved for VM translator (volatile) -- unused
        "R15": 15,  # reserved for VM translator (volatile) -- microcode return address
        "STATIC": 16,  # 16-255 incl (segmented by VM source file, max 240 values)
        "STACK": 256,  # 256-2047 incl (persistent)

        # JACK symbols
        "HEAP": 2048,  # 2048-16383 incl (persistent)
        "IO": 16384,  # 16384-24576 incl (persistent)
        "SCREEN": 16384,  # 16384-24575 incl (persistent)
        "KBD": 24576,  # any RAM address >= 24576 is invalid in HACK ABI

        # FPGA symbols
        "UART_TX": 4098
    }

    with open(asm_filepath, "r") as asm_file:
        asm_content = asm_file.readlines()

    # symbol & formatting pre-processing
    line = 0
    debug_asm = []
    raw_asm = []
    symbol = False

    for src_line, debug_cmd in enumerate(asm_content, start=1):
        debug_cmd = debug_cmd.strip()  # remove indentation / trailing whitespace
        if debug_cmd == "":
            continue  # empty line
        elif debug_cmd[0] == "/":
            continue  # skip comment lines entirely

        raw_cmd = debug_cmd.split(" //")[0].strip()  # drop comments and strip

        # translate symbols to line numbers (addresses)
        if raw_cmd[0] == "(":
            label_val = raw_cmd[1:-1]  # parse label name i.e. (LABEL)
            symbol = label_val  # store the parsed label name
            if label_val not in address_labels:
                address_labels[label_val] = line  # store line (address) for label in dict
            continue  # symbols are parsed out / don't increment line numbers
        else:
            # if a symbol was parsed on previous line append it to this debug line and reset the flag
            if symbol:
                debug_cmd += " // (%s)" % symbol
                symbol = False
            line += 1

        debug_asm.append([src_line, debug_cmd])  # preserve comments
        raw_asm.append([src_line, raw_cmd])  # code only

    hw["ROM"] = {"raw": raw_asm, "debug": debug_asm}

    # runtime parsing
    cycle = 0
    call_tree = []
    while cycle < hw["MAX"] and hw["PC"] < len(hw["ROM"]["raw"]):
        raw_cmd = hw["ROM"]["raw"][hw["PC"]][1]
        debug_cmd = hw["ROM"]["debug"][hw["PC"]][1]
        src_line = hw["ROM"]["raw"][hw["PC"]][0]

        if hw["ROM"]["raw"][hw["PC"]][0] != hw["ROM"]["debug"][hw["PC"]][0]:
            raise RuntimeError("Interpreter: Debug/Raw line number mismatch!")           

        if raw_cmd[0] == "(":
            raise RuntimeError("Interpreter: Symbols should already be parsed out!")

        # @address assignment
        elif raw_cmd[0] == "@":
            raw_cmd = raw_cmd.split(" //")[0].strip()  # drop everything after inline comment
            # assign @statics as they are encountered
            if raw_cmd[1].isnumeric():
                address = int(raw_cmd[1:])
            else:
                temp_label = raw_cmd[1:]
                if temp_label not in address_labels:
                    # not hit during week 7-8 tests
                    address_labels["BASE"] += 1  # if not, increment to next slot on the heap and assign it
                    if address_labels["BASE"] >= 255:
                        raise RuntimeError("Interpreter: Statics were about to overflow into the stack!")
                    address_labels[temp_label] = address_labels["BASE"]
                address = address_labels[temp_label]

            # process raw_cmd
            hw["A"] = address  # set A register to @address
            hw["PC"] += 1  # advance to next instruction

        # register assignment X[YZ]=<eval>
        elif "=" in raw_cmd:
            if raw_cmd[1] == "=":  # X=X
                dst = raw_cmd[0]
                eval_cmd = raw_cmd[2:]
            elif raw_cmd[2] == "=":  # XY=X
                # will never be tested with vm generated asm
                dst = raw_cmd[:2]
                eval_cmd = raw_cmd[3:]
            elif raw_cmd[3] == "=":  # XYZ=X
                # will never be tested with vm generated asm
                dst = raw_cmd[:3]
                eval_cmd = raw_cmd[4:]
            else:
                raise RuntimeError("Interpreter: Unexpected command: %s %s %s %s" %
                                   (hw["PC"], raw_cmd, "---", debug_cmd))

            # deref the real register values for the eval
            raw_eval_cmd = eval_cmd \
                .replace("A", str(hw["A"])) \
                .replace("D", str(hw["D"])) \
                .replace("M", str(hw["RAM"][hw["A"]])) \
                .replace("!", "~")  # bitwise NOT

            # X=Y, where X=A,D,M and Y=0,1,-1,A,D,M
            # X=Y<OP>Z, where X=A,D,M and Y/Z=0,1,-1,A,D,M and OP=+,-,|,&
            if any(x in eval_cmd for x in ["+", "-", "0", "1", "|", "&", "!", "A", "D", "M"]):
                eval_result = eval(raw_eval_cmd)
                # dst permutatons: AMD, AM, AD, MD, A, D, M
                # if multiple dst all are written to the same eval result simultaneously
                # in practice because the interpreter runs procedurally writing M before A should suffice
                if "M" in dst:
                    # TODO: update behaviour for this and other IO ports
                    if hw["A"] != 4098: # UART_TX
                        hw["RAM"][hw["A"]] = eval_result
                    if hw["A"] != 4100: # SPI
                        hw["RAM"][hw["A"]] = eval_result
                if "A" in dst:
                    hw["A"] = eval_result
                if "D" in dst:
                    hw["D"] = eval_result
                
                if not any(x in dst for x in ["A", "D", "M"]):
                    raise RuntimeError("Interpreter: Unexpected dst in command: %s %s %s %s" % 
                                       (hw["PC"], raw_cmd, "---", debug_cmd))
                
                hw["PC"] += 1  # advance to next instruction
            else:
                raise RuntimeError("Interpreter: Unexpected command: %s %s %s %s" %
                                   (hw["PC"], raw_cmd, "---", debug_cmd))

        # jumps
        elif ";" in raw_cmd:
            if raw_cmd[1] == ";":
                jump = False
                if raw_cmd == "0;JMP":
                    jump = True
                elif raw_cmd == "D;JGT":
                    if hw["D"] > 0:
                        jump = True
                elif raw_cmd == "D;JGE":
                    if hw["D"] >= 0:
                        jump = True
                elif raw_cmd == "D;JEQ":
                    if hw["D"] == 0:
                        jump = True
                elif raw_cmd == "D;JNE":
                    if hw["D"] != 0:
                        jump = True
                elif raw_cmd == "D;JLT":
                    if hw["D"] < 0:
                        jump = True
                elif raw_cmd == "D;JLE":
                    if hw["D"] <= 0:
                        jump = True
                else:
                    raise RuntimeError("Interpreter: Unexpected jump command: %s %s %s %s" %
                                       (hw["PC"], raw_cmd, "---", debug_cmd))

                if jump:
                    hw["PC"] = hw["A"]  # execute the jump
                else:
                    hw["PC"] += 1  # fall through to next instruction
            else:
                raise RuntimeError("Interpreter: Unexpected command: %s %s %s %s" %
                                   (hw["PC"], raw_cmd, "---", debug_cmd))
        else:
            raise RuntimeError("Interpreter: Unexpected command: %s %s %s %s" % (hw["PC"], raw_cmd, "---", debug_cmd))

        #  format primary debug output
        if debug:
            process_debug(gui_log, debug_cmd, hw, src_line, breakpoints)
        cycle += 1  # always advance clock cycle

    # program end
    if hw["PC"] == len(hw["ROM"]["raw"]):
        if debug:
            print("EOF reached: %s" % asm_filepath)
    elif cycle == hw["MAX"]:
        if debug:
            print("Cycle limit reached: %s" % asm_filepath)
    if len(call_tree) >= 1:
        raise RuntimeError("Interpreter: Elements still exist in call tree at program exit")

    # evaluate results
    result_dict = {}
    if tst_params is not None:
        for address in tst_params["results"]:
            result_dict[address] = hw["RAM"][address]

        if debug:
            print(result_dict)
            print(tst_params["compare"])

        with open(asm_filepath.replace(".asm", ".cmp"), "r") as cmp_file:
            cmp_file_contents = cmp_file.read()
        with open(asm_filepath.replace(".asm", ".out"), "w") as out_file:
            out_file.write(cmp_file_contents)

        if tst_params["compare"] == result_dict:
            print("Interpreter: Test passed for %s" % asm_filepath)
        else:
            raise RuntimeError("Interpreter: Test results did not match for %s" % asm_filepath)


if __name__ == '__main__':
    '''
    Projects 1-5: HDL, TST orchestration (HardwareSimulator/CPUEmulator), OUT matched to CMP truth table 
    Project 6:    ASM (assembler/interpreter) > HACK (python_hdl) matched against CMP binary
    Project 7-8:  VM (translator) > ASM // ASM > HACK as above
                  TST file (CPUEmulator/VMEmulator/tester) > OUT matched to CMP machine state
    Project 9-11: JACK > T_XML (CST) > XML (AST) > VM (tokenizer > analyzer > compiler) // VM > ASM > HACK as above
                  Only Project 10 has CST/AST solution XML files
    '''
    # TODO: Use symlinks for libraries and purge dupes from git history

    # compile jack programs (JackCompiler)
    # projects 1-12 accounted for, not included in compiler (jack_filepaths)
    jack_dirpaths = [
        # os.path.join("..", "projects", "09", "Average"),
        # os.path.join("..", "projects", "09", "Fraction"),
        # os.path.join("..", "projects", "09", "HelloWorld"),
        # os.path.join("..", "projects", "09", "List"),
        # os.path.join("..", "projects", "09", "Square"),
        # os.path.join("..", "projects", "10", "ArrayTest"),
        # # os.path.join("..", "projects", "10", "ExpressionLessSquare"),  # nonsense code that shouldn't compile or run
        # os.path.join("..", "projects", "10", "Square"),
        # os.path.join("..", "projects", "11", "Average"),
        # os.path.join("..", "projects", "11", "ComplexArrays"),
        # os.path.join("..", "projects", "11", "ConvertToBin"),
        # os.path.join("..", "projects", "11", "Pong"),
        # os.path.join("..", "projects", "11", "Seven"),
        # os.path.join("..", "projects", "11", "Square"),       
        # os.path.join("..", "projects", "12", "SysTest"),
        # os.path.join("..", "projects", "12", "ArrayTest"),
        # os.path.join("..", "projects", "12", "KeyboardTest"),
        # os.path.join("..", "projects", "12", "StringTest"),
        # os.path.join("..", "projects", "12", "MemoryTest"),
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag"),
        # os.path.join("..", "projects", "12", "MathTest"),

        # TODO: Project 12
        os.path.join("..", "projects", "12", "OutputTest"),
        # os.path.join("..", "projects", "12", "ScreenTest"), # TODO: NYI
    ]

    # tokenizer/analyzer
    # projects 1-12 accounted for, included in tokenizer/analyzer/compiler
    jack_filepaths = [
        # os.path.join("..", "projects", "09", "Average", "Main.jack"),
        # os.path.join("..", "projects", "09", "Fraction", "Main.jack"),
        # os.path.join("..", "projects", "09", "Fraction", "Fraction.jack"),
        # os.path.join("..", "projects", "09", "HelloWorld", "Main.jack"),
        # os.path.join("..", "projects", "09", "List", "Main.jack"),
        # os.path.join("..", "projects", "09", "List", "List.jack"),
        # os.path.join("..", "projects", "09", "Square", "Main.jack"),
        # os.path.join("..", "projects", "09", "Square", "Square.jack"),
        # os.path.join("..", "projects", "09", "Square", "SquareGame.jack"),
        # os.path.join("..", "projects", "10", "ArrayTest", "Main.jack"),
        # # os.path.join("..", "projects", "10", "ExpressionLessSquare", "Main.jack"),  # nonsense code that shouldn't compile or run
        # # os.path.join("..", "projects", "10", "ExpressionLessSquare", "Square.jack"),
        # # os.path.join("..", "projects", "10", "ExpressionLessSquare", "SquareGame.jack"),
        # os.path.join("..", "projects", "10", "Square", "Main.jack"),
        # os.path.join("..", "projects", "10", "Square", "Square.jack"),
        # os.path.join("..", "projects", "10", "Square", "SquareGame.jack"),
        # os.path.join("..", "projects", "11", "Average", "Main.jack"),
        # os.path.join("..", "projects", "11", "ComplexArrays", "Main.jack"),
        # os.path.join("..", "projects", "11", "ConvertToBin", "Main.jack"),
        # os.path.join("..", "projects", "11", "Pong", "Ball.jack"),
        # os.path.join("..", "projects", "11", "Pong", "Bat.jack"),
        # os.path.join("..", "projects", "11", "Pong", "Main.jack"),
        # os.path.join("..", "projects", "11", "Pong", "PongGame.jack"),
        # os.path.join("..", "projects", "11", "Seven", "Main.jack"),
        # os.path.join("..", "projects", "11", "Square", "Main.jack"),
        # os.path.join("..", "projects", "11", "Square", "Square.jack"),
        # os.path.join("..", "projects", "11", "Square", "SquareGame.jack"),
        # os.path.join("..", "projects", "12", "SysTest", "Main.jack"),
        # os.path.join("..", "projects", "12", "SysTest", "Sys.jack"),
        # os.path.join("..", "projects", "12", "ArrayTest", "Main.jack"),
        # os.path.join("..", "projects", "12", "ArrayTest", "Array.jack"),
        # os.path.join("..", "projects", "12", "KeyboardTest", "Main.jack"),
        # os.path.join("..", "projects", "12", "KeyboardTest", "Keyboard.jack"),
        # os.path.join("..", "projects", "12", "StringTest", "Main.jack"),
        # os.path.join("..", "projects", "12", "StringTest", "String.jack"),
        # os.path.join("..", "projects", "12", "MemoryTest", "Main.jack"),
        # os.path.join("..", "projects", "12", "MemoryTest", "Memory.jack"),
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "Main.jack"),
        # os.path.join("..", "projects", "12", "MathTest", "Main.jack"),
        # os.path.join("..", "projects", "12", "MathTest", "Math.jack"),

        # TODO: Project 12
        os.path.join("..", "projects", "12", "OutputTest", "Main.jack"),
        os.path.join("..", "projects", "12", "OutputTest", "Output.jack"),
        # os.path.join("..", "projects", "12", "ScreenTest", "Main.jack"), # TODO: NYI
        # os.path.join("..", "projects", "12", "ScreenTest", "Screen.jack"), # TODO: NYI
    ]

    # compiler
    jack_filepath_lists = [  
        # # projects 1-12 accounted for, included in interpreter/tokenizer/analyzer
        # [os.path.join("..", "projects", "09", "Average", "Main.jack")],
        # [os.path.join("..", "projects", "09", "Fraction", "Main.jack"),
        #  os.path.join("..", "projects", "09", "Fraction", "Fraction.jack")],
        # [os.path.join("..", "projects", "09", "HelloWorld", "Main.jack")],
        # [os.path.join("..", "projects", "09", "List", "Main.jack"),
        #  os.path.join("..", "projects", "09", "List", "List.jack")],
        # [os.path.join("..", "projects", "09", "Square", "Main.jack"),
        #  os.path.join("..", "projects", "09", "Square", "Square.jack"),
        #  os.path.join("..", "projects", "09", "Square", "SquareGame.jack")],
        # [os.path.join("..", "projects", "10", "ArrayTest", "Main.jack")],
        # # [os.path.join("..", "projects", "10", "ExpressionLessSquare", "Main.jack"),  # nonsense code that shouldn't compile or run
        # #  os.path.join("..", "projects", "10", "ExpressionLessSquare", "Square.jack"),
        # #  os.path.join("..", "projects", "10", "ExpressionLessSquare", "SquareGame.jack")],
        # [os.path.join("..", "projects", "10", "Square", "Main.jack"),
        #  os.path.join("..", "projects", "10", "Square", "Square.jack"),
        #  os.path.join("..", "projects", "10", "Square", "SquareGame.jack")],
        # [os.path.join("..", "projects", "11", "Average", "Main.jack")],
        # [os.path.join("..", "projects", "11", "ComplexArrays", "Main.jack")],
        # [os.path.join("..", "projects", "11", "ConvertToBin", "Main.jack")],
        # [os.path.join("..", "projects", "11", "Pong", "Ball.jack"),
        #  os.path.join("..", "projects", "11", "Pong", "Bat.jack"),
        #  os.path.join("..", "projects", "11", "Pong", "Main.jack"),
        #  os.path.join("..", "projects", "11", "Pong", "PongGame.jack")],
        # [os.path.join("..", "projects", "11", "Seven", "Main.jack")],
        # [os.path.join("..", "projects", "11", "Square", "Main.jack"),
        #  os.path.join("..", "projects", "11", "Square", "Square.jack"),
        #  os.path.join("..", "projects", "11", "Square", "SquareGame.jack")],
        # [os.path.join("..", "projects", "12", "SysTest", "Main.jack"),
        #  os.path.join("..", "projects", "12", "SysTest", "Sys.jack")],
        # [os.path.join("..", "projects", "12", "ArrayTest", "Main.jack"),
        #  os.path.join("..", "projects", "12", "ArrayTest", "Array.jack")],
        # [os.path.join("..", "projects", "12", "KeyboardTest", "Main.jack"),
        #  os.path.join("..", "projects", "12", "KeyboardTest", "Keyboard.jack")],
        # [os.path.join("..", "projects", "12", "StringTest", "Main.jack"),
        #  os.path.join("..", "projects", "12", "StringTest", "String.jack")],
        # [os.path.join("..", "projects", "12", "MemoryTest", "Main.jack"),
        #  os.path.join("..", "projects", "12", "MemoryTest", "Memory.jack")],
        # [os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "Main.jack")],
        # [os.path.join("..", "projects", "12", "MathTest", "Main.jack"),
        #  os.path.join("..", "projects", "12", "MathTest", "Math.jack")],

        # TODO: Project 12
        [os.path.join("..", "projects", "12", "OutputTest", "Main.jack"),
         os.path.join("..", "projects", "12", "OutputTest", "Output.jack")],
        # [os.path.join("..", "projects", "12", "ScreenTest", "Main.jack"), # TODO: NYI
        #  os.path.join("..", "projects", "12", "ScreenTest", "Screen.jack")], # TODO: NYI
    ]

    # enforce matching of compiler against course compiler
    # projects 1-12 accounted for
    jack_matches = {  
        # os.path.join("..", "projects", "09", "Average", "Main.vm"): 149,
        # os.path.join("..", "projects", "09", "Fraction", "Main.vm"): 18,
        # os.path.join("..", "projects", "09", "Fraction", "Fraction.vm"): 116,
        # os.path.join("..", "projects", "09", "HelloWorld", "Main.vm"): 33,
        # os.path.join("..", "projects", "09", "List", "Main.vm"): 19,
        # os.path.join("..", "projects", "09", "List", "List.vm"): 65,
        # os.path.join("..", "projects", "09", "Square", "Main.vm"): 11,
        # os.path.join("..", "projects", "09", "Square", "Square.vm"): 304,
        # os.path.join("..", "projects", "09", "Square", "SquareGame.vm"): 179,
        # os.path.join("..", "projects", "10", "ArrayTest", "Main.vm"): 183,
        # os.path.join("..", "projects", "11", "ComplexArrays", "Main.vm"): 702,
        # os.path.join("..", "projects", "11", "ConvertToBin", "Main.vm"): 109,
        # os.path.join("..", "projects", "11", "Pong", "Bat.vm"): 207,
        # os.path.join("..", "projects", "11", "Pong", "Ball.vm"): 444,
        # os.path.join("..", "projects", "11", "Pong", "Main.vm"): 13,
        # os.path.join("..", "projects", "11", "Pong", "PongGame.vm"): 318,
        # os.path.join("..", "projects", "11", "Seven", "Main.vm"): 10,
        # os.path.join("..", "projects", "12", "SysTest", "Main.vm"): 281,
        # os.path.join("..", "projects", "12", "SysTest", "Sys.vm"): 83,
        # os.path.join("..", "projects", "12", "ArrayTest", "Main.vm"): 131,
        # os.path.join("..", "projects", "12", "ArrayTest", "Array.vm"): 23,
        # os.path.join("..", "projects", "12", "KeyboardTest", "Main.vm"): 949,
        # os.path.join("..", "projects", "12", "KeyboardTest", "Keyboard.vm"): 102,
        # os.path.join("..", "projects", "12", "StringTest", "Main.vm"): 919,
        # os.path.join("..", "projects", "12", "StringTest", "String.vm"): 393,
        # os.path.join("..", "projects", "12", "MemoryTest", "Main.vm"): 176,
        # os.path.join("..", "projects", "12", "MemoryTest", "Memory.vm"): 376,
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "Main.vm"): 465,
        # os.path.join("..", "projects", "12", "MathTest", "Main.vm"): 162,
        # os.path.join("..", "projects", "12", "MathTest", "Math.vm"): 408,

        # TODO: Project 12
        # os.path.join("..", "projects", "12", "OutputTest", "Main.vm"): xxx, # TODO: NYI
        # os.path.join("..", "projects", "12", "OutputTest", "Output.vm"): xxx, # TODO: NYI
        # os.path.join("..", "projects", "12", "ScreenTest", "Main.vm"): xxx, # TODO: NYI
        # os.path.join("..", "projects", "12", "ScreenTest", "Screen.vm"): xxx, # TODO: NYI
    }

    # VM programs (translator only, interpreted below)
    # projects 1-12 accounted for, included in translator
    vm_dirpaths = [
        # os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "StackTest"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement"),  # requires non-spec bootstrap (vm_bootstrap_paths)
        # # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall"),  # requires non-spec bootstrap (vm_bootstrap_paths)
        # os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest"),  # requires non-spec bootstrap (vm_bootstrap_paths)
        # os.path.join("..", "projects", "09", "Average"),
        # os.path.join("..", "projects", "09", "Fraction"),
        # os.path.join("..", "projects", "09", "HelloWorld"),
        # os.path.join("..", "projects", "09", "List"),
        # os.path.join("..", "projects", "09", "Square"),
        # os.path.join("..", "projects", "10", "ArrayTest"),
        # # os.path.join("..", "projects", "10", "ExpressionLessSquare"),  # nonsense code that shouldn't compile or run
        # os.path.join("..", "projects", "10", "Square"),
        # os.path.join("..", "projects", "11", "Average"),
        # os.path.join("..", "projects", "11", "ComplexArrays"),
        # os.path.join("..", "projects", "11", "ConvertToBin"),
        # os.path.join("..", "projects", "11", "Pong"),
        # os.path.join("..", "projects", "11", "Seven"),
        # os.path.join("..", "projects", "11", "Square"),
        # os.path.join("..", "projects", "12", "SysTest"),
        # os.path.join("..", "projects", "12", "ArrayTest"),
        # os.path.join("..", "projects", "12", "KeyboardTest"),
        # os.path.join("..", "projects", "12", "StringTest"),
        # os.path.join("..", "projects", "12", "MemoryTest"),
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag"),
        # os.path.join("..", "projects", "12", "MathTest"),

        # TODO: Project 12
        os.path.join("..", "projects", "12", "OutputTest"),
        # os.path.join("..", "projects", "12", "ScreenTest"), # TODO: NYI
    ]

    # VM programs
    # projects 1-12 accounted for, included in translator
    # that require non-spec bootstrap to pass tests (translator only, interpreted/tested below)
    # (bootstrap is injected into ASM which is loaded by tester + CPUEmulator)
    vm_bootstrap_paths = [
        # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest")
    ]

    vm_dirpaths = vm_dirpaths + vm_bootstrap_paths

    # VM test scripts
    # projects 1-12 accounted for, included in assembler/python_hdl
    # (assembler/tester/interpreter)
    vm_asm_filepaths = [
        # os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.asm"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.asm"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.asm"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.asm"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.asm"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.asm"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.asm"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.asm"), # non-spec issues break interpreter
        # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.asm"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.asm"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.asm"),
    ]

    # assembler/interpreter
    # projects 1-12 accounted for, included in assembler/python_hdl
    # (tested against HACK solutions for project 6)
    binary_asm_filepaths = [
        # os.path.join("..", "projects", "04", "fill", "Fill.asm"),
        # os.path.join("..", "projects", "04", "mult", "Mult.asm"),
        # os.path.join("..", "projects", "06", "add", "Add.asm"),
        # os.path.join("..", "projects", "06", "max", "Max.asm"),
        # os.path.join("..", "projects", "06", "max", "MaxL.asm"),
        # os.path.join("..", "projects", "06", "pong", "Pong.asm"),
        # os.path.join("..", "projects", "06", "pong", "PongL.asm"),
        # os.path.join("..", "projects", "06", "rect", "Rect.asm"),
        # os.path.join("..", "projects", "06", "rect", "RectL.asm"),

        # # exercised during vm_asm_filepaths
        # # os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.asm"),
        # # os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.asm"),
        # # os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.asm"),
        # # os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.asm"),
        # # os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.asm"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.asm"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.asm"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.asm"),
        # # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.asm"),
        # # os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.asm"),
        # # os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.asm"),

        # # exceeds ROM limit of 32k instructions
        # os.path.join("..", "projects", "09", "Average", "Average.asm"),
        # os.path.join("..", "projects", "09", "Fraction", "Fraction.asm"),
        # os.path.join("..", "projects", "09", "HelloWorld", "HelloWorld.asm"),
        # os.path.join("..", "projects", "09", "List", "List.asm"),
        # os.path.join("..", "projects", "09", "Square", "Square.asm"),
        # os.path.join("..", "projects", "10", "ArrayTest", "ArrayTest.asm"),
        # # os.path.join("..", "projects", "10", "Square", "Square.asm"),  # 17 bit addresses (different Main.jack to 9/11)
        # os.path.join("..", "projects", "11", "Average", "Average.asm"),
        # # os.path.join("..", "projects", "11", "ComplexArrays", "ComplexArrays.asm"),  # 17 bit addresses
        # os.path.join("..", "projects", "11", "ConvertToBin", "ConvertToBin.asm"),
        # # os.path.join("..", "projects", "11", "Pong", "Pong.asm"),  # 17 bit addresses
        # os.path.join("..", "projects", "11", "Seven", "Seven.asm"),
        # os.path.join("..", "projects", "11", "Square", "Square.asm"),

        # os.path.join("..", "projects", "12", "SysTest", "SysTest.asm"),
        # os.path.join("..", "projects", "12", "ArrayTest", "ArrayTest.asm"),
        # # os.path.join("..", "projects", "12", "KeyboardTest", "KeyboardTest.asm"),  # 17 bit addresses + access violation
        # # os.path.join("..", "projects", "12", "StringTest", "StringTest.asm"),  # 17 bit addresses + access violation
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryTest.asm"),
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "MemoryDiag.asm"),
        # os.path.join("..", "projects", "12", "MathTest", "MathTest.asm"),

        # TODO: Project 12
        os.path.join("..", "projects", "12", "OutputTest", "OutputTest.asm"),
        # os.path.join("..", "projects", "12", "ScreenTest", "ScreenTest.asm"), # TODO: NYI
    ]

    # HDL tests (HardwareSimulator): project 1-12 accounted for, not included in tester/python_hdl!
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
        # # os.path.join("..", "projects", "05"Memory.tst"),  # interactive test (passed manually)
    ]
    
    # ASM tests (CPUEmulator): # project 1-12 accounted for & included in tester!
    cpu_tst_files = [
        # # os.path.join("..", "projects", "04", "fill", "Fill.tst"),  # interactive test (passed manually)
        # os.path.join("..", "projects", "04", "fill", "FillAutomatic.tst"),
        # os.path.join("..", "projects", "04", "mult", "Mult.tst"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.tst"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTest.tst"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTest.tst"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAdd.tst"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTest.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCall.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunction.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTest.tst"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoop.tst"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeries.tst"),
    ]

    # VM tests (VMEmulator): 
    # project 1-12 accounted for, not included in tester
    vm_tst_files = [
        # os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTestVME.tst"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "PointerTest", "PointerTestVME.tst"),
        # os.path.join("..", "projects", "07", "MemoryAccess", "StaticTest", "StaticTestVME.tst"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "SimpleAdd", "SimpleAddVME.tst"),
        # os.path.join("..", "projects", "07", "StackArithmetic", "StackTest", "StackTestVME.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElementVME.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "NestedCall", "NestedCallVME.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "SimpleFunction", "SimpleFunctionVME.tst"),
        # os.path.join("..", "projects", "08", "FunctionCalls", "StaticsTest", "StaticsTestVME.tst"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "BasicLoop", "BasicLoopVME.tst"),
        # os.path.join("..", "projects", "08", "ProgramFlow", "FibonacciSeries", "FibonacciSeriesVME.tst"),
        # os.path.join("..", "projects", "12", "ArrayTest", "ArrayTest.tst"),
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryTest.tst"),
        # os.path.join("..", "projects", "12", "MemoryTest", "MemoryDiag", "MemoryDiag.tst"),
        # os.path.join("..", "projects", "12", "MathTest", "MathTest.tst"),

        # # interactively tested / no test files
        # # os.path.join("..", "projects", "12", "SysTest"),
        # # os.path.join("..", "projects", "12", "KeyboardTest"),
        # # os.path.join("..", "projects", "12", "StringTest")
    ]

    # init
    debug = False
    vm_static_dicts = {} 
    breakpoints = []

    # DEBUG: overrides
    if debug:
        jack_dirpaths = [] 
        jack_filepaths = []
        jack_filepath_lists = []
        jack_matches = {}
        vm_dirpaths = []
        vm_asm_filepaths = []
        binary_asm_filepaths = [os.path.join("..", "..", "nand2tetris-fpga", "06_IO_Devices", "03_SPI", "cat.asm")]
        hw_tst_files = []
        cpu_tst_files = []
        vm_tst_files = []
        breakpoints = [] # -1 # binary_asm_filepaths

        # jack_dirpaths = [] 
        # jack_filepaths = []
        # jack_filepath_lists = []
        # jack_matches = {}
        # vm_dirpaths = [os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest")]
        # vm_asm_filepaths = []
        # binary_asm_filepaths = [os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.asm")]
        # hw_tst_files = []
        # cpu_tst_files = [os.path.join("..", "projects", "07", "MemoryAccess", "BasicTest", "BasicTest.tst")]
        # vm_tst_files = []
        # breakpoints = []  #  binary_asm_filepaths

        # jack_dirpaths = [] 
        # jack_filepaths = []
        # jack_filepath_lists = []
        # jack_matches = {}
        # vm_dirpaths = [os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement")]
        # vm_asm_filepaths = [os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.asm")]
        # binary_asm_filepaths = [os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.asm")]
        # hw_tst_files = []
        # cpu_tst_files = [os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElement.tst")]
        # vm_tst_files = [os.path.join("..", "projects", "08", "FunctionCalls", "FibonacciElement", "FibonacciElementVME.tst")]
        # breakpoints = []  # binary_asm_filepaths

    # compile Jack to VM (course compiler)
    for jack_dir in jack_dirpaths:
        result = subprocess.run([os.path.join("..", "tools", "JackCompiler.bat"), jack_dir], capture_output=True, text=True)
        if result.stderr or result.returncode:
            raise RuntimeError(result.stderr)
        else:
            print("Course Compiler: %s" % result.stdout.strip())
    
    # tokenize / analyze Jack (not required with course compiler)
    for filepath in jack_filepaths:
        tokenizer.main(filepath, debug=debug)
        analyzer.main(filepath, debug=debug)
    
    # compile Jack to VM (match against course compiler)
    compiler._compile(jack_filepath_lists, jack_matches)
    
    # translate VM to ASM
    for vm_dir in vm_dirpaths:
        t = Translator(debug=debug)
        vm_static_dicts[vm_dir] = t.translate(vm_dir, vm_bootstrap_paths)
    
    # assemble all ASM to HACK and binary match if available
    asm_filepaths = vm_asm_filepaths + binary_asm_filepaths
    for asm_filepath in asm_filepaths:
        assembler.assemble(asm_filepath, debug=debug)
    warnings.simplefilter("default")  # reset warning filter

    # load & execute modules without test scripts
    for asm_filepath in binary_asm_filepaths:
        try:
            run(asm_filepath, breakpoints=breakpoints, debug=debug)
        except IndexError:
            warnings.warn("Interpreter: Probable memory access violation captured during execution of %s"
                            % asm_filepath)
            traceback.print_exc()

    # load & execute modules with test scripts
    for asm_filepath in vm_asm_filepaths:
        tst_filepath = asm_filepath.replace(".asm", ".tst")
        cmp_filepath = asm_filepath.replace(".asm", ".cmp")
        tst_params = tester.load_tst(tst_filepath, debug=debug)
        tst_params["compare"] = tester.load_cmp(cmp_filepath, debug=debug)
    
        # retrieve static_dict from translator run
        _static_dict = None
        for vm_dir in vm_dirpaths:
            if vm_dir in asm_filepath:
                _static_dict = vm_static_dicts[vm_dir]
    
        # execute
        run(asm_filepath, static_dict=_static_dict, tst_params=tst_params, debug=debug)
    
    # run hdl tests (HardwareSimulator)
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "HardwareSimulator.bat")
    else:
        cmd = os.path.join("..", "tools", "HardwareSimulator.sh")

    for test in hw_tst_files:
        print(r"Running: %s %s" % (cmd, test))
        result = subprocess.run([cmd, test], capture_output=True, text=True)
        if 'End of script - Comparison ended successfully\n' != result.stdout and not result.stderr:
            raise RuntimeError(r"Error when running %s: %s" % (cmd, result.stderr))
    
        # different style of TST file, but the test has passed
        if test in (
            os.path.join("..", "projects", "05", "CPU-external.tst"), 
            os.path.join("..", "projects", "05", "CPU.tst")
        ):
            continue
    
        line = 0
        out_file = test.replace(".tst", ".out")
        cmp_file = test.replace(".tst", ".cmp")
        with open(out_file) as out:
            with open(cmp_file) as cmp:
                for index, (solution, current) in enumerate(zip(cmp, out)):
                    if solution != current:
                        raise RuntimeError("%s mismatch after line %s" % (out_file, index))
                line += 1
    
    # run hack tests (CPUEmulator) -- shares CMP and OUT files with VMEmulator
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "CPUEmulator.bat")
    else:
        cmd = os.path.join("..", "tools", "CPUEmulator.sh")

    for test in cpu_tst_files:
        print(r"Running: %s %s" % (cmd, test))
        result = subprocess.run([cmd, test], capture_output=True, text=True)
        if 'End of script - Comparison ended successfully\n' != result.stdout and not result.stderr:
            raise RuntimeError(r"Error when running %s: %s" % (cmd, result.stderr))
    
        line = 0
        out_file = test.replace(".tst", ".out")
        cmp_file = test.replace(".tst", ".cmp")
        with open(out_file) as out:
            with open(cmp_file) as cmp:
                for index, (solution, current) in enumerate(zip(cmp, out)):
                    if solution != current:
                        raise RuntimeError("%s mismatch after line %s" % (out_file, index))
                line += 1
    
    # run VM tests (VMEmulator) -- shares CMP and OUT files with CPUEmulator
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "VMEmulator.bat")
    else:
        cmd = os.path.join("..", "tools", "VMEmulator.sh")

    for test in vm_tst_files:
        print(r"Running: %s %s" % (cmd, test))

        # VMEmulator will conflict if multiple VM implementations
        # so temporarily rename the course compiler version(s)
        if test.startswith(os.path.join("..", "projects", "12")):
            vm_base = test.replace("Test.tst", ".vm")
            vm_out = vm_base.replace(".vm", "_out.vm")
            vm_backup = vm_base.replace(".vm", ".bak")
            os.rename(vm_base, vm_backup)
            os.rename(vm_out, vm_base)

            main_base = str(Path(test).with_name("Main.vm"))
            main_out = main_base.replace("Main.vm", "Main_out.vm")
            main_backup = main_base.replace(".vm", ".bak")
            os.rename(main_base, main_backup)
            os.rename(main_out, main_base)
        try:
            result = subprocess.run([cmd, test], capture_output=True, text=True)
            if result.stdout != 'End of script - Comparison ended successfully\n':
                raise RuntimeError(r"Error when running %s: %s" % (cmd, result.stderr))
        except: 
            raise
        finally:
            # in either case restore restore the file names
            if test.startswith(os.path.join("..", "projects", "12")):
                os.rename(vm_base, vm_out)
                os.rename(vm_backup, vm_base)
                os.rename(main_base, main_out)
                os.rename(main_backup, main_base)

    # project
    # TODO: comment remaining sys.errors
    # TODO: Project 12: Implement the OS libraries in Jack, compile/test (test programs included)
    # TODO: add integration for Project 12 translate/execute/assemble ASM > HACK (integration test)
    # TODO: VMEmulator equivalent for Jack debugging + tests (no instruction limit)
    # TODO: separate interpreter from test harness

    # test harness
    # TODO: import file lists from common file
    # TODO: dynamically count lines in jack/strict matches

    # compiler
    # FIXME: // in string strips the string
    # TODO: error check - int cannot exceed 32767
    # TODO: error check - non-void without return value / void with return value
    # TODO: error check - statement without keyword/statement type
    # TODO: error check - non-terminated statement
    # TODO: error check - prevent using reserved keywords as identifiers
    # TODO: error check - prevent duplicate variable/subroutine declaration
    # TODO: error check - check num args match called function
    # TODO: error check - check subroutine returns
    # TODO: error check - check constructor return type is class type
    # TODO: error check - check constructor returns this
    # TODO: error check - check for unexpected tokens after statement expression (if/while)

    # TODO: Jack OS Error Codes
    '''
    Code Method/Function       Description
    ---- ---------------       -----------------------------------------------
     1   Sys.wait              Duration must be positive
     2   Array.new             Array size must be positive
     3   Math.divide           Division by zero
     4   Math.sqrt             Cannot compute square root of a negative number
     5   Memory.alloc          Allocated memory size must be positive
     6   Memory.alloc          Heap overflow
     7   Screen.drawPixel      Illegal pixel coordinates
     8   Screen.drawLine       Illegal line coordinates
     9   Screen.drawRectangle  Illegal rectangle coordinates
    12   Screen.drawCircle     Illegal center coordinates
    13   Screen.drawCircle     Illegal radius
    14   String.new            Maximum length must be non-negative
    15   String.charAt         String index out of bounds
    16   String.setCharAt      String index out of bounds
    17   String.appendChar     String is full
    18   String.eraseLastChar  String is empty
    19   String.setInt         Insufficient string capacity
    20   Output.moveCursor     Illegal cursor location
    '''
