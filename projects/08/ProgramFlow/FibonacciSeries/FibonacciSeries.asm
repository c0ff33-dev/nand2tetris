
// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop pointer 1 // that = argument[1]
@SP // pop pointer 1 // that = argument[1]
AM=M-1
D=M
@4
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop that 0 // first element in the series = 0
@SP // pop that 0 // first element in the series = 0
AM=M-1
D=M
@THAT
A=M
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop that 1 // second element in the series = 1
@SP // pop that 1 // second element in the series = 1
AM=M-1
D=M
@THAT
A=M+1
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop argument 0 // num_of_elements -= 2 (first 2 elements are set)
@SP // pop argument 0 // num_of_elements -= 2 (first 2 elements are set)
AM=M-1
D=M
@ARG
A=M
M=D

// label MAIN_LOOP_START
(FibonacciSeries$MAIN_LOOP_START) // label MAIN_LOOP_START

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
@SP // if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
AM=M-1 // SP--, A -> val
D=M // d = val
@FibonacciSeries$COMPUTE_ELEMENT
D;JNE // jump if not zero

// goto END_PROGRAM // otherwise, goto END_PROGRAM
@FibonacciSeries$END_PROGRAM // goto END_PROGRAM // otherwise, goto END_PROGRAM
0;JMP // unconditional jump

// label COMPUTE_ELEMENT
(FibonacciSeries$COMPUTE_ELEMENT) // label COMPUTE_ELEMENT

// push that 0
@THAT // push that 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push that 1
@THAT // push that 1
A=M+1
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

// pop that 2 // that[2] = that[0] + that[1]
@THAT // pop that 2 // that[2] = that[0] + that[1] (&asm_segment)
D=M
@2
D=D+A
@R13
M=D // R13 = dst addr
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// push pointer 1
@4 // push pointer 1
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop pointer 1 // that += 1
@SP // pop pointer 1 // that += 1
AM=M-1
D=M
@4
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

// pop argument 0 // num_of_elements--
@SP // pop argument 0 // num_of_elements--
AM=M-1
D=M
@ARG
A=M
M=D

// goto MAIN_LOOP_START
@FibonacciSeries$MAIN_LOOP_START // goto MAIN_LOOP_START
0;JMP // unconditional jump

// label END_PROGRAM
(FibonacciSeries$END_PROGRAM) // label END_PROGRAM
