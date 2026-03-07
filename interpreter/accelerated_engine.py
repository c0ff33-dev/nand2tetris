"""
Optional compiled accelerator for the standard HACK engine.
"""

from array import array

from accelerator_common import ENGINE_ACCEL_AVAILABLE as ACCEL_AVAILABLE
from accelerator_common import RUN_CYCLES_ACCELERATED_PLAIN, build_instruction_stream
from engine import Engine, RAM_SIZE


class AcceleratedEngine(Engine):
    """
    Engine wrapper that delegates the hot loop to the compiled plain-memory backend.

    :param ram_size: Number of addressable RAM words.
    """

    def __init__(self, ram_size: int = RAM_SIZE) -> None:
        super().__init__(ram_size)
        self.ram = array("i", [0]) * ram_size
        self._backend_ready = False
        self._inst_type = array("B")
        self._arg0 = array("i")
        self._arg1 = array("B")

    def decode(self) -> None:
        """
        Decode the Python engine view and invalidate the compiled backend cache.
        """
        super().decode()
        self._backend_ready = False

    def _prepare_backend(self) -> None:
        """
        Build the compact instruction arrays consumed by the compiled backend.
        """
        self.address_labels, self._inst_type, self._arg0, self._arg1 = build_instruction_stream(
            self.rom_raw, self.address_labels, self.filepath
        )
        self._backend_ready = True

    def run_cycles(self, n: int) -> int:
        """
        Execute up to n instruction cycles with the compiled backend when available.

        :param n: Maximum number of cycles to execute.
        :return: Number of cycles actually executed.
        """
        if not ACCEL_AVAILABLE:
            return super().run_cycles(n)
        if self.halted or n <= 0:
            return 0
        if not self._backend_ready:
            self._prepare_backend()

        cycle, pc, register_a, register_d, halted = RUN_CYCLES_ACCELERATED_PLAIN(
            n,
            self.pc,
            self.A,
            self.D,
            self.ram,
            self._inst_type,
            self._arg0,
            self._arg1,
            self.filepath,
        )
        self.pc = pc
        self.A = register_a
        self.D = register_d
        self.halted = halted
        return cycle
