"""
Compiled backend integration for the FPGA emulator.

This module keeps the FPGA-specific I/O handling separate from the generic
accelerated engine path while sharing the compiled instruction stream format.
"""

import sys
from array import array

from .accelerator_common import FPGA_ACCEL_AVAILABLE as ACCEL_AVAILABLE
from .accelerator_common import RUN_CYCLES_ACCELERATED_FPGA, build_instruction_stream
from .engine import Engine, RAM_SIZE

LCD8_ADDR = 4104
LCD16_ADDR = 4105
RTP_ADDR = 4106
UART_TX_ADDR = 4098
CLEAR_TRIGGER = 4112
IO_MIN = 4096
IO_MAX = CLEAR_TRIGGER


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
        self.address_labels, self._inst_type, self._arg0, self._arg1 = build_instruction_stream(
            self.rom_raw, self.address_labels, self.filepath
        )
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

        cycle, pc, register_a, register_d, halted = RUN_CYCLES_ACCELERATED_FPGA(
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
