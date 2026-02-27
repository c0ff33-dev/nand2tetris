
// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 333
@333 // push constant 333 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 888
@888 // push constant 888 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 8
@16 // pop static 8 // static + src segment offset (../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=A // d = &(static+offset)
@8 // retrieve &dst (segment+offset) and store at R13
D=D+A // d = &dst (asm_segment+offset)
@R13 // &r13
M=D // r13 = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@R13 // &r13 // retrieve &dst from r13 and complete the pop
A=M // *r13 (*dst)
M=D // dst = src (pop)

// pop static 3
@16 // pop static 3 // static + src segment offset (../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=A // d = &(static+offset)
@3 // retrieve &dst (segment+offset) and store at R13
D=D+A // d = &dst (asm_segment+offset)
@R13 // &r13
M=D // r13 = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@R13 // &r13 // retrieve &dst from r13 and complete the pop
A=M // *r13 (*dst)
M=D // dst = src (pop)

// pop static 1
@16 // pop static 1 // static + src segment offset (../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=A // d = &(static+offset)
@1 // retrieve &dst (segment+offset) and store at R13
D=D+A // d = &dst (asm_segment+offset)
@R13 // &r13
M=D // r13 = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@R13 // &r13 // retrieve &dst from r13 and complete the pop
A=M // *r13 (*dst)
M=D // dst = src (pop)

// push static 3
@16 // push static 3 (&asm_segment) // static + src offset (../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=A // d = &asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// push static 1
@16 // push static 1 (&asm_segment) // static + src offset (../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// push static 8
@16 // push static 8 (&asm_segment) // static + src offset (../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=A // d = &asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1
