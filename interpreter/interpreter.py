""""
HACK CPU emulator and interactive debugger for Nand2Tetris
"""
import re
import os
import sys

import tty
import termios
from rich.console import Console
from rich.table import Table
console = Console()
step = False


def process_debug(gui_log, debug_cmd, hw, src_line, breakpoints, call_tree, func_breakpoints):
    global step, console

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

    # display call tree (indented by depth)
    call_lines = ""
    for depth, func_name in enumerate(call_tree):
        call_lines += f"{'  ' * depth}→ {func_name}\n"
    if not call_lines:
        call_lines = "(empty)\n"
    row_calls = "\n" + title("Call Tree", 0) + call_lines

    # display stack contents (RAM[256..SP-1], most recent at top, max 5)
    sp = hw["RAM"][0]
    stack_entries = hw["RAM"][256:sp] if sp > 256 else []
    max_stack_display = 5
    if len(stack_entries) > max_stack_display:
        stack_entries = stack_entries[-max_stack_display:]
        stack_start = sp - max_stack_display
    else:
        stack_start = 256
    stack_lines = ""
    for i, val in enumerate(stack_entries):
        addr = stack_start + i
        stack_lines += f"{addr}: {val}\n"
    if not stack_lines:
        stack_lines = "(empty)"
    row_stack = "\n" + title("Stack", 0) + stack_lines

    # Determine register highlighting based on instruction type
    a_style = d_style = m_style = None
    if debug_cmd.startswith("@"):
        a_style = "bold yellow"
    elif ";" in debug_cmd:
        # jump: A = target (green), D = condition (cyan) unless unconditional
        a_style = "bold green"
        if not debug_cmd.startswith("0;"):
            d_style = "bold cyan"
    elif "=" in debug_cmd:
        dest = debug_cmd.split("=")[0]
        if "A" in dest: a_style = "bold yellow"
        if "D" in dest: d_style = "bold yellow"
        if "M" in dest: m_style = "bold yellow"
    else:
        raise ValueError(f"Unexpected asm command: {debug_cmd}")

    def reg(label, value, style=None):
        val = f"[{style}]{value}[/{style}]" if style else str(value)
        return f"[red]{label}[/red] {val}"

    ram = hw["RAM"]
    row_reg = title("Registers", 0) + "\n".join([
        reg("A", hw["A"], a_style),
        reg("D", hw["D"], d_style),
        reg("M", ram[hw["A"]], m_style),
        reg("R0(SP)",   ram[0]),  reg("R1(LCL)",  ram[1]),
        reg("R2(ARG)",  ram[2]),  reg("R3(THIS)", ram[3]),
        reg("R4(THAT)", ram[4]),
        reg("R5",  ram[5]),  reg("R6",  ram[6]),
        reg("R7",  ram[7]),  reg("R8",  ram[8]),
        reg("R9",  ram[9]),
        reg("R10", ram[10]), reg("R11", ram[11]),
        reg("R12", ram[12]), reg("R13", ram[13]),
        reg("R14", ram[14]),
        reg("R15", ram[15]),
    ])

    row_help = title("Keys", 0) + "\n".join([
        "[bold]q[/bold] quit",
        "[bold]p[/bold] run",
        "[bold]n[/bold] step",
        "[bold]i[/bold] peek\n\n",
    ])

    # display call tree (indented by depth)
    call_lines = ""
    for depth, func_name in enumerate(call_tree):
        call_lines += f"{'  ' * depth}→ {func_name}\n"
    if not call_lines:
        call_lines = "(empty)\n"
    row_calls = title("Call Tree", 0) + call_lines

    table.add_row(row_code, row_reg, row_help + row_calls + row_stack)

    # check function breakpoints (break when entering the function, not at call site)
    func_break_hit = False
    if func_breakpoints:
        for fb in func_breakpoints:
            if "// (%s)" % fb in debug_cmd:
                func_break_hit = True
                break

    if src_line in breakpoints or step or breakpoints == [-1] or func_break_hit:
        console.print(table)

        def read_key():
            """Read a single keypress using raw terminal mode (works on WSL/Wayland/SSH)."""
            fd = sys.stdin.fileno()
            old_settings = termios.tcgetattr(fd)
            try:
                tty.setraw(fd)
                return sys.stdin.read(1)
            finally:
                termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)

        while True:
            ch = read_key()
            if ch == 'q':
                os._exit(0)
            elif ch == 'p':
                step = False
                break
            elif ch == 'n':
                step = True
                break
            elif ch == 'i':
                addr = input("peek: ")
                print(f"RAM[{addr}] = {hw['RAM'][int(addr)]}")


