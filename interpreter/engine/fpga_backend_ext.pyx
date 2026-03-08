# cython: language_level=3, boundscheck=False, wraparound=False, initializedcheck=False, cdivision=True

"""Compiled accelerator hot loops for HACK and FPGA execution."""

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
    comp_kind = comp_kind & COMP_MASK
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


cdef inline bint _jump_taken(int jump_kind, int register_d):
    if jump_kind == JUMP_GT:
        return register_d > 0
    elif jump_kind == JUMP_GE:
        return register_d >= 0
    elif jump_kind == JUMP_EQ:
        return register_d == 0
    elif jump_kind == JUMP_NE:
        return register_d != 0
    elif jump_kind == JUMP_LT:
        return register_d < 0
    elif jump_kind == JUMP_LE:
        return register_d <= 0
    return True


cdef inline int _fpga_read(int[:] ram, int addr, object touch):
    if addr < IO_MIN or addr > IO_MAX:
        return ram[addr]
    if addr == LCD8_ADDR or addr == LCD16_ADDR:
        return 0
    if addr == RTP_ADDR:
        return touch.read()
    if addr == UART_TX_ADDR:
        return 0
    return ram[addr]


cdef inline void _fpga_write(int[:] ram, int addr, int value, object lcd, object touch):
    if addr < IO_MIN or addr > IO_MAX:
        ram[addr] = value
        return
    if addr == LCD8_ADDR:
        lcd.write_command(value)
    elif addr == LCD16_ADDR:
        lcd.write_data(value)
    elif addr == RTP_ADDR:
        touch.write(value)
    elif addr == UART_TX_ADDR:
        if 0 < (value & 0x7F) < 128:
            sys.stdout.write(chr(value & 0x7F))
            sys.stdout.flush()
    elif addr == CLEAR_TRIGGER:
        lcd.clear()
    else:
        ram[addr] = value


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
    cdef int result
    cdef int comp_kind
    cdef int dst

    while cycle < n:
        if pc >= dec_len:
            break

        instruction = inst_type[pc]
        if instruction == INST_CDEST:
            comp_kind = arg0[pc]
            if comp_kind & COMP_USE_M:
                result = ram[register_a]
            else:
                result = register_a
            result = _eval_comp(comp_kind, register_d, result)
            result = _normalize16(result)
            dst = arg1[pc]
            if dst & DEST_M:
                ram[register_a] = result
            if dst & DEST_A:
                register_a = result
            if dst & DEST_D:
                register_d = result
            pc += 1
        elif instruction == INST_A:
            register_a = arg0[pc]
            pc += 1
        elif instruction == INST_CJMP:
            if _jump_taken(arg0[pc], register_d):
                pc = register_a
            else:
                pc += 1
        elif instruction == INST_HALT:
            return (cycle, pc, register_a, register_d, True)
        elif instruction == INST_ERROR:
            raise RuntimeError("Engine: Sys.error() @ src_line %d %s" % (arg0[pc], filepath))
        else:
            raise ValueError("Accelerator: Unexpected instruction kind %d %s" % (instruction, filepath))
        cycle += 1

    return (cycle, pc, register_a, register_d, False)


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
    """Execute up to n cycles for the FPGA accelerator path."""
    cdef int[:] ram = ram_obj
    cdef unsigned char[:] inst_type = inst_type_obj
    cdef int[:] arg0 = arg0_obj
    cdef unsigned char[:] arg1 = arg1_obj
    cdef Py_ssize_t dec_len = inst_type.shape[0]
    cdef int cycle = 0
    cdef int instruction
    cdef int result
    cdef int comp_kind
    cdef int dst

    while cycle < n:
        if pc >= dec_len:
            break

        instruction = inst_type[pc]
        if instruction == INST_CDEST:
            comp_kind = arg0[pc]
            if comp_kind & COMP_USE_M:
                result = _fpga_read(ram, register_a, touch)
            else:
                result = register_a
            result = _eval_comp(comp_kind, register_d, result)
            result = _normalize16(result)
            dst = arg1[pc]
            if dst & DEST_M:
                _fpga_write(ram, register_a, result, lcd, touch)
            if dst & DEST_A:
                register_a = result
            if dst & DEST_D:
                register_d = result
            pc += 1
        elif instruction == INST_A:
            register_a = arg0[pc]
            pc += 1
        elif instruction == INST_CJMP:
            if _jump_taken(arg0[pc], register_d):
                pc = register_a
            else:
                pc += 1
        elif instruction == INST_HALT:
            return (cycle, pc, register_a, register_d, True)
        elif instruction == INST_ERROR:
            raise RuntimeError("Engine: Sys.error() @ src_line %d %s" % (arg0[pc], filepath))
        else:
            raise ValueError("Accelerator: Unexpected instruction kind %d %s" % (instruction, filepath))
        cycle += 1

    return (cycle, pc, register_a, register_d, False)
