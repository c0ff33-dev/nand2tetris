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
from engine import Engine
console = Console()
step = False


def process_debug(gui_log, debug_cmd, engine, src_line, call_tree):
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
        prefix = "" if depth == 0 else f"{' ' * depth}→"
        call_lines += f"{prefix} {func_name}\n" if prefix else f"{func_name}\n"
    if not call_lines:
        call_lines = "(empty)\n"
    row_calls = "\n" + title("Call Tree", 0) + call_lines

    # display stack contents (RAM[256..SP-1], most recent at top, max 5)
    sp = engine.ram[0]
    stack_entries = engine.ram[256:sp] if sp > 256 else []
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

    row_reg = title("Registers", 0) + "\n".join([
        reg("A", engine.A, a_style),
        reg("D", engine.D, d_style),
        reg("M", engine.M, m_style),
        reg("R0(SP)",   engine.ram[0]),
        reg("R1(LCL)",  engine.ram[1]),
        reg("R2(ARG)",  engine.ram[2]),
        reg("R3(THIS)", engine.ram[3]),
        reg("R4(THAT)", engine.ram[4]),
        reg("R5",  engine.ram[5]),
        reg("R6",  engine.ram[6]),
        reg("R7",  engine.ram[7]),
        reg("R8",  engine.ram[8]),
        reg("R9",  engine.ram[9]),
        reg("R10", engine.ram[10]),
        reg("R11", engine.ram[11]),
        reg("R12", engine.ram[12]),
        reg("R13", engine.ram[13]),
        reg("R14", engine.ram[14]),
        reg("R15", engine.ram[15]),
    ])

    row_help = title("Keys", 0) + "\n".join([
        "[bold]q[/bold] quit",
        "[bold]p[/bold] run",
        "[bold]n[/bold] step",
        "[bold]i[/bold] peek\n\n",
    ])

    table.add_row(row_code, row_reg, row_help + row_calls + row_stack)

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
            print(f"RAM[{addr}] = {engine.ram[int(addr)]}")


def run(asm_filepath, tst_params=None, breakpoints=[], func_breakpoints=[], debug=False):
    gui_log = []

    # initialize engine
    engine = Engine()

    max_cycles = 1000  # ~20M for full system init in Jack OS tests

    # load test params
    if tst_params is not None:
        engine.ram = tst_params["RAM"]
        max_cycles = tst_params["MAX"]

    # unlimited cycles when setting breakpoints
    if breakpoints or func_breakpoints:
        max_cycles = float('inf')

    print('Interpreter: Running %s' % asm_filepath)

    engine.load(asm_filepath)

    # if ASSERTs are present, ensure proper bootstrap and enough cycles
    expected_asserts = sum(1 for d in engine.rom_debug if '// ASSERT ' in d[1])
    if expected_asserts > 0:
        if max_cycles < 20000000:
            max_cycles = 20000000

    # runtime
    cycle = 0
    call_tree = []
    assert_pass = assert_fail = 0
    while cycle < max_cycles:
        result = engine.step()
        if result is None:
            break
        src_line, raw_cmd, debug_cmd = result

        # inject Sys.init at top of call tree on bootstrap
        if not call_tree and '// bootstrap: initialize SP' in debug_cmd:
            call_tree.append('Sys.init')

        if engine.halted:
            break

        # evaluate ASSERT REACHABLE pre-execution
        if '// ASSERT REACHABLE' in debug_cmd:
            assert_pass += 1

        # track call tree from translator comments
        if '// call ' in debug_cmd:
            func = debug_cmd.split('// call ')[1].split(' //')[0].rsplit(' ', 1)[0]
            call_tree.append(func)
        elif '// return' in debug_cmd and call_tree:
            call_tree.pop()

        #  render debug interface
        if breakpoints or func_breakpoints:
            func_break_hit = False
            if func_breakpoints:
                for fb in func_breakpoints:
                    if "// (%s)" % fb in debug_cmd:
                        func_break_hit = True
                        break
            if src_line in breakpoints or step or breakpoints == [-1] or func_break_hit:
                process_debug(gui_log, debug_cmd, engine, src_line, call_tree)

        # evaluate ASSERT directives (post-execution)
        if '// ASSERT ' in debug_cmd:
            assert_text = debug_cmd.split('// ASSERT ')[1].strip()
            if assert_text == 'REACHABLE':
                pass  # handled above
            else:
                match = re.match(r'RAM\[(\d+)\]\s*=\s*(-?\d+)', assert_text)
                if match:
                    addr, expected = int(match.group(1)), int(match.group(2))
                    actual = engine.ram[addr]
                    if actual != expected:
                        assert_fail += 1
                        print("ASSERT FAILED: RAM[%d] = %d (expected %d) at PC=%d %s"
                              % (addr, actual, expected, engine.pc-1, asm_filepath))
                    else:
                        assert_pass += 1

        cycle += 1  # always advance clock cycle

    # program end
    if engine.halted:
        pass  # normal Sys.halt termination
    elif engine.pc >= len(engine.rom_raw):
        if debug:
            print("EOF reached: %s" % asm_filepath)
    elif cycle >= max_cycles:
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
            result_dict[address] = engine.ram[address]

        if debug:
            print(result_dict)
            print(tst_params["compare"])

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