def run(asm_filepath, tst_params=None, breakpoints=[], func_breakpoints=[], debug=False):
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
        "MAX": 1000,  # ~10M for full system init in Jack OS tests
    }

    # load test params
    if tst_params is not None:
        hw["RAM"] = tst_params["RAM"]
        hw["MAX"] = tst_params["MAX"]

    # unlimited cycles when setting breakpoints
    if breakpoints or func_breakpoints:
        hw["MAX"] = float('inf')

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
        "TEMP": 5,  # 5-12 incl (volatile) -- undefined on call (temp 1-5 are currently unused in compiled VM code)
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
        # the non-standard behaviour of these ports that don't behave like RAM is not emulated!
        "LED":     4096,
        "BUT":     4097,
        "UART_TX": 4098,
        "UART_RX": 4099,
        "SPI":     4100,
        "SRAM_A":  4101,
        "SRAM_D":  4102,
        "GO":      4103,
        "LCD8":    4104,
        "LCD16":   4105,
        "RTP":     4106,
        "DEBUG0":  4107,
        "DEBUG1":  4108,
        "DEBUG2":  4109,
        "DEBUG3":  4110,
        "DEBUG4":  4111,
    }

    # New A/C instruction spec:
    # original A instructions: 0x0-7FFF (32K words)
    # original C instructions: 0x8000-0xFFFF (32K words, 8K reserved)
    # new A instructions: 0x0-0xDFFF (56k words)
    # new C instructions: 0xE000-FFFF (8K words)

    with open(asm_filepath, "r") as asm_file:
        asm_content = asm_file.readlines()

    # symbol & formatting pre-processing
    line = 0
    debug_asm = []
    raw_asm = []
    symbol = False
    pending_comment = None

    for src_line, debug_cmd in enumerate(asm_content, start=1):
        debug_cmd = debug_cmd.strip()  # remove indentation / trailing whitespace
        if debug_cmd == "":
            continue  # empty line
        elif debug_cmd[0] == "/":
            # preserve call/return/function comments for call tree tracking
            if debug_cmd.startswith("// call ") or debug_cmd.startswith("// return") or debug_cmd.startswith("// function "):
                pending_comment = debug_cmd
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
            # attach pending call/return/function comment
            if pending_comment:
                debug_cmd += " %s" % pending_comment
                pending_comment = None
            line += 1

        debug_asm.append([src_line, debug_cmd])  # preserve comments
        raw_asm.append([src_line, raw_cmd])  # code only

    hw["ROM"] = {"raw": raw_asm, "debug": debug_asm}

    # if ASSERTs are present, ensure proper bootstrap and enough cycles
    expected_asserts = sum(1 for d in debug_asm if '// ASSERT ' in d[1])
    if expected_asserts > 0:
        if hw["MAX"] < 20000000:
            hw["MAX"] = 20000000

    # runtime parsing
    cycle = 0
    call_tree = []
    assert_pass = assert_fail = 0
    while cycle < hw["MAX"] and hw["PC"] < len(hw["ROM"]["raw"]):
        raw_cmd = hw["ROM"]["raw"][hw["PC"]][1]
        debug_cmd = hw["ROM"]["debug"][hw["PC"]][1]
        src_line = hw["ROM"]["raw"][hw["PC"]][0]

        # escape hatch: break out of Sys.halt infinite loop
        if raw_cmd == "@Sys.halt":
            break

        # trap Sys.error before it enters an infinite loop
        if raw_cmd == "@Sys.error":
            raise RuntimeError("Interpreter: Sys.error() called @ src_line %d %s" % (src_line, asm_filepath))

        if hw["ROM"]["raw"][hw["PC"]][0] != hw["ROM"]["debug"][hw["PC"]][0]:
            raise ValueError("Interpreter: Debug/Raw line number mismatch! %s" % asm_filepath)           

        if raw_cmd[0] == "(":
            raise ValueError("Interpreter: Symbols should already be parsed out! %s" % asm_filepath)

        # evaluate ASSERT REACHABLE pre-execution
        if '// ASSERT REACHABLE' in debug_cmd:
            assert_pass += 1

        # @address assignment
        if raw_cmd[0] == "@":
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
                        raise OverflowError("Interpreter: Statics were about to overflow into the stack! %s" % asm_filepath)
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
                dst = raw_cmd[:2]
                eval_cmd = raw_cmd[3:]
            elif raw_cmd[3] == "=":  # XYZ=X
                # will never be tested with translator generated asm
                dst = raw_cmd[:3]
                eval_cmd = raw_cmd[4:]
            else:
                raise ValueError("Interpreter: Unexpected command: %s %s %s %s %s" %
                                   (hw["PC"], raw_cmd, "---", debug_cmd, asm_filepath))

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
                    hw["RAM"][hw["A"]] = eval_result
                if "A" in dst:
                    hw["A"] = eval_result
                if "D" in dst:
                    hw["D"] = eval_result
                
                if not any(x in dst for x in ["A", "D", "M"]):
                    raise ValueError("Interpreter: Unexpected dst in command: %s %s %s %s %s" % 
                                       (hw["PC"], raw_cmd, "---", debug_cmd, asm_filepath))
                
                hw["PC"] += 1  # advance to next instruction
            else:
                raise ValueError("Interpreter: Unexpected command: %s %s %s %s %s" %
                                   (hw["PC"], raw_cmd, "---", debug_cmd, asm_filepath))

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
                    raise ValueError("Interpreter: Unexpected jump command: %s %s %s %s %s" %
                                       (hw["PC"], raw_cmd, "---", debug_cmd, asm_filepath))

                if jump:
                    hw["PC"] = hw["A"]  # execute the jump
                else:
                    hw["PC"] += 1  # fall through to next instruction
            else:
                raise ValueError("Interpreter: Unexpected command: %s %s %s %s %s" %
                                   (hw["PC"], raw_cmd, "---", debug_cmd, asm_filepath))
        else:
            raise ValueError("Interpreter: Unexpected command: %s %s %s %s %s" % (hw["PC"], raw_cmd, "---", debug_cmd, asm_filepath))

        # track call tree from translator comments
        if '// call ' in debug_cmd:
            func = debug_cmd.split('// call ')[1].split(' //')[0].rsplit(' ', 1)[0]
            call_tree.append(func)
        elif '// return' in debug_cmd and call_tree: # FIXME: I don't think this is sufficient/accurate anymore
            call_tree.pop()

        #  render debug interface
        if breakpoints or func_breakpoints:
            process_debug(gui_log, debug_cmd, hw, src_line, breakpoints, call_tree, func_breakpoints)

        # evaluate ASSERT directives (post-execution)
        if '// ASSERT ' in debug_cmd:
            assert_text = debug_cmd.split('// ASSERT ')[1].strip()
            if assert_text == 'REACHABLE':
                pass  # handled pre-execution above
            else:
                match = re.match(r'RAM\[(\d+)\]\s*=\s*(-?\d+)', assert_text)
                if match:
                    addr, expected = int(match.group(1)), int(match.group(2))
                    actual = hw["RAM"][addr]
                    if actual != expected:
                        assert_fail += 1
                        print("ASSERT FAILED: RAM[%d] = %d (expected %d) at PC=%d %s"
                              % (addr, actual, expected, hw["PC"]-1, asm_filepath))
                    else:
                        assert_pass += 1

        cycle += 1  # always advance clock cycle

    # program end
    if hw["PC"] == len(hw["ROM"]["raw"]):
        if debug:
            print("EOF reached: %s" % asm_filepath)
    elif cycle == hw["MAX"]:
        if debug:
            print("Cycle limit reached: %s" % asm_filepath)

    # report ASSERT results
    if expected_asserts > 0:
        evaluated = assert_pass + assert_fail
        if evaluated == 0:
            raise AssertionError("ASSERT: %d asserts in ROM but none were reached %s" % (expected_asserts, asm_filepath))
        elif evaluated < expected_asserts:
            raise AssertionError("ASSERT: only %d/%d asserts were reached %s" % (evaluated, expected_asserts, asm_filepath))
        if debug:
            print("\tASSERT: %d/%d passed, halted @ cycle %d" % (assert_pass, expected_asserts, cycle))
        if assert_fail > 0:
            raise AssertionError("ASSERT: %d/%d failed %s" % (assert_fail, expected_asserts, asm_filepath))

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
            raise AssertionError("Interpreter: Test results did not match for %s" % asm_filepath)


if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser(description="Nand2Tetris HACK CPU emulator")
    parser.add_argument('file', help='Path to .asm file to execute')
    parser.add_argument('--break', dest='breakpoints', nargs='+', default=[],
                        help='Breakpoints: line numbers or function names (e.g. --break 42 Math.init)')
    parser.add_argument('--debug', action='store_true', help='Enable verbose output')
    args = parser.parse_args()

    # split into line breakpoints (int) and function breakpoints (str)
    line_breaks = []
    func_breaks = []
    for bp in args.breakpoints:
        if bp.lstrip('-').isnumeric():
            line_breaks.append(int(bp))
        else:
            func_breaks.append(bp)

    run(args.file, breakpoints=line_breaks, func_breakpoints=func_breaks, debug=args.debug)