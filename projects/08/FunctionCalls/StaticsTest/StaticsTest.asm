@261 // bootstrap: initialize SP as 261
D=A
@0
M=D

// function Sys.init 0
(Sys.init) // function Sys.init 0

// push constant 6
@6 // push constant 6 // function Sys.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Class1.set 2
@RET_CALL_1
D=A
@CALL_Class1.set_2
0;JMP
(RET_CALL_1)

// pop temp 0 // Dumps the return value
@SP // pop temp 0 // Dumps the return value
AM=M-1
D=M
@5
M=D

// push constant 23
@23 // push constant 23 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Class2.set 2
@RET_CALL_2
D=A
@CALL_Class2.set_2
0;JMP
(RET_CALL_2)

// pop temp 0 // Dumps the return value
@SP // pop temp 0 // Dumps the return value
AM=M-1
D=M
@5
M=D

// call Class1.get 0
@RET_CALL_3
D=A
@CALL_Class1.get_0
0;JMP
(RET_CALL_3)

// call Class2.get 0
@RET_CALL_4
D=A
@CALL_Class2.get_0
0;JMP
(RET_CALL_4)

// label WHILE
(Sys.WHILE) // label WHILE

// goto WHILE
@Sys.WHILE // goto WHILE
0;JMP // unconditional jump

// function Class1.set 0
(Class1.set) // function Class1.set 0

// push argument 0
@ARG // push argument 0 // function Class1.set 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@16
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@17
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Class1.get 0
(Class1.get) // function Class1.get 0

// push static 0
@16 // push static 0 // function Class1.get 0 (static ../projects/08/FunctionCalls/StaticsTest/Class1.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// push static 1
@17 // push static 1 (static ../projects/08/FunctionCalls/StaticsTest/Class1.vm)
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

// return
@RETURN_SUB
0;JMP

// function Class2.set 0
(Class2.set) // function Class2.set 0

// push argument 0
@ARG // push argument 0 // function Class2.set 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@18
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@19
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Class2.get 0
(Class2.get) // function Class2.get 0

// push static 0
@18 // push static 0 // function Class2.get 0 (static ../projects/08/FunctionCalls/StaticsTest/Class2.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// push static 1
@19 // push static 1 (static ../projects/08/FunctionCalls/StaticsTest/Class2.vm)
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

// return
@RETURN_SUB
0;JMP

// halt
(END_PROGRAM)
@END_PROGRAM
0;JMP
(CALL_Class1.set_2)
@R13
M=D // R13 = retAddr
@Class1.set
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_SUB)
@R15
M=D // R15 = nArgs
@R13
D=M
@SP
A=M
M=D // push retAddr
@LCL
D=M
@SP
AM=M+1
M=D // push LCL
@ARG
D=M
@SP
AM=M+1
M=D // push ARG
@THIS
D=M
@SP
AM=M+1
M=D // push THIS
@THAT
D=M
@SP
AM=M+1
M=D // push THAT
@SP
M=M+1
@R15
D=M // D = nArgs
@5
D=D+A // D = nArgs + 5
@SP
D=M-D // D = SP - nArgs - 5
@ARG
M=D // ARG = SP - nArgs - 5
@SP
D=M
@LCL
M=D // LCL = SP
@R14
A=M
0;JMP
(CALL_Class2.set_2)
@R13
M=D // R13 = retAddr
@Class2.set
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Class1.get_0)
@R13
M=D // R13 = retAddr
@Class1.get
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Class2.get_0)
@R13
M=D // R13 = retAddr
@Class2.get
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(RETURN_SUB)
@LCL
D=M
@R13
M=D // R13 = frame
@5
A=D-A
D=M
@R14
M=D // R14 = retAddr
@SP
AM=M-1
D=M
@ARG
A=M
M=D // ARG[0] = result
@ARG
D=M+1
@SP
M=D // SP = ARG + 1
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
