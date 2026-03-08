"""
Shared helpers for the optional compiled engine accelerators.
"""

from array import array
from importlib import import_module, util
from itertools import chain
from pathlib import Path

EXTENSION_BASENAME = "fpga_backend_ext"
PACKAGE_NAME = Path(__file__).resolve().parent.name

INST_A = 0
INST_CDEST = 1
INST_CJMP = 2
INST_HALT = 3
INST_ERROR = 4

DEST_M = 1
DEST_A = 2
DEST_D = 4

COMP_ZERO = 0
COMP_ONE = 1
COMP_NEG_ONE = 2
COMP_D = 3
COMP_X = 4
COMP_NOT_D = 5
COMP_NOT_X = 6
COMP_NEG_D = 7
COMP_NEG_X = 8
COMP_D_PLUS_1 = 9
COMP_X_PLUS_1 = 10
COMP_D_MINUS_1 = 11
COMP_X_MINUS_1 = 12
COMP_D_PLUS_X = 13
COMP_D_MINUS_X = 14
COMP_X_MINUS_D = 15
COMP_D_AND_X = 16
COMP_D_OR_X = 17
COMP_USE_M = 32

COMP_CODES = {
    "0": COMP_ZERO,
    "1": COMP_ONE,
    "-1": COMP_NEG_ONE,
    "D": COMP_D,
    "A": COMP_X,
    "M": COMP_X | COMP_USE_M,
    "!D": COMP_NOT_D,
    "!A": COMP_NOT_X,
    "!M": COMP_NOT_X | COMP_USE_M,
    "-D": COMP_NEG_D,
    "-A": COMP_NEG_X,
    "-M": COMP_NEG_X | COMP_USE_M,
    "D+1": COMP_D_PLUS_1,
    "1+D": COMP_D_PLUS_1,
    "A+1": COMP_X_PLUS_1,
    "1+A": COMP_X_PLUS_1,
    "M+1": COMP_X_PLUS_1 | COMP_USE_M,
    "1+M": COMP_X_PLUS_1 | COMP_USE_M,
    "D-1": COMP_D_MINUS_1,
    "A-1": COMP_X_MINUS_1,
    "M-1": COMP_X_MINUS_1 | COMP_USE_M,
    "D+A": COMP_D_PLUS_X,
    "A+D": COMP_D_PLUS_X,
    "D+M": COMP_D_PLUS_X | COMP_USE_M,
    "M+D": COMP_D_PLUS_X | COMP_USE_M,
    "D-A": COMP_D_MINUS_X,
    "D-M": COMP_D_MINUS_X | COMP_USE_M,
    "A-D": COMP_X_MINUS_D,
    "M-D": COMP_X_MINUS_D | COMP_USE_M,
    "D&A": COMP_D_AND_X,
    "A&D": COMP_D_AND_X,
    "D&M": COMP_D_AND_X | COMP_USE_M,
    "M&D": COMP_D_AND_X | COMP_USE_M,
    "D|A": COMP_D_OR_X,
    "A|D": COMP_D_OR_X,
    "D|M": COMP_D_OR_X | COMP_USE_M,
    "M|D": COMP_D_OR_X | COMP_USE_M,
}

JUMP_GT = 1
JUMP_GE = 2
JUMP_EQ = 3
JUMP_NE = 4
JUMP_LT = 5
JUMP_LE = 6
JUMP_MP = 7

JUMP_CODES = {
    "JGT": JUMP_GT,
    "JGE": JUMP_GE,
    "JEQ": JUMP_EQ,
    "JNE": JUMP_NE,
    "JLT": JUMP_LT,
    "JLE": JUMP_LE,
    "JMP": JUMP_MP,
}


