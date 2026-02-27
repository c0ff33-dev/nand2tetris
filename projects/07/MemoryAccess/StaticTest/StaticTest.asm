
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
@SP // pop static 8
AM=M-1
D=M
@24
M=D

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@19
M=D

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@17
M=D

// push static 3
@19 // push static 3 (static ../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// push static 8
@24 // push static 8 (static ../projects/07/MemoryAccess/StaticTest/StaticTest.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1
