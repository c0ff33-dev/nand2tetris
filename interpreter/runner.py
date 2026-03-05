"""Nand2Tetris test runner — compiles, translates, assembles, and tests all projects."""

import os
import sys
import warnings
import multiprocessing
import subprocess
import glob as _glob

import assembler
import tester
import tokenizer
import analyzer
import compiler
from translator import Translator
from debugger import run


if __name__ == "__main__":
    """
    Projects 1-5: HDL, TST orchestration (HardwareSimulator/CPUEmulator), OUT matched to CMP truth table 
    Project 6:    ASM (assembler/interpreter) > HACK (python_hdl) matched against CMP binary
    Project 7-8:  VM (translator) > ASM // ASM > HACK as above
                  TST file (CPUEmulator/VMEmulator/tester) > OUT matched to CMP machine state
    Project 9-11: JACK > T_XML (CST) > XML (AST) > VM (tokenizer > analyzer > compiler) // VM > ASM > HACK as above
                  Only Project 10 has CST/AST solution XML files
    """
    import argparse

    parser = argparse.ArgumentParser(description="Nand2Tetris test runner")
    parser.add_argument("--debug", action="store_true", help="Enable verbose output")
    parser.add_argument("--no-lint", action="store_true", help="Skip ruff linting")
    parser.add_argument("--fpga", action="store_true", help="Also compile FPGA Jack programs (projects/13)")
    args = parser.parse_args()

    # lint
    if not args.no_lint:
        interpreter_dir = os.path.dirname(os.path.abspath(__file__))
        fmt = subprocess.run(["ruff", "format", interpreter_dir, "--check"], capture_output=True, text=True)
        lint = subprocess.run(["ruff", "check", interpreter_dir], capture_output=True, text=True)
        docs = subprocess.run(["pydoclint", interpreter_dir], capture_output=True, text=True)
        if fmt.returncode:
            print("ruff format:\n%s" % fmt.stdout.strip())
        if lint.returncode:
            print("ruff check:\n%s" % lint.stdout.strip())
        if docs.returncode:
            print("pydoclint:\n%s" % docs.stdout.strip())
        if fmt.returncode or lint.returncode or docs.returncode:
            raise SystemExit("Lint failed")

    from inputs import (
        jack_dirpaths,
        jack_filepaths,
        jack_filepath_lists,
        vm_dirpaths,
        vm_bootstrap_paths,
        vm_asm_filepaths,
        binary_asm_filepaths,
        hw_tst_files,
        cpu_tst_files,
        vm_tst_files,
    )

    vm_dirpaths = vm_dirpaths + vm_bootstrap_paths

    # init
    debug = args.debug

    # join FPGA lists before course compiler so they get .cc references too
    if args.fpga:
        from inputs import jack_fpga_dirpaths, jack_fpga_filepaths, jack_fpga_filepath_lists, jack_fpga_vm_dirpaths

        jack_dirpaths = jack_dirpaths + jack_fpga_dirpaths
        jack_filepaths = jack_filepaths + jack_fpga_filepaths
        jack_filepath_lists = jack_filepath_lists + jack_fpga_filepath_lists
        vm_dirpaths = vm_dirpaths + jack_fpga_vm_dirpaths

    # compile Jack to VM (course compiler)
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "JackCompiler.bat")
    else:
        cmd = os.path.join("..", "tools", "JackCompiler.sh")
    for jack_dir in jack_dirpaths:
        result = subprocess.run([cmd, jack_dir], capture_output=True, text=True)
        if result.stderr or result.returncode:
            raise RuntimeError(result.stderr)
        else:
            print("Course Compiler: %s" % result.stdout.strip())

    # rename course compiler .vm output to .cc for comparison (only files with matching .jack)
    for jack_dir in jack_dirpaths:
        for vm_file in _glob.glob(os.path.join(jack_dir, "*.vm")):
            jack_file = vm_file.replace(".vm", ".jack")
            if os.path.exists(jack_file):
                os.rename(vm_file, vm_file.replace(".vm", ".cc"))

    # tokenize / analyze Jack
    for filepath in jack_filepaths:
        tokenizer.main(filepath, debug=debug)
        analyzer.main(filepath, debug=debug)

    # compile Jack to VM (match against course compiler .cc references)
    compiler._compile(jack_filepath_lists, debug=debug)

    # translate VM to ASM (multiprocess)
    processes = []
    for vm_dir in vm_dirpaths:

        def _translate(vm_dir: str, vm_bootstrap_paths: list[str], debug: bool) -> None:
            t = Translator(debug=debug)
            t.translate(vm_dir, vm_bootstrap_paths)

        p = multiprocessing.Process(target=_translate, args=(vm_dir, vm_bootstrap_paths, debug))
        processes.append((vm_dir, p))
        p.start()

    failures = []
    for vm_dir, p in processes:
        p.join()
        if p.exitcode != 0:
            failures.append((vm_dir, p.exitcode))

    if failures:
        for dirpath, code in failures:
            print("FAILED: %s (exit code %d)" % (dirpath, code))
        raise RuntimeError("Translator: %d/%d translations failed" % (len(failures), len(processes)))

    # assemble all ASM to HACK and binary match if available
    fpga_asm_filepaths = []
    if args.fpga:
        fpga_asm_filepaths = [os.path.join(_dir, os.path.basename(_dir) + ".asm") for _dir in jack_fpga_vm_dirpaths]
    asm_filepaths = vm_asm_filepaths + binary_asm_filepaths + fpga_asm_filepaths
    for asm_filepath in asm_filepaths:
        assembler.assemble(asm_filepath, debug=debug)
    warnings.simplefilter("default")  # reset warning filter

    # load & execute modules (multiprocess)
    processes = []

    # run via interpreter
    for asm_filepath in binary_asm_filepaths:
        p = multiprocessing.Process(target=run, args=(asm_filepath,), kwargs={"debug": debug})
        processes.append((asm_filepath, p))
        p.start()

    for asm_filepath in vm_asm_filepaths:
        tst_filepath = asm_filepath.replace(".asm", ".tst")
        cmp_filepath = asm_filepath.replace(".asm", ".cmp")
        tst_params = tester.load_tst(tst_filepath, debug=debug)
        tst_params["compare"] = tester.load_cmp(cmp_filepath, debug=debug)

        p = multiprocessing.Process(target=run, args=(asm_filepath,), kwargs={"tst_params": tst_params, "debug": debug})
        processes.append((asm_filepath, p))
        p.start()

    # wait for all processes and check return codes
    failures = []
    for asm_filepath, p in processes:
        p.join()
        if p.exitcode != 0:
            failures.append((asm_filepath, p.exitcode))

    if failures:
        for filepath, code in failures:
            print("FAILED: %s (exit code %d)" % (filepath, code))
        raise RuntimeError("Interpreter: %d/%d runs failed" % (len(failures), len(processes)))

    # run hdl tests (HardwareSimulator)
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "HardwareSimulator.bat")
    else:
        cmd = os.path.join("..", "tools", "HardwareSimulator.sh")

    for test in hw_tst_files:
        print(r"Running: %s %s" % (cmd, test))
        result = subprocess.run([cmd, test], capture_output=True, text=True)
        if "End of script - Comparison ended successfully\n" != result.stdout and not result.stderr:
            raise RuntimeError(r"Error when running %s: %s" % (cmd, result.stderr))

        # different style of TST file, but the test has passed
        if test in (
            os.path.join("..", "projects", "05", "CPU-external.tst"),
            os.path.join("..", "projects", "05", "CPU.tst"),
        ):
            continue

        line = 0
        out_file = test.replace(".tst", ".out")
        cmp_file = test.replace(".tst", ".cmp")
        with open(out_file) as out:
            with open(cmp_file) as cmp:
                for index, (solution, current) in enumerate(zip(cmp, out)):
                    if solution != current:
                        raise AssertionError("%s mismatch after line %s" % (out_file, index))
                line += 1

    # run hack tests (CPUEmulator) -- shares CMP and OUT files with VMEmulator
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "CPUEmulator.bat")
    else:
        cmd = os.path.join("..", "tools", "CPUEmulator.sh")

    for test in cpu_tst_files:
        print(r"Running: %s %s" % (cmd, test))
        result = subprocess.run([cmd, test], capture_output=True, text=True)
        if "End of script - Comparison ended successfully\n" != result.stdout and not result.stderr:
            raise RuntimeError(r"Error when running %s: %s" % (cmd, result.stderr))

        line = 0
        out_file = test.replace(".tst", ".out")
        cmp_file = test.replace(".tst", ".cmp")
        with open(out_file) as out:
            with open(cmp_file) as cmp:
                for index, (solution, current) in enumerate(zip(cmp, out)):
                    if solution != current:
                        raise AssertionError("%s mismatch after line %s" % (out_file, index))
                line += 1

    # run VM tests (VMEmulator) -- shares CMP and OUT files with CPUEmulator
    if sys.platform.startswith("win"):
        cmd = os.path.join("..", "tools", "VMEmulator.bat")
    else:
        cmd = os.path.join("..", "tools", "VMEmulator.sh")

    for test in vm_tst_files:
        print(r"Running: %s %s" % (cmd, test))
        result = subprocess.run([cmd, test], capture_output=True, text=True)
        if result.stdout != "End of script - Comparison ended successfully\n":
            raise RuntimeError(r"Error when running %s: %s" % (cmd, result.stderr))

    # cleanup intermediate files (.cc course compiler refs, .out test outputs)
    for jack_dir in jack_dirpaths:
        for cc_file in _glob.glob(os.path.join(jack_dir, "*.cc")):
            os.remove(cc_file)
    for tst_list in (hw_tst_files, cpu_tst_files, vm_tst_files):
        for test in tst_list:
            out_file = test.replace(".tst", ".out")
            if os.path.exists(out_file):
                os.remove(out_file)
            # VME tests write to base-named .out (e.g. BasicTestVME.tst → BasicTest.out)
            base_out = out_file.replace("VME.out", ".out")
            if base_out != out_file and os.path.exists(base_out):
                os.remove(base_out)