def _load_extension_functions() -> tuple[object | None, object | None]:
    """Load the compiled accelerator entry points when available."""
    module = None
    try:
        imported_module = import_module(f"{PACKAGE_NAME}.{EXTENSION_BASENAME}")
    except ImportError:
        imported_module = None

    if imported_module is not None:
        module = imported_module
    else:
        package_dir = Path(__file__).resolve().parent
        interpreter_dir = package_dir.parent
        repo_root = interpreter_dir.parent
        candidates = {
            path.resolve()
            for path in chain(
                package_dir.glob(f"{EXTENSION_BASENAME}*.so"),
                interpreter_dir.glob(f"{EXTENSION_BASENAME}*.so"),
                repo_root.glob(f"{EXTENSION_BASENAME}*.so"),
                (repo_root / "build").glob(f"**/{EXTENSION_BASENAME}*.so"),
            )
        }
        module_name = f"{PACKAGE_NAME}.{EXTENSION_BASENAME}"
        for extension_path in sorted(candidates, key=lambda path: path.stat().st_mtime, reverse=True):
            spec = util.spec_from_file_location(module_name, extension_path)
            if spec and spec.loader:
                module = util.module_from_spec(spec)
                spec.loader.exec_module(module)
                break

    if module is None:
        return (None, None)

    plain = getattr(module, "run_cycles_accelerated_plain", None)
    fpga = getattr(module, "run_cycles_accelerated_fpga", None)
    if fpga is None:
        fpga = getattr(module, "run_cycles_accelerated", None)
    return (plain, fpga)


def _dest_mask(dest: str) -> int:
    mask = 0
    if "M" in dest:
        mask |= DEST_M
    if "A" in dest:
        mask |= DEST_A
    if "D" in dest:
        mask |= DEST_D
    return mask


def _resolve_symbol_value(labels: dict[str, int], label: str, filepath: str | None) -> int:
    if label in labels:
        return labels[label]
    labels["BASE"] += 1
    if labels["BASE"] >= 255:
        raise OverflowError("Engine: Statics overflow! %s" % filepath)
    labels[label] = labels["BASE"]
    return labels[label]


def build_instruction_stream(
    rom_raw: list[list[int | str]] | list[tuple[int, str]],
    address_labels: dict[str, int],
    filepath: str | None,
) -> tuple[dict[str, int], array, array, array]:
    """
    Convert decoded ROM text into the compact numeric instruction stream used by Cython.

    :param rom_raw: Raw ROM instructions as loaded by Engine.
    :param address_labels: Current symbol table.
    :param filepath: Source file path used in runtime error messages.
    :return: Updated labels plus instruction type/operand arrays.
    """
    labels = dict(address_labels)
    inst_type = array("B")
    arg0 = array("i")
    arg1 = array("B")

    for src_line, raw_cmd in rom_raw:
        if raw_cmd[0] == "@":
            if raw_cmd == "@Sys.halt":
                inst_type.append(INST_HALT)
                arg0.append(0)
                arg1.append(0)
            elif raw_cmd == "@Sys.error":
                inst_type.append(INST_ERROR)
                arg0.append(src_line)
                arg1.append(0)
            else:
                label = raw_cmd[1:]
                if label[0].isnumeric():
                    value = int(label)
                else:
                    value = _resolve_symbol_value(labels, label, filepath)
                inst_type.append(INST_A)
                arg0.append(value)
                arg1.append(0)
        elif "=" in raw_cmd:
            eq = raw_cmd.index("=")
            inst_type.append(INST_CDEST)
            arg0.append(COMP_CODES[raw_cmd[eq + 1 :]])
            arg1.append(_dest_mask(raw_cmd[:eq]))
        elif ";" in raw_cmd:
            inst_type.append(INST_CJMP)
            arg0.append(JUMP_CODES[raw_cmd[2:]])
            arg1.append(0)
        else:
            raise ValueError("decode: Unexpected command: %s" % raw_cmd)

    return (labels, inst_type, arg0, arg1)


RUN_CYCLES_ACCELERATED_PLAIN, RUN_CYCLES_ACCELERATED_FPGA = _load_extension_functions()
ENGINE_ACCEL_AVAILABLE = RUN_CYCLES_ACCELERATED_PLAIN is not None
FPGA_ACCEL_AVAILABLE = RUN_CYCLES_ACCELERATED_FPGA is not None
