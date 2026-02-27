@261 // bootstrap: initialize SP as 261
D=A
@0
M=D

// function Sys.init 0
(Sys.init) // function Sys.init 0

// push constant 4
@4 // push constant 4 // function Sys.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Main.fibonacci 1 // computes the 4th fibonacci element
@RET_CALL_1
D=A
@CALL_Main.fibonacci_1
0;JMP
(RET_CALL_1)

// label WHILE
(Sys.init$WHILE) // label WHILE

// goto WHILE // loops infinitely
@Sys.init$WHILE // goto WHILE // loops infinitely
0;JMP // unconditional jump

// function Main.fibonacci 0
(Main.fibonacci) // function Main.fibonacci 0

// push argument 0
@ARG // push argument 0 // function Main.fibonacci 0
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

// lt // checks if n<2
@RET_LT_2
D=A
@LT_SUB
0;JMP
(RET_LT_2)

// if-goto IF_TRUE
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Main.fibonacci$IF_TRUE
D;JNE // jump if not zero

// goto IF_FALSE
@Main.fibonacci$IF_FALSE // goto IF_FALSE
0;JMP // unconditional jump

// label IF_TRUE // if n<2, return n
(Main.fibonacci$IF_TRUE) // label IF_TRUE // if n<2, return n

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// label IF_FALSE // if n>=2, returns fib(n-2)+fib(n-1)
(Main.fibonacci$IF_FALSE) // label IF_FALSE // if n>=2, returns fib(n-2)+fib(n-1)

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

// call Main.fibonacci 1 // computes fib(n-2)
@RET_CALL_3
D=A
@CALL_Main.fibonacci_1
0;JMP
(RET_CALL_3)

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

// call Main.fibonacci 1 // computes fib(n-1)
@RET_CALL_4
D=A
@CALL_Main.fibonacci_1
0;JMP
(RET_CALL_4)

// add // returns fib(n-1) + fib(n-2)
@SP // add // returns fib(n-1) + fib(n-2)
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// return
@RETURN_SUB
0;JMP

// halt
(END_PROGRAM)
@END_PROGRAM
0;JMP
(CALL_Main.fibonacci_1)
@R13
M=D // R13 = retAddr
@Main.fibonacci
D=A
@R14
M=D // R14 = func addr
@1
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
(LT_SUB)
@R15
M=D // save return addr
@SP
AM=M-1 // SP--, A -> val2
D=M // D = val2
A=A-1 // A -> val1 (result slot)
D=M-D // D = val1 - val2
M=0 // assume false
@LT_END
D;JGE // skip if false
@SP
A=M-1 // A -> result slot
M=-1 // true
(LT_END)
@R15
A=M
0;JMP // return
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
