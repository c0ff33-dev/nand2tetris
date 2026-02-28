
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop local 0 // initializes sum = 0
@SP // pop local 0 // initializes sum = 0
AM=M-1
D=M
@LCL
A=M
M=D

// label LOOP_START
(BasicLoop$LOOP_START) // label LOOP_START

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 0
@LCL // push local 0
A=M
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

// pop local 0 // sum = sum + counter
@SP // pop local 0 // sum = sum + counter
AM=M-1
D=M
@LCL
A=M
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop argument 0 // counter--
@SP // pop argument 0 // counter--
AM=M-1
D=M
@ARG
A=M
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto LOOP_START // If counter > 0, goto LOOP_START
@SP // if-goto LOOP_START // If counter > 0, goto LOOP_START
AM=M-1 // SP--, A -> val
D=M // d = val
@BasicLoop$LOOP_START
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
