"""
Compiled backend integration for the FPGA emulator.

This module keeps the orchestration in emulator_fpga.py while providing an
optional compiled run_cycles accelerator with a safe Python fallback.
"""

import sys
from array import array
from importlib import util
from pathlib import Path

from engine import Engine, RAM_SIZE

try:
    from fpga_backend_ext import run_cycles_accelerated
except ImportError:
    run_cycles_accelerated = None
    for extension_path in (Path(__file__).resolve().parent.parent).glob("fpga_backend_ext*.so"):
        spec = util.spec_from_file_location("fpga_backend_ext", extension_path)
        if spec and spec.loader:
            module = util.module_from_spec(spec)
            spec.loader.exec_module(module)
            run_cycles_accelerated = module.run_cycles_accelerated
            break

ACCEL_AVAILABLE = run_cycles_accelerated is not None

LCD8_ADDR = 4104
LCD16_ADDR = 4105
RTP_ADDR = 4106
UART_TX_ADDR = 4098
CLEAR_TRIGGER = 4112
IO_MIN = 4096
IO_MAX = CLEAR_TRIGGER

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


class AcceleratedFpgaRAM:
    """
    Array-backed RAM proxy for the compiled FPGA backend.

    :param size: Number of addressable RAM words.
    :param lcd: LCD controller used for memory-mapped I/O.
    :param touch: Touch controller used for memory-mapped I/O.
    """

    def __init__(self, size: int, lcd: object, touch: object) -> None:
        self._data = array("i", [0]) * size
        self._lcd = lcd
        self._touch = touch

    def __getitem__(self, key: int | slice) -> int | array:
        # Fast path: skip I/O checks for the 99% of accesses outside I/O range
        try:
            if key < IO_MIN or key > IO_MAX:
                return self._data[key]
        except TypeError:
            return self._data[key]
        if key == LCD8_ADDR or key == LCD16_ADDR:
            return 0
        if key == RTP_ADDR:
            return self._touch.read()
        if key == UART_TX_ADDR:
            return 0
        return self._data[key]

    def __setitem__(self, key: int, value: int) -> None:
        if key < IO_MIN or key > IO_MAX:
            self._data[key] = value
            return
        if key == LCD8_ADDR:
            self._lcd.write_command(value)
        elif key == LCD16_ADDR:
            self._lcd.write_data(value)
        elif key == RTP_ADDR:
            self._touch.write(value)
        elif key == UART_TX_ADDR:
            if 0 < (value & 0x7F) < 128:
                sys.stdout.write(chr(value & 0x7F))
                sys.stdout.flush()
        elif key == CLEAR_TRIGGER:
            self._lcd.clear()
        else:
            self._data[key] = value

    def __len__(self) -> int:
        return len(self._data)


class AcceleratedFpgaEngine(Engine):
    """
    Engine wrapper that delegates the hot loop to the compiled FPGA backend.

    :param lcd: LCD controller used for memory-mapped I/O.
    :param touch: Touch controller used for memory-mapped I/O.
    :param ram_size: Number of addressable RAM words.
    """

    def __init__(self, lcd: object, touch: object, ram_size: int = RAM_SIZE) -> None:
        super().__init__(ram_size)
        self.lcd = lcd
        self.touch = touch
        self.ram = AcceleratedFpgaRAM(ram_size, lcd, touch)
        self._backend_ready = False
        self._inst_type = array("B")
        self._arg0 = array("i")
        self._arg1 = array("B")

    def decode(self) -> None:
        """
        Decode the Python engine view and invalidate the compiled backend cache.

        The compiled backend keeps its own compact numeric instruction stream and
        must be rebuilt after ROM patching or any other decode-triggering change.
        """
        super().decode()
        self._backend_ready = False

    def _prepare_backend(self) -> None:
        labels = dict(self.address_labels)
        inst_type = array("B")
        arg0 = array("i")
        arg1 = array("B")

        for src_line, raw_cmd in self.rom_raw:
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
                        value = _resolve_symbol_value(labels, label, self.filepath)
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

        self.address_labels = labels
        self._inst_type = inst_type
        self._arg0 = arg0
        self._arg1 = arg1
        self._backend_ready = True

    def run_cycles(self, n: int) -> int:
        """
        Execute up to n instruction cycles with the compiled FPGA backend.

        Falls back to the Python engine if the compiled module is unavailable.

        :param n: Maximum number of cycles to execute.
        :return: Number of cycles actually executed.
        """
        if not ACCEL_AVAILABLE:
            return super().run_cycles(n)
        if self.halted or n <= 0:
            return 0
        if not self._backend_ready:
            self._prepare_backend()

        cycle, pc, register_a, register_d, halted = run_cycles_accelerated(
            n,
            self.pc,
            self.A,
            self.D,
            self.ram._data,
            self._inst_type,
            self._arg0,
            self._arg1,
            self.lcd,
            self.touch,
            self.filepath,
        )
        self.pc = pc
        self.A = register_a
        self.D = register_d
        self.halted = halted
        return cycle
