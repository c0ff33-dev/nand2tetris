# cython: language_level=3, boundscheck=False, wraparound=False, initializedcheck=False, cdivision=True

"""Compiled FPGA emulator hot loop."""

import sys

cdef int LCD8_ADDR = 4104
cdef int LCD16_ADDR = 4105
cdef int RTP_ADDR = 4106
cdef int UART_TX_ADDR = 4098
cdef int CLEAR_TRIGGER = 4112
cdef int IO_MIN = 4096
cdef int IO_MAX = CLEAR_TRIGGER

cdef int INST_A = 0
cdef int INST_CDEST = 1
cdef int INST_CJMP = 2
cdef int INST_HALT = 3
cdef int INST_ERROR = 4

cdef int DEST_M = 1
cdef int DEST_A = 2
cdef int DEST_D = 4

cdef int COMP_ZERO = 0
cdef int COMP_ONE = 1
cdef int COMP_NEG_ONE = 2
cdef int COMP_D = 3
cdef int COMP_X = 4
cdef int COMP_NOT_D = 5
cdef int COMP_NOT_X = 6
cdef int COMP_NEG_D = 7
cdef int COMP_NEG_X = 8
cdef int COMP_D_PLUS_1 = 9
cdef int COMP_X_PLUS_1 = 10
cdef int COMP_D_MINUS_1 = 11
cdef int COMP_X_MINUS_1 = 12
cdef int COMP_D_PLUS_X = 13
cdef int COMP_D_MINUS_X = 14
cdef int COMP_X_MINUS_D = 15
cdef int COMP_D_AND_X = 16
cdef int COMP_D_OR_X = 17
cdef int COMP_USE_M = 32
cdef int COMP_MASK = 31

cdef int JUMP_GT = 1
cdef int JUMP_GE = 2
cdef int JUMP_EQ = 3
cdef int JUMP_NE = 4
cdef int JUMP_LT = 5
cdef int JUMP_LE = 6
cdef int JUMP_MP = 7


cdef inline int _normalize16(int value):
    return ((value + 32768) & 65535) - 32768


cdef inline int _eval_comp(int comp_kind, int register_d, int x):
    if comp_kind == COMP_ZERO:
        return 0
    elif comp_kind == COMP_ONE:
        return 1
    elif comp_kind == COMP_NEG_ONE:
        return -1
    elif comp_kind == COMP_D:
        return register_d
    elif comp_kind == COMP_X:
        return x
    elif comp_kind == COMP_NOT_D:
        return ~register_d
    elif comp_kind == COMP_NOT_X:
        return ~x
    elif comp_kind == COMP_NEG_D:
        return -register_d
    elif comp_kind == COMP_NEG_X:
        return -x
    elif comp_kind == COMP_D_PLUS_1:
        return register_d + 1
    elif comp_kind == COMP_X_PLUS_1:
        return x + 1
    elif comp_kind == COMP_D_MINUS_1:
        return register_d - 1
    elif comp_kind == COMP_X_MINUS_1:
        return x - 1
    elif comp_kind == COMP_D_PLUS_X:
        return register_d + x
    elif comp_kind == COMP_D_MINUS_X:
        return register_d - x
    elif comp_kind == COMP_X_MINUS_D:
        return x - register_d
    elif comp_kind == COMP_D_AND_X:
        return register_d & x
    return register_d | x


def run_cycles_accelerated_plain(
    int n,
    int pc,
    int register_a,
    int register_d,
    object ram_obj,
    object inst_type_obj,
    object arg0_obj,
    object arg1_obj,
    object filepath,
):
    """Execute up to n cycles for the plain HACK engine."""
    cdef int[:] ram = ram_obj
    cdef unsigned char[:] inst_type = inst_type_obj
    cdef int[:] arg0 = arg0_obj
    cdef unsigned char[:] arg1 = arg1_obj
    cdef Py_ssize_t dec_len = inst_type.shape[0]
    cdef int cycle = 0
    cdef int instruction
    cdef int addr
    cdef int x
    cdef int comp
    cdef int dst
    cdef int jump
    cdef int result
    cdef bint halted = False

    while cycle < n:
        if pc >= dec_len:
            break

        instruction = inst_type[pc]
        if instruction == INST_CDEST:
            comp = arg0[pc]
            dst = arg1[pc]
            addr = register_a
            if comp & COMP_USE_M:
                x = ram[addr]
            else:
                x = register_a

            result = _normalize16(_eval_comp(comp & COMP_MASK, register_d, x))
            if dst & DEST_M:
                ram[addr] = result
            if dst & DEST_A:
                register_a = result
            if dst & DEST_D:
                register_d = result
            pc += 1

        elif instruction == INST_A:
            register_a = arg0[pc]
            pc += 1

        elif instruction == INST_CJMP:
            jump = arg0[pc]
            if jump == JUMP_GT:
                pc = register_a if register_d > 0 else pc + 1
            elif jump == JUMP_GE:
                pc = register_a if register_d >= 0 else pc + 1
            elif jump == JUMP_EQ:
                pc = register_a if register_d == 0 else pc + 1
            elif jump == JUMP_NE:
                pc = register_a if register_d != 0 else pc + 1
            elif jump == JUMP_LT:
                pc = register_a if register_d < 0 else pc + 1
            elif jump == JUMP_LE:
                pc = register_a if register_d <= 0 else pc + 1
            else:
                pc = register_a

        elif instruction == INST_HALT:
            halted = True
            break

        else:
            raise RuntimeError("Engine: Sys.error() @ src_line %d %s" % (arg0[pc], filepath))

        cycle += 1

    return cycle, pc, register_a, register_d, halted


