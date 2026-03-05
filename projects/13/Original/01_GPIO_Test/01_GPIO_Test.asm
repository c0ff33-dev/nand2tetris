@256 // bootstrap: initialize SP as 256
D=A
@0
M=D

// function Sys.init 0
(Sys.init) // function Sys.init 0

// call GPIO.init 0 // function Sys.init 0
@RET_CALL_1
D=A
@CALL_GPIO.init_0
0;JMP
(RET_CALL_1)
// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Sys.init$WHILE_EXP0) // label WHILE_EXP0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Sys.init$WHILE_END0
D;JNE // jump if not zero

// call GPIO.readBut 0
@RET_CALL_2
D=A
@CALL_GPIO.readBut_0
0;JMP
(RET_CALL_2)

// call GPIO.writeLed 1
@RET_CALL_3
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_3)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@Sys.init$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.init$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Sys.wait 0
(Sys.wait) // function Sys.wait 0

// push constant 0
@SP // push constant 0 // function Sys.wait 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// return
@RETURN_SUB
0;JMP

// function GPIO.init 0
(GPIO.init) // function GPIO.init 0

// push constant 4096
@4096 // push constant 4096 // function GPIO.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@16
M=D

// push constant 4097
@4097 // push constant 4097 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@17
M=D

// push constant 4107
@4107 // push constant 4107 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@18
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function GPIO.readLed 0
(GPIO.readLed) // function GPIO.readLed 0

// push constant 0
@SP // push constant 0 // function GPIO.readLed 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 0
@16 // push static 0 (static ../projects/13/Original/01_GPIO_Test/GPIO.vm)
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

// pop pointer 1
@SP // pop pointer 1
AM=M-1
D=M
@4
M=D

// push that 0
@THAT // push that 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function GPIO.writeLed 0
(GPIO.writeLed) // function GPIO.writeLed 0

// push constant 0
@SP // push constant 0 // function GPIO.writeLed 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 0
@16 // push static 0 (static ../projects/13/Original/01_GPIO_Test/GPIO.vm)
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP // pop pointer 1
AM=M-1
D=M
@4
M=D

// push temp 0
@5 // push temp 0
D=M
@SP
AM=M+1
A=A-1
M=D

// pop that 0
@SP // pop that 0
AM=M-1
D=M
@THAT
A=M
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function GPIO.readBut 0
(GPIO.readBut) // function GPIO.readBut 0

// push constant 0
@SP // push constant 0 // function GPIO.readBut 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 1
@17 // push static 1 (static ../projects/13/Original/01_GPIO_Test/GPIO.vm)
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

// pop pointer 1
@SP // pop pointer 1
AM=M-1
D=M
@4
M=D

// push that 0
@THAT // push that 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function GPIO._readDebug 0
(GPIO._readDebug) // function GPIO._readDebug 0

// push argument 0
@ARG // push argument 0 // function GPIO._readDebug 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push static 2
@18 // push static 2 (static ../projects/13/Original/01_GPIO_Test/GPIO.vm)
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

// pop pointer 1
@SP // pop pointer 1
AM=M-1
D=M
@4
M=D

// push that 0
@THAT // push that 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function GPIO._writeDebug 0
(GPIO._writeDebug) // function GPIO._writeDebug 0

// push argument 0
@ARG // push argument 0 // function GPIO._writeDebug 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push static 2
@18 // push static 2 (static ../projects/13/Original/01_GPIO_Test/GPIO.vm)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// pop pointer 1
@SP // pop pointer 1
AM=M-1
D=M
@4
M=D

// push temp 0
@5 // push temp 0
D=M
@SP
AM=M+1
A=A-1
M=D

// pop that 0
@SP // pop that 0
AM=M-1
D=M
@THAT
A=M
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function GPIO._blink 0
(GPIO._blink) // function GPIO._blink 0

// push constant 1
@SP // push constant 1 // function GPIO._blink 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign
// call GPIO.writeLed 1
@RET_CALL_4
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_4)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Sys.wait 1
@RET_CALL_5
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_5)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call GPIO.writeLed 1
@RET_CALL_6
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_6)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Sys.wait 1
@RET_CALL_7
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_7)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// halt
(END_PROGRAM)
@END_PROGRAM
0;JMP
(CALL_GPIO.init_0)
@R13
M=D // R13 = retAddr
@GPIO.init
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_GPIO.readBut_0)
@R13
M=D // R13 = retAddr
@GPIO.readBut
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_GPIO.writeLed_1)
@R13
M=D // R13 = retAddr
@GPIO.writeLed
D=A
@R14
M=D // R14 = func addr
@1
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
(CALL_Sys.wait_1)
@R13
M=D // R13 = retAddr
@Sys.wait
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