def run_cycles_accelerated_fpga(
    int n,
    int pc,
    int register_a,
    int register_d,
    object ram_obj,
    object inst_type_obj,
    object arg0_obj,
    object arg1_obj,
    object lcd,
    object touch,
    object filepath,
):
    """Execute up to n cycles and return updated register state."""
    cdef int[:] ram = ram_obj
    cdef unsigned char[:] inst_type = inst_type_obj
    cdef int[:] arg0 = arg0_obj
    cdef unsigned char[:] arg1 = arg1_obj
    cdef Py_ssize_t dec_len = inst_type.shape[0]
    cdef int cycle = 0
    cdef int instruction
    cdef int addr
    cdef int m
    cdef int x
    cdef int comp
    cdef int comp_kind
    cdef int dst
    cdef int jump
    cdef int result
    cdef int value
    cdef bint halted = False
    cdef object lcd_write_command = lcd.write_command
    cdef object lcd_write_data = lcd.write_data
    cdef object lcd_clear = lcd.clear
    cdef object touch_read = touch.read
    cdef object touch_write = touch.write
    cdef object stdout_write = sys.stdout.write
    cdef object stdout_flush = sys.stdout.flush

    while cycle < n:
        if pc >= dec_len:
            break

        instruction = inst_type[pc]
        if instruction == INST_CDEST:
            comp = arg0[pc]
            dst = arg1[pc]
            addr = register_a
            if comp & COMP_USE_M:
                if addr < IO_MIN or addr > IO_MAX:
                    m = ram[addr]
                elif addr == RTP_ADDR:
                    m = <int>touch_read()
                elif addr == LCD8_ADDR or addr == LCD16_ADDR or addr == UART_TX_ADDR:
                    m = 0
                else:
                    m = ram[addr]
                x = m
            else:
                x = register_a

            result = _normalize16(_eval_comp(comp & COMP_MASK, register_d, x))
            if dst & DEST_M:
                if addr < IO_MIN or addr > IO_MAX:
                    ram[addr] = result
                elif addr == LCD8_ADDR:
                    lcd_write_command(result)
                elif addr == LCD16_ADDR:
                    lcd_write_data(result)
                elif addr == RTP_ADDR:
                    touch_write(result)
                elif addr == UART_TX_ADDR:
                    value = result & 0x7F
                    if 0 < value < 128:
                        stdout_write(chr(value))
                        stdout_flush()
                elif addr == CLEAR_TRIGGER:
                    lcd_clear()
                else:
                    ram[addr] = result
            if dst & DEST_A:
                register_a = result
            if dst & DEST_D:
                register_d = result
            pc += 1

        elif instruction == INST_A:
            register_a = arg0[pc]
            pc += 1

        elif instruction == INST_CJMP:
            jump = arg0[pc]
            if jump == JUMP_GT:
                pc = register_a if register_d > 0 else pc + 1
            elif jump == JUMP_GE:
                pc = register_a if register_d >= 0 else pc + 1
            elif jump == JUMP_EQ:
                pc = register_a if register_d == 0 else pc + 1
            elif jump == JUMP_NE:
                pc = register_a if register_d != 0 else pc + 1
            elif jump == JUMP_LT:
                pc = register_a if register_d < 0 else pc + 1
            elif jump == JUMP_LE:
                pc = register_a if register_d <= 0 else pc + 1
            else:
                pc = register_a

        elif instruction == INST_HALT:
            halted = True
            break

        else:
            raise RuntimeError("Engine: Sys.error() @ src_line %d %s" % (arg0[pc], filepath))

        cycle += 1

    return cycle, pc, register_a, register_d, halted


def run_cycles_accelerated(*args):
    """Backward-compatible alias for the FPGA-specific accelerator entry point."""
    return run_cycles_accelerated_fpga(*args)
