
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// call GPIO.writeLed 1
@RET_CALL_2
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_2)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Memory.init 0
@RET_CALL_3
D=A
@CALL_Memory.init_0
0;JMP
(RET_CALL_3)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Math.init 0
@RET_CALL_4
D=A
@CALL_Math.init_0
0;JMP
(RET_CALL_4)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.init 0
@RET_CALL_5
D=A
@CALL_Output.init_0
0;JMP
(RET_CALL_5)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Screen.init 0
@RET_CALL_6
D=A
@CALL_Screen.init_0
0;JMP
(RET_CALL_6)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Keyboard.init 0
@RET_CALL_7
D=A
@CALL_Keyboard.init_0
0;JMP
(RET_CALL_7)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Main.main 0
@RET_CALL_8
D=A
@CALL_Main.main_0
0;JMP
(RET_CALL_8)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@RET_CALL_9
D=A
@CALL_Sys.halt_0
0;JMP
(RET_CALL_9)

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

// function Sys.halt 0
(Sys.halt) // function Sys.halt 0

// label WHILE_EXP0
(Sys.halt$WHILE_EXP0) // label WHILE_EXP0

// push constant 0
@SP // push constant 0 // function Sys.halt 0
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
@Sys.halt$WHILE_END0
D;JNE // jump if not zero

// goto WHILE_EXP0
@Sys.halt$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.halt$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Sys.wait 1
(Sys.wait) // function Sys.wait 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Sys.wait 1
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_10
D=A
@LT_SUB
0;JMP
(RET_LT_10)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Sys.wait$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Sys.wait$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Sys.wait$IF_TRUE0) // label IF_TRUE0

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// call Sys.error 1
@RET_CALL_11
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_11)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Sys.wait$IF_FALSE0) // label IF_FALSE0

// label WHILE_EXP0
(Sys.wait$WHILE_EXP0) // label WHILE_EXP0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_12
D=A
@GT_SUB
0;JMP
(RET_GT_12)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Sys.wait$WHILE_END0
D;JNE // jump if not zero

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP1
(Sys.wait$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_13
D=A
@GT_SUB
0;JMP
(RET_GT_13)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Sys.wait$WHILE_END1
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP1
@Sys.wait$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Sys.wait$WHILE_END1) // label WHILE_END1

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

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// goto WHILE_EXP0
@Sys.wait$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.wait$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Sys.error 0
(Sys.error) // function Sys.error 0

// push constant 69
@69 // push constant 69 // function Sys.error 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Output.printChar 1
@RET_CALL_14
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_14)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.printChar 1
@RET_CALL_15
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_15)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.printChar 1
@RET_CALL_16
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_16)

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

// call Output.printInt 1
@RET_CALL_17
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_17)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Sys.error$WHILE_EXP0) // label WHILE_EXP0

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
@Sys.error$WHILE_END0
D;JNE // jump if not zero

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// call GPIO.writeLed 1
@RET_CALL_18
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_18)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 125
@125 // push constant 125 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.wait 1
@RET_CALL_19
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_19)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call GPIO.writeLed 1
@RET_CALL_20
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_20)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 125
@125 // push constant 125 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.wait 1
@RET_CALL_21
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_21)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@Sys.error$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.error$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Main.main 1
(Main.main) // function Main.main 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// call PongGame.newInstance 0 // function Main.main 1
@RET_CALL_22
D=A
@CALL_PongGame.newInstance_0
0;JMP
(RET_CALL_22)
// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call PongGame.getInstance 0
@RET_CALL_23
D=A
@CALL_PongGame.getInstance_0
0;JMP
(RET_CALL_23)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call PongGame.run 1
@RET_CALL_24
D=A
@CALL_PongGame.run_1
0;JMP
(RET_CALL_24)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call PongGame.dispose 1
@RET_CALL_25
D=A
@CALL_PongGame.dispose_1
0;JMP
(RET_CALL_25)

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

// function Array.new 0
(Array.new) // function Array.new 0

// push argument 0
@ARG // push argument 0 // function Array.new 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_26
D=A
@GT_SUB
0;JMP
(RET_GT_26)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Array.new$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Array.new$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Array.new$IF_TRUE0) // label IF_TRUE0

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_27
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_27)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Array.new$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.alloc 1
@RET_CALL_28
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_28)

// return
@RETURN_SUB
0;JMP

// function Array.dispose 0
(Array.dispose) // function Array.dispose 0

// push argument 0
@ARG // push argument 0 // function Array.dispose 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_29
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_29)

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

// function Ball.new 0
(Ball.new) // function Ball.new 0

// push constant 15
@15 // push constant 15 // function Ball.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_30
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_30)

// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 10
@THIS // pop this 10 (&asm_segment)
D=M
@10
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

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 6
@6 // push constant 6 (constant)
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

// pop this 11
@THIS // pop this 11 (&asm_segment)
D=M
@11
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

// push argument 4
@ARG // push argument 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 12
@THIS // pop this 12 (&asm_segment)
D=M
@12
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

// push argument 5
@ARG // push argument 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 6
@6 // push constant 6 (constant)
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

// pop this 13
@THIS // pop this 13 (&asm_segment)
D=M
@13
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 14
@THIS // pop this 14 (&asm_segment)
D=M
@14
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

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.show 1
@RET_CALL_31
D=A
@CALL_Ball.show_1
0;JMP
(RET_CALL_31)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Ball.dispose 0
(Ball.dispose) // function Ball.dispose 0

// push argument 0
@ARG // push argument 0 // function Ball.dispose 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_32
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_32)

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

// function Ball.show 0
(Ball.show) // function Ball.show 0

// push argument 0
@ARG // push argument 0 // function Ball.show 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// call Screen.setColor 1
@RET_CALL_33
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_33)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.draw 1
@RET_CALL_34
D=A
@CALL_Ball.draw_1
0;JMP
(RET_CALL_34)

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

// function Ball.hide 0
(Ball.hide) // function Ball.hide 0

// push argument 0
@ARG // push argument 0 // function Ball.hide 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Screen.setColor 1
@RET_CALL_35
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_35)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.draw 1
@RET_CALL_36
D=A
@CALL_Ball.draw_1
0;JMP
(RET_CALL_36)

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

// function Ball.draw 0
(Ball.draw) // function Ball.draw 0

// push argument 0
@ARG // push argument 0 // function Ball.draw 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call Screen.drawRectangle 4
@RET_CALL_37
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_37)

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

// function Ball.getLeft 0
(Ball.getLeft) // function Ball.getLeft 0

// push argument 0
@ARG // push argument 0 // function Ball.getLeft 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Ball.getRight 0
(Ball.getRight) // function Ball.getRight 0

// push argument 0
@ARG // push argument 0 // function Ball.getRight 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// return
@RETURN_SUB
0;JMP

// function Ball.setDestination 3
(Ball.setDestination) // function Ball.setDestination 3
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Ball.setDestination 3
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
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

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
A=M+1
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

// pop this 3
@THIS // pop this 3 (&asm_segment)
D=M
@3
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

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.abs 1
@RET_CALL_38
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_38)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.abs 1
@RET_CALL_39
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_39)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_40
D=A
@LT_SUB
0;JMP
(RET_LT_40)

// pop this 7
@THIS // pop this 7 (&asm_segment)
D=M
@7
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

// push this 7
@THIS // push this 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.setDestination$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Ball.setDestination$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Ball.setDestination$IF_TRUE0) // label IF_TRUE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_41
D=A
@LT_SUB
0;JMP
(RET_LT_41)

// pop this 8
@THIS // pop this 8 (&asm_segment)
D=M
@8
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

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_42
D=A
@LT_SUB
0;JMP
(RET_LT_42)

// pop this 9
@THIS // pop this 9 (&asm_segment)
D=M
@9
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

// goto IF_END0
@Ball.setDestination$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Ball.setDestination$IF_FALSE0) // label IF_FALSE0

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_43
D=A
@LT_SUB
0;JMP
(RET_LT_43)

// pop this 8
@THIS // pop this 8 (&asm_segment)
D=M
@8
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_44
D=A
@LT_SUB
0;JMP
(RET_LT_44)

// pop this 9
@THIS // pop this 9 (&asm_segment)
D=M
@9
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

// label IF_END0
(Ball.setDestination$IF_END0) // label IF_END0

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_45
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_45)

// push local 0
@LCL // push local 0
A=M
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

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_46
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_46)

// pop this 5
@THIS // pop this 5 (&asm_segment)
D=M
@5
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 1
@LCL // push local 1
A=M+1
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

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// call Math.multiply 2
@RET_CALL_47
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_47)

// pop this 6
@THIS // pop this 6 (&asm_segment)
D=M
@6
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Ball.move 0
(Ball.move) // function Ball.move 0

// push argument 0
@ARG // push argument 0 // function Ball.move 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.hide 1
@RET_CALL_48
D=A
@CALL_Ball.hide_1
0;JMP
(RET_CALL_48)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 4
@THIS // push this 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_49
D=A
@LT_SUB
0;JMP
(RET_LT_49)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Ball.move$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Ball.move$IF_TRUE0) // label IF_TRUE0

// push this 4
@THIS // push this 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 5
@THIS // push this 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// goto IF_END0
@Ball.move$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Ball.move$IF_FALSE0) // label IF_FALSE0

// push this 4
@THIS // push this 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 6
@THIS // push this 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// push this 9
@THIS // push this 9 (&asm_segment)
D=M // d = *asm_segment
@9 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Ball.move$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Ball.move$IF_TRUE1) // label IF_TRUE1

// push this 7
@THIS // push this 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Ball.move$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Ball.move$IF_TRUE2) // label IF_TRUE2

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// goto IF_END2
@Ball.move$IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Ball.move$IF_FALSE2) // label IF_FALSE2

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// label IF_END2
(Ball.move$IF_END2) // label IF_END2

// goto IF_END1
@Ball.move$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Ball.move$IF_FALSE1) // label IF_FALSE1

// push this 7
@THIS // push this 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Ball.move$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Ball.move$IF_TRUE3) // label IF_TRUE3

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// goto IF_END3
@Ball.move$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Ball.move$IF_FALSE3) // label IF_FALSE3

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// label IF_END3
(Ball.move$IF_END3) // label IF_END3

// label IF_END1
(Ball.move$IF_END1) // label IF_END1

// label IF_END0
(Ball.move$IF_END0) // label IF_END0

// push this 8
@THIS // push this 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Ball.move$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Ball.move$IF_TRUE4) // label IF_TRUE4

// push this 7
@THIS // push this 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE5
@SP // if-goto IF_TRUE5
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE5
D;JNE // jump if not zero

// goto IF_FALSE5
@Ball.move$IF_FALSE5 // goto IF_FALSE5
0;JMP // unconditional jump

// label IF_TRUE5
(Ball.move$IF_TRUE5) // label IF_TRUE5

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// goto IF_END5
@Ball.move$IF_END5 // goto IF_END5
0;JMP // unconditional jump

// label IF_FALSE5
(Ball.move$IF_FALSE5) // label IF_FALSE5

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// label IF_END5
(Ball.move$IF_END5) // label IF_END5

// goto IF_END4
@Ball.move$IF_END4 // goto IF_END4
0;JMP // unconditional jump

// label IF_FALSE4
(Ball.move$IF_FALSE4) // label IF_FALSE4

// push this 7
@THIS // push this 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE6
@SP // if-goto IF_TRUE6
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE6
D;JNE // jump if not zero

// goto IF_FALSE6
@Ball.move$IF_FALSE6 // goto IF_FALSE6
0;JMP // unconditional jump

// label IF_TRUE6
(Ball.move$IF_TRUE6) // label IF_TRUE6

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// goto IF_END6
@Ball.move$IF_END6 // goto IF_END6
0;JMP // unconditional jump

// label IF_FALSE6
(Ball.move$IF_FALSE6) // label IF_FALSE6

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// label IF_END6
(Ball.move$IF_END6) // label IF_END6

// label IF_END4
(Ball.move$IF_END4) // label IF_END4

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 10
@THIS // push this 10 (&asm_segment)
D=M // d = *asm_segment
@10 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_50
D=A
@GT_SUB
0;JMP
(RET_GT_50)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE7
@SP // if-goto IF_TRUE7
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE7
D;JNE // jump if not zero

// goto IF_FALSE7
@Ball.move$IF_FALSE7 // goto IF_FALSE7
0;JMP // unconditional jump

// label IF_TRUE7
(Ball.move$IF_TRUE7) // label IF_TRUE7

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop this 14
@THIS // pop this 14 (&asm_segment)
D=M
@14
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

// push this 10
@THIS // push this 10 (&asm_segment)
D=M // d = *asm_segment
@10 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// label IF_FALSE7
(Ball.move$IF_FALSE7) // label IF_FALSE7

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 11
@THIS // push this 11 (&asm_segment)
D=M // d = *asm_segment
@11 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_51
D=A
@LT_SUB
0;JMP
(RET_LT_51)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE8
@SP // if-goto IF_TRUE8
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE8
D;JNE // jump if not zero

// goto IF_FALSE8
@Ball.move$IF_FALSE8 // goto IF_FALSE8
0;JMP // unconditional jump

// label IF_TRUE8
(Ball.move$IF_TRUE8) // label IF_TRUE8

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 14
@THIS // pop this 14 (&asm_segment)
D=M
@14
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

// push this 11
@THIS // push this 11 (&asm_segment)
D=M // d = *asm_segment
@11 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// label IF_FALSE8
(Ball.move$IF_FALSE8) // label IF_FALSE8

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 12
@THIS // push this 12 (&asm_segment)
D=M // d = *asm_segment
@12 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_52
D=A
@GT_SUB
0;JMP
(RET_GT_52)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE9
@SP // if-goto IF_TRUE9
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE9
D;JNE // jump if not zero

// goto IF_FALSE9
@Ball.move$IF_FALSE9 // goto IF_FALSE9
0;JMP // unconditional jump

// label IF_TRUE9
(Ball.move$IF_TRUE9) // label IF_TRUE9

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 14
@THIS // pop this 14 (&asm_segment)
D=M
@14
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

// push this 12
@THIS // push this 12 (&asm_segment)
D=M // d = *asm_segment
@12 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// label IF_FALSE9
(Ball.move$IF_FALSE9) // label IF_FALSE9

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 13
@THIS // push this 13 (&asm_segment)
D=M // d = *asm_segment
@13 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_53
D=A
@LT_SUB
0;JMP
(RET_LT_53)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE10
@SP // if-goto IF_TRUE10
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.move$IF_TRUE10
D;JNE // jump if not zero

// goto IF_FALSE10
@Ball.move$IF_FALSE10 // goto IF_FALSE10
0;JMP // unconditional jump

// label IF_TRUE10
(Ball.move$IF_TRUE10) // label IF_TRUE10

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 14
@THIS // pop this 14 (&asm_segment)
D=M
@14
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

// push this 13
@THIS // push this 13 (&asm_segment)
D=M // d = *asm_segment
@13 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// label IF_FALSE10
(Ball.move$IF_FALSE10) // label IF_FALSE10

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.show 1
@RET_CALL_54
D=A
@CALL_Ball.show_1
0;JMP
(RET_CALL_54)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 14
@THIS // push this 14 (&asm_segment)
D=M // d = *asm_segment
@14 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Ball.bounce 5
(Ball.bounce) // function Ball.bounce 5
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Ball.bounce 5
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_55
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_55)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_56
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_56)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_57
D=A
@EQ_SUB
0;JMP
(RET_EQ_57)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.bounce$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Ball.bounce$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Ball.bounce$IF_TRUE0) // label IF_TRUE0

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// goto IF_END0
@Ball.bounce$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Ball.bounce$IF_FALSE0) // label IF_FALSE0

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_58
D=A
@LT_SUB
0;JMP
(RET_LT_58)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// push argument 1
@ARG // push argument 1
A=M+1
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

// eq
@RET_EQ_59
D=A
@EQ_SUB
0;JMP
(RET_EQ_59)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_60
D=A
@LT_SUB
0;JMP
(RET_LT_60)

// push argument 1
@ARG // push argument 1
A=M+1
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// eq
@RET_EQ_61
D=A
@EQ_SUB
0;JMP
(RET_EQ_61)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.bounce$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Ball.bounce$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Ball.bounce$IF_TRUE1) // label IF_TRUE1

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// goto IF_END1
@Ball.bounce$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Ball.bounce$IF_FALSE1) // label IF_FALSE1

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// label IF_END1
(Ball.bounce$IF_END1) // label IF_END1

// label IF_END0
(Ball.bounce$IF_END0) // label IF_END0

// push this 14
@THIS // push this 14 (&asm_segment)
D=M // d = *asm_segment
@14 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// eq
@RET_EQ_62
D=A
@EQ_SUB
0;JMP
(RET_EQ_62)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.bounce$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Ball.bounce$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Ball.bounce$IF_TRUE2) // label IF_TRUE2

// push constant 506
@506 // push constant 506 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call Math.multiply 2
@RET_CALL_63
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_63)

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.divide 2
@RET_CALL_64
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_64)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_65
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_65)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// goto IF_END2
@Ball.bounce$IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Ball.bounce$IF_FALSE2) // label IF_FALSE2

// push this 14
@THIS // push this 14 (&asm_segment)
D=M // d = *asm_segment
@14 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// eq
@RET_EQ_66
D=A
@EQ_SUB
0;JMP
(RET_EQ_66)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.bounce$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Ball.bounce$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Ball.bounce$IF_TRUE3) // label IF_TRUE3

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_67
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_67)

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.divide 2
@RET_CALL_68
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_68)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_69
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_69)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// goto IF_END3
@Ball.bounce$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Ball.bounce$IF_FALSE3) // label IF_FALSE3

// push this 14
@THIS // push this 14 (&asm_segment)
D=M // d = *asm_segment
@14 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_70
D=A
@EQ_SUB
0;JMP
(RET_EQ_70)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Ball.bounce$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Ball.bounce$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Ball.bounce$IF_TRUE4) // label IF_TRUE4

// push constant 250
@250 // push constant 250 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 25
@25 // push constant 25 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call Math.multiply 2
@RET_CALL_71
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_71)

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.divide 2
@RET_CALL_72
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_72)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push this 0
@THIS // push this 0
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

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_73
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_73)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto IF_END4
@Ball.bounce$IF_END4 // goto IF_END4
0;JMP // unconditional jump

// label IF_FALSE4
(Ball.bounce$IF_FALSE4) // label IF_FALSE4

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 25
@25 // push constant 25 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_74
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_74)

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.divide 2
@RET_CALL_75
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_75)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push this 0
@THIS // push this 0
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

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_76
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_76)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_END4
(Ball.bounce$IF_END4) // label IF_END4

// label IF_END3
(Ball.bounce$IF_END3) // label IF_END3

// label IF_END2
(Ball.bounce$IF_END2) // label IF_END2

// push pointer 0
@3 // push pointer 0
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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.setDestination 3
@RET_CALL_77
D=A
@CALL_Ball.setDestination_3
0;JMP
(RET_CALL_77)

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

// function Bat.new 0
(Bat.new) // function Bat.new 0

// push constant 5
@5 // push constant 5 // function Bat.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_78
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_78)

// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 3
@THIS // pop this 3 (&asm_segment)
D=M
@3
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.show 1
@RET_CALL_79
D=A
@CALL_Bat.show_1
0;JMP
(RET_CALL_79)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Bat.dispose 0
(Bat.dispose) // function Bat.dispose 0

// push argument 0
@ARG // push argument 0 // function Bat.dispose 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_80
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_80)

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

// function Bat.show 0
(Bat.show) // function Bat.show 0

// push argument 0
@ARG // push argument 0 // function Bat.show 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// call Screen.setColor 1
@RET_CALL_81
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_81)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.draw 1
@RET_CALL_82
D=A
@CALL_Bat.draw_1
0;JMP
(RET_CALL_82)

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

// function Bat.hide 0
(Bat.hide) // function Bat.hide 0

// push argument 0
@ARG // push argument 0 // function Bat.hide 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Screen.setColor 1
@RET_CALL_83
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_83)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.draw 1
@RET_CALL_84
D=A
@CALL_Bat.draw_1
0;JMP
(RET_CALL_84)

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

// function Bat.draw 0
(Bat.draw) // function Bat.draw 0

// push argument 0
@ARG // push argument 0 // function Bat.draw 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen.drawRectangle 4
@RET_CALL_85
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_85)

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

// function Bat.setDirection 0
(Bat.setDirection) // function Bat.setDirection 0

// push argument 0
@ARG // push argument 0 // function Bat.setDirection 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Bat.getLeft 0
(Bat.getLeft) // function Bat.getLeft 0

// push argument 0
@ARG // push argument 0 // function Bat.getLeft 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Bat.getRight 0
(Bat.getRight) // function Bat.getRight 0

// push argument 0
@ARG // push argument 0 // function Bat.getRight 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// return
@RETURN_SUB
0;JMP

// function Bat.setWidth 0
(Bat.setWidth) // function Bat.setWidth 0

// push argument 0
@ARG // push argument 0 // function Bat.setWidth 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.hide 1
@RET_CALL_86
D=A
@CALL_Bat.hide_1
0;JMP
(RET_CALL_86)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.show 1
@RET_CALL_87
D=A
@CALL_Bat.show_1
0;JMP
(RET_CALL_87)

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

// function Bat.move 0
(Bat.move) // function Bat.move 0

// push argument 0
@ARG // push argument 0 // function Bat.move 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 4
@THIS // push this 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// eq
@RET_EQ_88
D=A
@EQ_SUB
0;JMP
(RET_EQ_88)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Bat.move$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Bat.move$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Bat.move$IF_TRUE0) // label IF_TRUE0

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_89
D=A
@LT_SUB
0;JMP
(RET_LT_89)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Bat.move$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Bat.move$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Bat.move$IF_TRUE1) // label IF_TRUE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// label IF_FALSE1
(Bat.move$IF_FALSE1) // label IF_FALSE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Screen.setColor 1
@RET_CALL_90
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_90)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen.drawRectangle 4
@RET_CALL_91
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_91)

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

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// call Screen.setColor 1
@RET_CALL_92
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_92)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen.drawRectangle 4
@RET_CALL_93
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_93)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Bat.move$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Bat.move$IF_FALSE0) // label IF_FALSE0

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_94
D=A
@GT_SUB
0;JMP
(RET_GT_94)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Bat.move$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Bat.move$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Bat.move$IF_TRUE2) // label IF_TRUE2

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// label IF_FALSE2
(Bat.move$IF_FALSE2) // label IF_FALSE2

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Screen.setColor 1
@RET_CALL_95
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_95)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen.drawRectangle 4
@RET_CALL_96
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_96)

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

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// call Screen.setColor 1
@RET_CALL_97
D=A
@CALL_Screen.setColor_1
0;JMP
(RET_CALL_97)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 3
@3 // push constant 3 (constant)
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen.drawRectangle 4
@RET_CALL_98
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_98)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(Bat.move$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Keyboard.init 0
(Keyboard.init) // function Keyboard.init 0

// push constant 0
@SP // push constant 0 // function Keyboard.init 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// return
@RETURN_SUB
0;JMP

// function Keyboard.keyPressed 0
(Keyboard.keyPressed) // function Keyboard.keyPressed 0

// push constant 24576
@24576 // push constant 24576 // function Keyboard.keyPressed 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.peek 1
@RET_CALL_99
D=A
@CALL_Memory.peek_1
0;JMP
(RET_CALL_99)

// return
@RETURN_SUB
0;JMP

// function Keyboard.readChar 2
(Keyboard.readChar) // function Keyboard.readChar 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 0
@SP // push constant 0 // function Keyboard.readChar 2
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// call Output.printChar 1
@RET_CALL_100
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_100)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_101
D=A
@EQ_SUB
0;JMP
(RET_EQ_101)

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_102
D=A
@GT_SUB
0;JMP
(RET_GT_102)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Keyboard.readChar$WHILE_END0
D;JNE // jump if not zero

// call Keyboard.keyPressed 0
@RET_CALL_103
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_103)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_104
D=A
@GT_SUB
0;JMP
(RET_GT_104)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Keyboard.readChar$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Keyboard.readChar$IF_TRUE0) // label IF_TRUE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label IF_FALSE0
(Keyboard.readChar$IF_FALSE0) // label IF_FALSE0

// goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Keyboard.readChar$WHILE_END0) // label WHILE_END0

// call String.backSpace 0
@RET_CALL_105
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_105)

// call Output.printChar 1
@RET_CALL_106
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_106)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printChar 1
@RET_CALL_107
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_107)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Keyboard.readLine 5
(Keyboard.readLine) // function Keyboard.readLine 5
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 80
@80 // push constant 80 // function Keyboard.readLine 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call String.new 1
@RET_CALL_108
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_108)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printString 1
@RET_CALL_109
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_109)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call String.newLine 0
@RET_CALL_110
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_110)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// call String.backSpace 0
@RET_CALL_111
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_111)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// label WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0) // label WHILE_EXP0

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

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
@Keyboard.readLine$WHILE_END0
D;JNE // jump if not zero

// call Keyboard.readChar 0
@RET_CALL_112
D=A
@CALL_Keyboard.readChar_0
0;JMP
(RET_CALL_112)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// eq
@RET_EQ_113
D=A
@EQ_SUB
0;JMP
(RET_EQ_113)

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Keyboard.readLine$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Keyboard.readLine$IF_TRUE0) // label IF_TRUE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// eq
@RET_EQ_114
D=A
@EQ_SUB
0;JMP
(RET_EQ_114)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Keyboard.readLine$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Keyboard.readLine$IF_TRUE1) // label IF_TRUE1

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call String.eraseLastChar 1
@RET_CALL_115
D=A
@CALL_String.eraseLastChar_1
0;JMP
(RET_CALL_115)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Keyboard.readLine$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Keyboard.readLine$IF_FALSE1) // label IF_FALSE1

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call String.appendChar 2
@RET_CALL_116
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_116)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// label IF_END1
(Keyboard.readLine$IF_END1) // label IF_END1

// label IF_FALSE0
(Keyboard.readLine$IF_FALSE0) // label IF_FALSE0

// goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Keyboard.readLine$WHILE_END0) // label WHILE_END0

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Keyboard.readInt 2
(Keyboard.readInt) // function Keyboard.readInt 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Keyboard.readInt 2
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call Keyboard.readLine 1
@RET_CALL_117
D=A
@CALL_Keyboard.readLine_1
0;JMP
(RET_CALL_117)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.intValue 1
@RET_CALL_118
D=A
@CALL_String.intValue_1
0;JMP
(RET_CALL_118)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.dispose 1
@RET_CALL_119
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_119)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Math.init 1
(Math.init) // function Math.init 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 16
@16 // push constant 16 // function Math.init 1 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Array.new 1
@RET_CALL_120
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_120)

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@17
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_121
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_121)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@16
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// label WHILE_EXP0
(Math.init$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_122
D=A
@LT_SUB
0;JMP
(RET_LT_122)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.init$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// push local 0
@LCL // push local 0
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

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// push local 0
@LCL // push local 0
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

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// goto WHILE_EXP0
@Math.init$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.init$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Math.abs 0
(Math.abs) // function Math.abs 0

// push argument 0
@ARG // push argument 0 // function Math.abs 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_123
D=A
@LT_SUB
0;JMP
(RET_LT_123)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.abs$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.abs$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.abs$IF_TRUE0) // label IF_TRUE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// label IF_FALSE0
(Math.abs$IF_FALSE0) // label IF_FALSE0

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

// function Math.multiply 5
(Math.multiply) // function Math.multiply 5
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Math.multiply 5
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_124
D=A
@LT_SUB
0;JMP
(RET_LT_124)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_125
D=A
@GT_SUB
0;JMP
(RET_GT_125)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_126
D=A
@GT_SUB
0;JMP
(RET_GT_126)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_127
D=A
@LT_SUB
0;JMP
(RET_LT_127)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.abs 1
@RET_CALL_128
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_128)

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.abs 1
@RET_CALL_129
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_129)

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_130
D=A
@LT_SUB
0;JMP
(RET_LT_130)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.multiply$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.multiply$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.multiply$IF_TRUE0) // label IF_TRUE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// label IF_FALSE0
(Math.multiply$IF_FALSE0) // label IF_FALSE0

// label WHILE_EXP0
(Math.multiply$WHILE_EXP0) // label WHILE_EXP0

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 1
@ARG // push argument 1
A=M+1
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

// lt
@RET_LT_131
D=A
@LT_SUB
0;JMP
(RET_LT_131)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.multiply$WHILE_END0
D;JNE // jump if not zero

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_132
D=A
@EQ_SUB
0;JMP
(RET_EQ_132)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.multiply$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Math.multiply$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Math.multiply$IF_TRUE1) // label IF_TRUE1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// label IF_FALSE1
(Math.multiply$IF_FALSE1) // label IF_FALSE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
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

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// goto WHILE_EXP0
@Math.multiply$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.multiply$WHILE_END0) // label WHILE_END0

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.multiply$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Math.multiply$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Math.multiply$IF_TRUE2) // label IF_TRUE2

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_FALSE2
(Math.multiply$IF_FALSE2) // label IF_FALSE2

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Math.divide 4
(Math.divide) // function Math.divide 4
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 1
@ARG // push argument 1 // function Math.divide 4
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_133
D=A
@EQ_SUB
0;JMP
(RET_EQ_133)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.divide$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.divide$IF_TRUE0) // label IF_TRUE0

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_134
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_134)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Math.divide$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_135
D=A
@LT_SUB
0;JMP
(RET_LT_135)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_136
D=A
@GT_SUB
0;JMP
(RET_GT_136)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_137
D=A
@GT_SUB
0;JMP
(RET_GT_137)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_138
D=A
@LT_SUB
0;JMP
(RET_LT_138)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// call Math.abs 1
@RET_CALL_139
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_139)

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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.abs 1
@RET_CALL_140
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_140)

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// label WHILE_EXP0
(Math.divide$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_141
D=A
@LT_SUB
0;JMP
(RET_LT_141)

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$WHILE_END0
D;JNE // jump if not zero

// push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// lt
@RET_LT_142
D=A
@LT_SUB
0;JMP
(RET_LT_142)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Math.divide$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Math.divide$IF_TRUE1) // label IF_TRUE1

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// gt
@RET_GT_143
D=A
@GT_SUB
0;JMP
(RET_GT_143)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Math.divide$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Math.divide$IF_TRUE2) // label IF_TRUE2

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_FALSE2
(Math.divide$IF_FALSE2) // label IF_FALSE2

// label IF_FALSE1
(Math.divide$IF_FALSE1) // label IF_FALSE1

// goto WHILE_EXP0
@Math.divide$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.divide$WHILE_END0) // label WHILE_END0

// label WHILE_EXP1
(Math.divide$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// gt
@RET_GT_144
D=A
@GT_SUB
0;JMP
(RET_GT_144)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$WHILE_END1
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// gt
@RET_GT_145
D=A
@GT_SUB
0;JMP
(RET_GT_145)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Math.divide$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Math.divide$IF_TRUE3) // label IF_TRUE3

// push local 1
@LCL // push local 1
A=M+1
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

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Pong/Math.vm)
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

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// label IF_FALSE3
(Math.divide$IF_FALSE3) // label IF_FALSE3

// push local 0
@LCL // push local 0
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP1
@Math.divide$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Math.divide$WHILE_END1) // label WHILE_END1

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.divide$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Math.divide$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Math.divide$IF_TRUE4) // label IF_TRUE4

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label IF_FALSE4
(Math.divide$IF_FALSE4) // label IF_FALSE4

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Math.sqrt 4
(Math.sqrt) // function Math.sqrt 4
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Math.sqrt 4
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_146
D=A
@LT_SUB
0;JMP
(RET_LT_146)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.sqrt$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.sqrt$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.sqrt$IF_TRUE0) // label IF_TRUE0

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_147
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_147)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Math.sqrt$IF_FALSE0) // label IF_FALSE0

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP0
(Math.sqrt$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// gt
@RET_GT_148
D=A
@GT_SUB
0;JMP
(RET_GT_148)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.sqrt$WHILE_END0
D;JNE // jump if not zero

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push static 0
@16 // push static 0 (static ../projects/13/Pong/Math.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_149
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_149)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_150
D=A
@GT_SUB
0;JMP
(RET_GT_150)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_151
D=A
@LT_SUB
0;JMP
(RET_LT_151)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.sqrt$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Math.sqrt$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Math.sqrt$IF_TRUE1) // label IF_TRUE1

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// label IF_FALSE1
(Math.sqrt$IF_FALSE1) // label IF_FALSE1

// push local 0
@LCL // push local 0
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.sqrt$WHILE_END0) // label WHILE_END0

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Math.max 0
(Math.max) // function Math.max 0

// push argument 0
@ARG // push argument 0 // function Math.max 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_152
D=A
@GT_SUB
0;JMP
(RET_GT_152)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.max$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.max$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.max$IF_TRUE0) // label IF_TRUE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// label IF_FALSE0
(Math.max$IF_FALSE0) // label IF_FALSE0

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Math.min 0
(Math.min) // function Math.min 0

// push argument 0
@ARG // push argument 0 // function Math.min 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_153
D=A
@LT_SUB
0;JMP
(RET_LT_153)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.min$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.min$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.min$IF_TRUE0) // label IF_TRUE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// label IF_FALSE0
(Math.min$IF_FALSE0) // label IF_FALSE0

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Memory.init 0
(Memory.init) // function Memory.init 0

// push constant 0
@SP // push constant 0 // function Memory.init 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@18
M=D

// push constant 4112
@4112 // push constant 4112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@19
M=D

// push constant 16383
@16383 // push constant 16383 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@20
M=D

// push static 1
@19 // push static 1 (static ../projects/13/Pong/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@18 // push static 0 (static ../projects/13/Pong/Memory.vm)
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

// push static 2
@20 // push static 2 (static ../projects/13/Pong/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@19 // push static 1 (static ../projects/13/Pong/Memory.vm)
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

// push static 1
@19 // push static 1 (static ../projects/13/Pong/Memory.vm)
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

// push static 0
@18 // push static 0 (static ../projects/13/Pong/Memory.vm)
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

// push static 1
@19 // push static 1 (static ../projects/13/Pong/Memory.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// function Memory.peek 0
(Memory.peek) // function Memory.peek 0

// push argument 0
@ARG // push argument 0 // function Memory.peek 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push static 0
@18 // push static 0 (static ../projects/13/Pong/Memory.vm)
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

// function Memory.poke 0
(Memory.poke) // function Memory.poke 0

// push argument 0
@ARG // push argument 0 // function Memory.poke 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push static 0
@18 // push static 0 (static ../projects/13/Pong/Memory.vm)
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

// function Memory.alloc 2
(Memory.alloc) // function Memory.alloc 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Memory.alloc 2
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_154
D=A
@LT_SUB
0;JMP
(RET_LT_154)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Memory.alloc$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Memory.alloc$IF_TRUE0) // label IF_TRUE0

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_155
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_155)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Memory.alloc$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_156
D=A
@EQ_SUB
0;JMP
(RET_EQ_156)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Memory.alloc$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Memory.alloc$IF_TRUE1) // label IF_TRUE1

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// label IF_FALSE1
(Memory.alloc$IF_FALSE1) // label IF_FALSE1

// push static 1
@19 // push static 1 (static ../projects/13/Pong/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP0
(Memory.alloc$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 2
@20 // push static 2 (static ../projects/13/Pong/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_157
D=A
@LT_SUB
0;JMP
(RET_LT_157)

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_158
D=A
@LT_SUB
0;JMP
(RET_LT_158)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$WHILE_END0
D;JNE // jump if not zero

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_159
D=A
@EQ_SUB
0;JMP
(RET_EQ_159)

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 2
@20 // push static 2 (static ../projects/13/Pong/Memory.vm)
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

// gt
@RET_GT_160
D=A
@GT_SUB
0;JMP
(RET_GT_160)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push local 1
@LCL // push local 1
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_161
D=A
@EQ_SUB
0;JMP
(RET_EQ_161)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Memory.alloc$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Memory.alloc$IF_TRUE2) // label IF_TRUE2

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto IF_END2
@Memory.alloc$IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Memory.alloc$IF_FALSE2) // label IF_FALSE2

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
A=M
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push local 1
@LCL // push local 1
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push local 1
@LCL // push local 1
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

// push local 1
@LCL // push local 1
A=M+1
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// eq
@RET_EQ_162
D=A
@EQ_SUB
0;JMP
(RET_EQ_162)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Memory.alloc$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Memory.alloc$IF_TRUE3) // label IF_TRUE3

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// goto IF_END3
@Memory.alloc$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Memory.alloc$IF_FALSE3) // label IF_FALSE3

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push local 1
@LCL // push local 1
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

// label IF_END3
(Memory.alloc$IF_END3) // label IF_END3

// label IF_END2
(Memory.alloc$IF_END2) // label IF_END2

// goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Memory.alloc$WHILE_END0) // label WHILE_END0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
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

// push static 2
@20 // push static 2 (static ../projects/13/Pong/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// gt
@RET_GT_163
D=A
@GT_SUB
0;JMP
(RET_GT_163)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Memory.alloc$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Memory.alloc$IF_TRUE4) // label IF_TRUE4

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_164
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_164)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE4
(Memory.alloc$IF_FALSE4) // label IF_FALSE4

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// gt
@RET_GT_165
D=A
@GT_SUB
0;JMP
(RET_GT_165)

// if-goto IF_TRUE5
@SP // if-goto IF_TRUE5
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE5
D;JNE // jump if not zero

// goto IF_FALSE5
@Memory.alloc$IF_FALSE5 // goto IF_FALSE5
0;JMP // unconditional jump

// label IF_TRUE5
(Memory.alloc$IF_TRUE5) // label IF_TRUE5

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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push argument 0
@ARG // push argument 0
A=M
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// eq
@RET_EQ_166
D=A
@EQ_SUB
0;JMP
(RET_EQ_166)

// if-goto IF_TRUE6
@SP // if-goto IF_TRUE6
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE6
D;JNE // jump if not zero

// goto IF_FALSE6
@Memory.alloc$IF_FALSE6 // goto IF_FALSE6
0;JMP // unconditional jump

// label IF_TRUE6
(Memory.alloc$IF_TRUE6) // label IF_TRUE6

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// goto IF_END6
@Memory.alloc$IF_END6 // goto IF_END6
0;JMP // unconditional jump

// label IF_FALSE6
(Memory.alloc$IF_FALSE6) // label IF_FALSE6

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// label IF_END6
(Memory.alloc$IF_END6) // label IF_END6

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// goto IF_END5
@Memory.alloc$IF_END5 // goto IF_END5
0;JMP // unconditional jump

// label IF_FALSE5
(Memory.alloc$IF_FALSE5) // label IF_FALSE5

// label IF_END5
(Memory.alloc$IF_END5) // label IF_END5

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_167
D=A
@LT_SUB
0;JMP
(RET_LT_167)

// if-goto IF_TRUE7
@SP // if-goto IF_TRUE7
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.alloc$IF_TRUE7
D;JNE // jump if not zero

// goto IF_FALSE7
@Memory.alloc$IF_FALSE7 // goto IF_FALSE7
0;JMP // unconditional jump

// label IF_TRUE7
(Memory.alloc$IF_TRUE7) // label IF_TRUE7

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_168
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_168)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE7
(Memory.alloc$IF_FALSE7) // label IF_FALSE7

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// return
@RETURN_SUB
0;JMP

// function Memory.deAlloc 2
(Memory.deAlloc) // function Memory.deAlloc 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Memory.deAlloc 2
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push local 1
@LCL // push local 1
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_169
D=A
@EQ_SUB
0;JMP
(RET_EQ_169)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.deAlloc$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Memory.deAlloc$IF_TRUE0) // label IF_TRUE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
A=M
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

// goto IF_END0
@Memory.deAlloc$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Memory.deAlloc$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
A=M
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push local 1
@LCL // push local 1
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push local 1
@LCL // push local 1
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

// push local 1
@LCL // push local 1
A=M+1
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// eq
@RET_EQ_170
D=A
@EQ_SUB
0;JMP
(RET_EQ_170)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.deAlloc$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Memory.deAlloc$IF_TRUE1) // label IF_TRUE1

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// goto IF_END1
@Memory.deAlloc$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Memory.deAlloc$IF_FALSE1) // label IF_FALSE1

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push local 1
@LCL // push local 1
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

// label IF_END1
(Memory.deAlloc$IF_END1) // label IF_END1

// label IF_END0
(Memory.deAlloc$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Output.init 0
(Output.init) // function Output.init 0

// push constant 16384
@16384 // push constant 16384 // function Output.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 4
@SP // pop static 4
AM=M-1
D=M
@25
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@21
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_171
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_171)

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@24
M=D

// call Output.initMap 0
@RET_CALL_172
D=A
@CALL_Output.initMap_0
0;JMP
(RET_CALL_172)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output._createShiftedMap 0
@RET_CALL_173
D=A
@CALL_Output._createShiftedMap_0
0;JMP
(RET_CALL_173)

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

// function Output.initMap 0
(Output.initMap) // function Output.initMap 0

// push constant 127
@127 // push constant 127 // function Output.initMap 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Array.new 1
@RET_CALL_174
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_174)

// pop static 5
@SP // pop static 5
AM=M-1
D=M
@26
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_175
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_175)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_176
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_176)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 33
@33 // push constant 33 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_177
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_177)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 34
@34 // push constant 34 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_178
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_178)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_179
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_179)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 36
@36 // push constant 36 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_180
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_180)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 37
@37 // push constant 37 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_181
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_181)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 38
@38 // push constant 38 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_182
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_182)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 39
@39 // push constant 39 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_183
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_183)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 40
@40 // push constant 40 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_184
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_184)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 41
@41 // push constant 41 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_185
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_185)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 42
@42 // push constant 42 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_186
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_186)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 43
@43 // push constant 43 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_187
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_187)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_188
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_188)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_189
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_189)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 46
@46 // push constant 46 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_190
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_190)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 47
@47 // push constant 47 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_191
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_191)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_192
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_192)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 14
@14 // push constant 14 (constant)
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

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_193
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_193)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_194
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_194)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_195
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_195)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 52
@52 // push constant 52 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 26
@26 // push constant 26 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 25
@25 // push constant 25 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_196
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_196)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 53
@53 // push constant 53 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_197
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_197)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_198
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_198)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_199
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_199)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 56
@56 // push constant 56 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_200
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_200)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 57
@57 // push constant 57 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 62
@62 // push constant 62 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_201
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_201)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_202
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_202)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_203
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_203)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_204
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_204)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 61
@61 // push constant 61 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_205
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_205)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 62
@62 // push constant 62 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_206
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_206)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 64
@64 // push constant 64 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_207
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_207)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_208
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_208)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 65
@65 // push constant 65 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_209
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_209)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 66
@66 // push constant 66 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_210
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_210)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 67
@67 // push constant 67 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_211
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_211)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 68
@68 // push constant 68 (constant)
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

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_212
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_212)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 69
@69 // push constant 69 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 11
@11 // push constant 11 (constant)
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

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_213
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_213)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 70
@70 // push constant 70 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 11
@11 // push constant 11 (constant)
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

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_214
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_214)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 71
@71 // push constant 71 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_215
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_215)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 72
@72 // push constant 72 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_216
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_216)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 73
@73 // push constant 73 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_217
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_217)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 74
@74 // push constant 74 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_218
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_218)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 75
@75 // push constant 75 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
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

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_219
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_219)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 76
@76 // push constant 76 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_220
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_220)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 77
@77 // push constant 77 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 33
@33 // push constant 33 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_221
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_221)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 78
@78 // push constant 78 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_222
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_222)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 79
@79 // push constant 79 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_223
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_223)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 80
@80 // push constant 80 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_224
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_224)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 81
@81 // push constant 81 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 59
@59 // push constant 59 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_225
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_225)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_226
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_226)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 83
@83 // push constant 83 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_227
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_227)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 84
@84 // push constant 84 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_228
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_228)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 85
@85 // push constant 85 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_229
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_229)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 86
@86 // push constant 86 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_230
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_230)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 87
@87 // push constant 87 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_231
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_231)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 88
@88 // push constant 88 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_232
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_232)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 89
@89 // push constant 89 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_233
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_233)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 90
@90 // push constant 90 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 35
@35 // push constant 35 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_234
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_234)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 91
@91 // push constant 91 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_235
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_235)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 92
@92 // push constant 92 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_236
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_236)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 93
@93 // push constant 93 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_237
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_237)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 94
@94 // push constant 94 (constant)
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

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_238
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_238)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 95
@95 // push constant 95 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_239
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_239)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 96
@96 // push constant 96 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_240
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_240)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_241
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_241)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
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

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_242
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_242)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_243
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_243)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_244
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_244)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_245
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_245)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 102
@102 // push constant 102 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 38
@38 // push constant 38 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_246
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_246)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 103
@103 // push constant 103 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 62
@62 // push constant 62 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_247
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_247)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_248
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_248)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_249
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_249)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 106
@106 // push constant 106 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 56
@56 // push constant 56 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_250
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_250)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 107
@107 // push constant 107 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
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

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_251
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_251)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 108
@108 // push constant 108 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_252
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_252)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 109
@109 // push constant 109 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 29
@29 // push constant 29 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 43
@43 // push constant 43 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 43
@43 // push constant 43 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 43
@43 // push constant 43 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 43
@43 // push constant 43 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_253
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_253)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 29
@29 // push constant 29 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_254
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_254)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_255
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_255)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_256
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_256)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 113
@113 // push constant 113 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 62
@62 // push constant 62 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_257
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_257)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 29
@29 // push constant 29 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_258
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_258)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_259
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_259)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_260
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_260)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_261
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_261)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 118
@118 // push constant 118 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_262
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_262)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 119
@119 // push constant 119 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_263
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_263)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_264
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_264)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 121
@121 // push constant 121 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 62
@62 // push constant 62 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 24
@24 // push constant 24 (constant)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_265
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_265)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 122
@122 // push constant 122 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_266
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_266)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 123
@123 // push constant 123 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 56
@56 // push constant 56 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 56
@56 // push constant 56 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_267
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_267)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 124
@124 // push constant 124 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_268
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_268)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 125
@125 // push constant 125 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 56
@56 // push constant 56 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_269
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_269)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 126
@126 // push constant 126 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 38
@38 // push constant 38 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 25
@25 // push constant 25 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.create 12
@RET_CALL_270
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_270)

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

// function Output.create 1
(Output.create) // function Output.create 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 11
@11 // push constant 11 // function Output.create 1 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Array.new 1
@RET_CALL_271
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_271)

// pop local 0
@SP // pop local 0
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

// push static 5
@26 // push static 5 (static ../projects/13/Pong/Output.vm)
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

// push local 0
@LCL // push local 0
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 4
@ARG // push argument 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 5
@ARG // push argument 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 6
@ARG // push argument 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 7
@ARG // push argument 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 8
@ARG // push argument 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 9
@ARG // push argument 9 (&asm_segment)
D=M // d = *asm_segment
@9 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 10
@ARG // push argument 10 (&asm_segment)
D=M // d = *asm_segment
@10 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push argument 11
@ARG // push argument 11 (&asm_segment)
D=M // d = *asm_segment
@11 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// function Output._createShiftedMap 4
(Output._createShiftedMap) // function Output._createShiftedMap 4
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 127
@127 // push constant 127 // function Output._createShiftedMap 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Array.new 1
@RET_CALL_272
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_272)

// pop static 6
@SP // pop static 6
AM=M-1
D=M
@27
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// label WHILE_EXP0
(Output._createShiftedMap$WHILE_EXP0) // label WHILE_EXP0

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 127
@127 // push constant 127 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_273
D=A
@LT_SUB
0;JMP
(RET_LT_273)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output._createShiftedMap$WHILE_END0
D;JNE // jump if not zero

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push static 5
@26 // push static 5 (static ../projects/13/Pong/Output.vm)
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_274
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_274)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push static 6
@27 // push static 6 (static ../projects/13/Pong/Output.vm)
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

// push local 1
@LCL // push local 1
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

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// label WHILE_EXP1
(Output._createShiftedMap$WHILE_EXP1) // label WHILE_EXP1

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_275
D=A
@LT_SUB
0;JMP
(RET_LT_275)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output._createShiftedMap$WHILE_END1
D;JNE // jump if not zero

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 256
@256 // push constant 256 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_276
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_276)

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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// goto WHILE_EXP1
@Output._createShiftedMap$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Output._createShiftedMap$WHILE_END1) // label WHILE_END1

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_277
D=A
@EQ_SUB
0;JMP
(RET_EQ_277)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output._createShiftedMap$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output._createShiftedMap$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output._createShiftedMap$IF_TRUE0) // label IF_TRUE0

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// goto IF_END0
@Output._createShiftedMap$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output._createShiftedMap$IF_FALSE0) // label IF_FALSE0

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// label IF_END0
(Output._createShiftedMap$IF_END0) // label IF_END0

// goto WHILE_EXP0
@Output._createShiftedMap$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Output._createShiftedMap$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Output.getMap 1
(Output.getMap) // function Output.getMap 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Output.getMap 1
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_278
D=A
@LT_SUB
0;JMP
(RET_LT_278)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 126
@126 // push constant 126 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_279
D=A
@GT_SUB
0;JMP
(RET_GT_279)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.getMap$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.getMap$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.getMap$IF_TRUE0) // label IF_TRUE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// label IF_FALSE0
(Output.getMap$IF_FALSE0) // label IF_FALSE0

// push static 2
@23 // push static 2 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.getMap$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.getMap$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.getMap$IF_TRUE1) // label IF_TRUE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 5
@26 // push static 5 (static ../projects/13/Pong/Output.vm)
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto IF_END1
@Output.getMap$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Output.getMap$IF_FALSE1) // label IF_FALSE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 6
@27 // push static 6 (static ../projects/13/Pong/Output.vm)
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_END1
(Output.getMap$IF_END1) // label IF_END1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Output._drawChar 4
(Output._drawChar) // function Output._drawChar 4
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Output._drawChar 4
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call Output.getMap 1
@RET_CALL_280
D=A
@CALL_Output.getMap_1
0;JMP
(RET_CALL_280)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push static 1
@22 // push static 1 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP0
(Output._drawChar$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_281
D=A
@LT_SUB
0;JMP
(RET_LT_281)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output._drawChar$WHILE_END0
D;JNE // jump if not zero

// push static 2
@23 // push static 2 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output._drawChar$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output._drawChar$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output._drawChar$IF_TRUE0) // label IF_TRUE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 4
@25 // push static 4 (static ../projects/13/Pong/Output.vm)
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

// push constant 256
@256 // push constant 256 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// goto IF_END0
@Output._drawChar$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output._drawChar$IF_FALSE0) // label IF_FALSE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 4
@25 // push static 4 (static ../projects/13/Pong/Output.vm)
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

// push constant 255
@255 // push constant 255 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// label IF_END0
(Output._drawChar$IF_END0) // label IF_END0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 4
@25 // push static 4 (static ../projects/13/Pong/Output.vm)
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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 1
@LCL // push local 1
A=M+1
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// goto WHILE_EXP0
@Output._drawChar$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Output._drawChar$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Output.moveCursor 0
(Output.moveCursor) // function Output.moveCursor 0

// push argument 0
@ARG // push argument 0 // function Output.moveCursor 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_282
D=A
@LT_SUB
0;JMP
(RET_LT_282)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 22
@22 // push constant 22 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_283
D=A
@GT_SUB
0;JMP
(RET_GT_283)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_284
D=A
@LT_SUB
0;JMP
(RET_LT_284)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 63
@63 // push constant 63 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_285
D=A
@GT_SUB
0;JMP
(RET_GT_285)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.moveCursor$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.moveCursor$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.moveCursor$IF_TRUE0) // label IF_TRUE0

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_286
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_286)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Output.moveCursor$IF_FALSE0) // label IF_FALSE0

// push argument 1
@ARG // push argument 1
A=M+1
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

// call Math.divide 2
@RET_CALL_287
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_287)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@21
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 352
@352 // push constant 352 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_288
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_288)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
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

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
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

// call Math.multiply 2
@RET_CALL_289
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_289)

// eq
@RET_EQ_290
D=A
@EQ_SUB
0;JMP
(RET_EQ_290)

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output._drawChar 1
@RET_CALL_291
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_291)

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

// function Output.printChar 0
(Output.printChar) // function Output.printChar 0

// push argument 0
@ARG // push argument 0 // function Output.printChar 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call String.newLine 0
@RET_CALL_292
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_292)

// eq
@RET_EQ_293
D=A
@EQ_SUB
0;JMP
(RET_EQ_293)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.printChar$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.printChar$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.printChar$IF_TRUE0) // label IF_TRUE0

// call Output.println 0
@RET_CALL_294
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_294)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Output.printChar$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.printChar$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.backSpace 0
@RET_CALL_295
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_295)

// eq
@RET_EQ_296
D=A
@EQ_SUB
0;JMP
(RET_EQ_296)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.printChar$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.printChar$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.printChar$IF_TRUE1) // label IF_TRUE1

// call Output.backSpace 0
@RET_CALL_297
D=A
@CALL_Output.backSpace_0
0;JMP
(RET_CALL_297)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Output.printChar$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Output.printChar$IF_FALSE1) // label IF_FALSE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output._drawChar 1
@RET_CALL_298
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_298)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 2
@23 // push static 2 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.printChar$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Output.printChar$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Output.printChar$IF_TRUE2) // label IF_TRUE2

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
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

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@21
M=D

// push static 1
@22 // push static 1 (static ../projects/13/Pong/Output.vm)
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

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// label IF_FALSE2
(Output.printChar$IF_FALSE2) // label IF_FALSE2

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_299
D=A
@EQ_SUB
0;JMP
(RET_EQ_299)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.printChar$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Output.printChar$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Output.printChar$IF_TRUE3) // label IF_TRUE3

// call Output.println 0
@RET_CALL_300
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_300)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END3
@Output.printChar$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Output.printChar$IF_FALSE3) // label IF_FALSE3

// push static 2
@23 // push static 2 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// label IF_END3
(Output.printChar$IF_END3) // label IF_END3

// label IF_END1
(Output.printChar$IF_END1) // label IF_END1

// label IF_END0
(Output.printChar$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Output.printString 2
(Output.printString) // function Output.printString 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Output.printString 2
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call String.length 1
@RET_CALL_301
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_301)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(Output.printString$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_302
D=A
@LT_SUB
0;JMP
(RET_LT_302)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.printString$WHILE_END0
D;JNE // jump if not zero

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

// call String.charAt 2
@RET_CALL_303
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_303)

// call Output.printChar 1
@RET_CALL_304
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_304)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP0
@Output.printString$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Output.printString$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Output.printInt 0
(Output.printInt) // function Output.printInt 0

// push static 3
@24 // push static 3 // function Output.printInt 0 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.setInt 2
@RET_CALL_305
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_305)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 3
@24 // push static 3 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printString 1
@RET_CALL_306
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_306)

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

// function Output.println 0
(Output.println) // function Output.println 0

// push static 1
@22 // push static 1 // function Output.println 0 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 352
@352 // push constant 352 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
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

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@21
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// push static 1
@22 // push static 1 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 8128
@8128 // push constant 8128 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_307
D=A
@EQ_SUB
0;JMP
(RET_EQ_307)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.println$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.println$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.println$IF_TRUE0) // label IF_TRUE0

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// label IF_FALSE0
(Output.println$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Output.backSpace 0
(Output.backSpace) // function Output.backSpace 0

// push static 2
@23 // push static 2 // function Output.backSpace 0 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.backSpace$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.backSpace$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.backSpace$IF_TRUE0) // label IF_TRUE0

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_308
D=A
@GT_SUB
0;JMP
(RET_GT_308)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.backSpace$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.backSpace$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.backSpace$IF_TRUE1) // label IF_TRUE1

// push static 0
@21 // push static 0 (static ../projects/13/Pong/Output.vm)
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

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@21
M=D

// push static 1
@22 // push static 1 (static ../projects/13/Pong/Output.vm)
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

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// goto IF_END1
@Output.backSpace$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Output.backSpace$IF_FALSE1) // label IF_FALSE1

// push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@21
M=D

// push static 1
@22 // push static 1 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_309
D=A
@EQ_SUB
0;JMP
(RET_EQ_309)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.backSpace$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Output.backSpace$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Output.backSpace$IF_TRUE2) // label IF_TRUE2

// push constant 8128
@8128 // push constant 8128 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// label IF_FALSE2
(Output.backSpace$IF_FALSE2) // label IF_FALSE2

// push static 1
@22 // push static 1 (static ../projects/13/Pong/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 321
@321 // push constant 321 (constant)
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

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@22
M=D

// label IF_END1
(Output.backSpace$IF_END1) // label IF_END1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// goto IF_END0
@Output.backSpace$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.backSpace$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// label IF_END0
(Output.backSpace$IF_END0) // label IF_END0

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output._drawChar 1
@RET_CALL_310
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_310)

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

// function PongGame.new 0
(PongGame.new) // function PongGame.new 0

// push constant 7
@7 // push constant 7 // function PongGame.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_311
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_311)

// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// call Screen.clearScreen 0
@RET_CALL_312
D=A
@CALL_Screen.clearScreen_0
0;JMP
(RET_CALL_312)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 6
@THIS // pop this 6 (&asm_segment)
D=M
@6
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

// push constant 230
@230 // push constant 230 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 229
@229 // push constant 229 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push this 6
@THIS // push this 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Bat.new 4
@RET_CALL_313
D=A
@CALL_Bat.new_4
0;JMP
(RET_CALL_313)

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push constant 253
@253 // push constant 253 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 222
@222 // push constant 222 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 229
@229 // push constant 229 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Ball.new 6
@RET_CALL_314
D=A
@CALL_Ball.new_6
0;JMP
(RET_CALL_314)

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 400
@400 // push constant 400 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Ball.setDestination 3
@RET_CALL_315
D=A
@CALL_Ball.setDestination_3
0;JMP
(RET_CALL_315)

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

// push constant 238
@238 // push constant 238 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 240
@240 // push constant 240 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Screen.drawRectangle 4
@RET_CALL_316
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_316)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 22
@22 // push constant 22 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Output.moveCursor 2
@RET_CALL_317
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_317)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_318
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_318)

// push constant 83
@83 // push constant 83 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_319
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_319)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_320
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_320)

// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_321
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_321)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_322
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_322)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_323
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_323)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_324
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_324)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_325
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_325)

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_326
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_326)

// call Output.printString 1
@RET_CALL_327
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_327)

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

// pop this 3
@THIS // pop this 3 (&asm_segment)
D=M
@3
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 5
@THIS // pop this 5 (&asm_segment)
D=M
@5
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

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function PongGame.dispose 0
(PongGame.dispose) // function PongGame.dispose 0

// push argument 0
@ARG // push argument 0 // function PongGame.dispose 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.dispose 1
@RET_CALL_328
D=A
@CALL_Bat.dispose_1
0;JMP
(RET_CALL_328)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.dispose 1
@RET_CALL_329
D=A
@CALL_Ball.dispose_1
0;JMP
(RET_CALL_329)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_330
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_330)

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

// function PongGame.newInstance 0
(PongGame.newInstance) // function PongGame.newInstance 0

// call PongGame.new 0 // function PongGame.newInstance 0
@RET_CALL_331
D=A
@CALL_PongGame.new_0
0;JMP
(RET_CALL_331)
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@28
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function PongGame.getInstance 0
(PongGame.getInstance) // function PongGame.getInstance 0

// push static 0
@28 // push static 0 // function PongGame.getInstance 0 (static ../projects/13/Pong/PongGame.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function PongGame.run 1
(PongGame.run) // function PongGame.run 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function PongGame.run 1
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// label WHILE_EXP0
(PongGame.run$WHILE_EXP0) // label WHILE_EXP0

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

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
@PongGame.run$WHILE_END0
D;JNE // jump if not zero

// label WHILE_EXP1
(PongGame.run$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_332
D=A
@EQ_SUB
0;JMP
(RET_EQ_332)

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.run$WHILE_END1
D;JNE // jump if not zero

// call Keyboard.keyPressed 0
@RET_CALL_333
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_333)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.move 1
@RET_CALL_334
D=A
@CALL_Bat.move_1
0;JMP
(RET_CALL_334)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call PongGame.moveBall 1
@RET_CALL_335
D=A
@CALL_PongGame.moveBall_1
0;JMP
(RET_CALL_335)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.wait 1
@RET_CALL_336
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_336)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP1
@PongGame.run$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(PongGame.run$WHILE_END1) // label WHILE_END1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 130
@130 // push constant 130 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_337
D=A
@EQ_SUB
0;JMP
(RET_EQ_337)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.run$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@PongGame.run$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(PongGame.run$IF_TRUE0) // label IF_TRUE0

// push this 0
@THIS // push this 0
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

// call Bat.setDirection 2
@RET_CALL_338
D=A
@CALL_Bat.setDirection_2
0;JMP
(RET_CALL_338)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@PongGame.run$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(PongGame.run$IF_FALSE0) // label IF_FALSE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 132
@132 // push constant 132 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_339
D=A
@EQ_SUB
0;JMP
(RET_EQ_339)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.run$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@PongGame.run$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(PongGame.run$IF_TRUE1) // label IF_TRUE1

// push this 0
@THIS // push this 0
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

// call Bat.setDirection 2
@RET_CALL_340
D=A
@CALL_Bat.setDirection_2
0;JMP
(RET_CALL_340)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@PongGame.run$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(PongGame.run$IF_FALSE1) // label IF_FALSE1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 140
@140 // push constant 140 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_341
D=A
@EQ_SUB
0;JMP
(RET_EQ_341)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.run$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@PongGame.run$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(PongGame.run$IF_TRUE2) // label IF_TRUE2

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop this 3
@THIS // pop this 3 (&asm_segment)
D=M
@3
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

// label IF_FALSE2
(PongGame.run$IF_FALSE2) // label IF_FALSE2

// label IF_END1
(PongGame.run$IF_END1) // label IF_END1

// label IF_END0
(PongGame.run$IF_END0) // label IF_END0

// label WHILE_EXP2
(PongGame.run$WHILE_EXP2) // label WHILE_EXP2

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_342
D=A
@EQ_SUB
0;JMP
(RET_EQ_342)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END2
@SP // if-goto WHILE_END2
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.run$WHILE_END2
D;JNE // jump if not zero

// call Keyboard.keyPressed 0
@RET_CALL_343
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_343)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.move 1
@RET_CALL_344
D=A
@CALL_Bat.move_1
0;JMP
(RET_CALL_344)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call PongGame.moveBall 1
@RET_CALL_345
D=A
@CALL_PongGame.moveBall_1
0;JMP
(RET_CALL_345)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.wait 1
@RET_CALL_346
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_346)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP2
@PongGame.run$WHILE_EXP2 // goto WHILE_EXP2
0;JMP // unconditional jump

// label WHILE_END2
(PongGame.run$WHILE_END2) // label WHILE_END2

// goto WHILE_EXP0
@PongGame.run$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(PongGame.run$WHILE_END0) // label WHILE_END0

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.run$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@PongGame.run$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(PongGame.run$IF_TRUE3) // label IF_TRUE3

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_347
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_347)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_348
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_348)

// push constant 71
@71 // push constant 71 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_349
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_349)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_350
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_350)

// push constant 109
@109 // push constant 109 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_351
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_351)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_352
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_352)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_353
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_353)

// push constant 79
@79 // push constant 79 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_354
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_354)

// push constant 118
@118 // push constant 118 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_355
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_355)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_356
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_356)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_357
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_357)

// call Output.printString 1
@RET_CALL_358
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_358)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE3
(PongGame.run$IF_FALSE3) // label IF_FALSE3

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function PongGame.moveBall 5
(PongGame.moveBall) // function PongGame.moveBall 5
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function PongGame.moveBall 5
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.move 1
@RET_CALL_359
D=A
@CALL_Ball.move_1
0;JMP
(RET_CALL_359)

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_360
D=A
@GT_SUB
0;JMP
(RET_GT_360)

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 5
@THIS // push this 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// eq
@RET_EQ_361
D=A
@EQ_SUB
0;JMP
(RET_EQ_361)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.moveBall$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@PongGame.moveBall$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(PongGame.moveBall$IF_TRUE0) // label IF_TRUE0

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop this 5
@THIS // pop this 5 (&asm_segment)
D=M
@5
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.getLeft 1
@RET_CALL_362
D=A
@CALL_Bat.getLeft_1
0;JMP
(RET_CALL_362)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Bat.getRight 1
@RET_CALL_363
D=A
@CALL_Bat.getRight_1
0;JMP
(RET_CALL_363)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.getLeft 1
@RET_CALL_364
D=A
@CALL_Ball.getLeft_1
0;JMP
(RET_CALL_364)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Ball.getRight 1
@RET_CALL_365
D=A
@CALL_Ball.getRight_1
0;JMP
(RET_CALL_365)

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_366
D=A
@EQ_SUB
0;JMP
(RET_EQ_366)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.moveBall$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@PongGame.moveBall$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(PongGame.moveBall$IF_TRUE1) // label IF_TRUE1

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_367
D=A
@GT_SUB
0;JMP
(RET_GT_367)

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_368
D=A
@LT_SUB
0;JMP
(RET_LT_368)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// pop this 3
@THIS // pop this 3 (&asm_segment)
D=M
@3
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

// push this 3
@THIS // push this 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.moveBall$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@PongGame.moveBall$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(PongGame.moveBall$IF_TRUE2) // label IF_TRUE2

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// lt
@RET_LT_369
D=A
@LT_SUB
0;JMP
(RET_LT_369)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.moveBall$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@PongGame.moveBall$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(PongGame.moveBall$IF_TRUE3) // label IF_TRUE3

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto IF_END3
@PongGame.moveBall$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(PongGame.moveBall$IF_FALSE3) // label IF_FALSE3

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
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

// gt
@RET_GT_370
D=A
@GT_SUB
0;JMP
(RET_GT_370)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@PongGame.moveBall$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@PongGame.moveBall$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(PongGame.moveBall$IF_TRUE4) // label IF_TRUE4

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_FALSE4
(PongGame.moveBall$IF_FALSE4) // label IF_FALSE4

// label IF_END3
(PongGame.moveBall$IF_END3) // label IF_END3

// push this 6
@THIS // push this 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 6
@THIS // pop this 6 (&asm_segment)
D=M
@6
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

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 6
@THIS // push this 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Bat.setWidth 2
@RET_CALL_371
D=A
@CALL_Bat.setWidth_2
0;JMP
(RET_CALL_371)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 4
@THIS // push this 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 4
@THIS // pop this 4 (&asm_segment)
D=M
@4
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

// push constant 22
@22 // push constant 22 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_372
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_372)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push this 4
@THIS // push this 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Output.printInt 1
@RET_CALL_373
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_373)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE2
(PongGame.moveBall$IF_FALSE2) // label IF_FALSE2

// label IF_FALSE1
(PongGame.moveBall$IF_FALSE1) // label IF_FALSE1

// push this 1
@THIS // push this 1
A=M+1
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

// call Ball.bounce 2
@RET_CALL_374
D=A
@CALL_Ball.bounce_2
0;JMP
(RET_CALL_374)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(PongGame.moveBall$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.init 2
(Screen.init) // function Screen.init 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 16384
@16384 // push constant 16384 // function Screen.init 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 1
@SP // pop static 1
AM=M-1
D=M
@30
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@31
M=D

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_375
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_375)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@29
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

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

// label WHILE_EXP0
(Screen.init$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_376
D=A
@LT_SUB
0;JMP
(RET_LT_376)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.init$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// push local 0
@LCL // push local 0
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

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// push local 0
@LCL // push local 0
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

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// goto WHILE_EXP0
@Screen.init$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.init$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.clearScreen 1
(Screen.clearScreen) // function Screen.clearScreen 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// label WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0 // function Screen.clearScreen 1
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 8192
@8192 // push constant 8192 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_377
D=A
@LT_SUB
0;JMP
(RET_LT_377)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.clearScreen$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@30 // push static 1 (static ../projects/13/Pong/Screen.vm)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.clearScreen$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen._updateLocation 0
(Screen._updateLocation) // function Screen._updateLocation 0

// push static 2
@31 // push static 2 // function Screen._updateLocation 0 (static ../projects/13/Pong/Screen.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen._updateLocation$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen._updateLocation$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen._updateLocation$IF_TRUE0) // label IF_TRUE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@30 // push static 1 (static ../projects/13/Pong/Screen.vm)
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

// push static 1
@30 // push static 1 (static ../projects/13/Pong/Screen.vm)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

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

// goto IF_END0
@Screen._updateLocation$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Screen._updateLocation$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@30 // push static 1 (static ../projects/13/Pong/Screen.vm)
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

// push static 1
@30 // push static 1 (static ../projects/13/Pong/Screen.vm)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

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

// label IF_END0
(Screen._updateLocation$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.setColor 0
(Screen.setColor) // function Screen.setColor 0

// push argument 0
@ARG // push argument 0 // function Screen.setColor 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop static 2
@SP // pop static 2
AM=M-1
D=M
@31
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.drawPixel 3
(Screen.drawPixel) // function Screen.drawPixel 3
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Screen.drawPixel 3
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_378
D=A
@LT_SUB
0;JMP
(RET_LT_378)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_379
D=A
@GT_SUB
0;JMP
(RET_GT_379)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_380
D=A
@LT_SUB
0;JMP
(RET_LT_380)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 255
@255 // push constant 255 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_381
D=A
@GT_SUB
0;JMP
(RET_GT_381)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawPixel$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.drawPixel$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.drawPixel$IF_TRUE0) // label IF_TRUE0

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_382
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_382)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.drawPixel$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_383
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_383)

// pop local 0
@SP // pop local 0
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_384
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_384)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_385
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_385)

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

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// call Screen._updateLocation 2
@RET_CALL_386
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_386)

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

// function Screen._drawConditional 0
(Screen._drawConditional) // function Screen._drawConditional 0

// push argument 2
@ARG // push argument 2 // function Screen._drawConditional 0 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D
// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen._drawConditional$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen._drawConditional$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen._drawConditional$IF_TRUE0) // label IF_TRUE0

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Screen.drawPixel 2
@RET_CALL_387
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_387)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Screen._drawConditional$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Screen._drawConditional$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Screen.drawPixel 2
@RET_CALL_388
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_388)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(Screen._drawConditional$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.drawLine 11
(Screen.drawLine) // function Screen.drawLine 11
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Screen.drawLine 11
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_389
D=A
@LT_SUB
0;JMP
(RET_LT_389)

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_390
D=A
@GT_SUB
0;JMP
(RET_GT_390)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_391
D=A
@LT_SUB
0;JMP
(RET_LT_391)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 255
@255 // push constant 255 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_392
D=A
@GT_SUB
0;JMP
(RET_GT_392)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawLine$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.drawLine$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.drawLine$IF_TRUE0) // label IF_TRUE0

// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_393
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_393)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.drawLine$IF_FALSE0) // label IF_FALSE0

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
A=M
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

// call Math.abs 1
@RET_CALL_394
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_394)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
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

// call Math.abs 1
@RET_CALL_395
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_395)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_396
D=A
@LT_SUB
0;JMP
(RET_LT_396)

// pop local 6
@LCL // pop local 6 (&asm_segment)
D=M
@6
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

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_397
D=A
@LT_SUB
0;JMP
(RET_LT_397)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_398
D=A
@LT_SUB
0;JMP
(RET_LT_398)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawLine$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.drawLine$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.drawLine$IF_TRUE1) // label IF_TRUE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop argument 2
@ARG // pop argument 2 (&asm_segment)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop argument 3
@ARG // pop argument 3 (&asm_segment)
D=M
@3
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

// label IF_FALSE1
(Screen.drawLine$IF_FALSE1) // label IF_FALSE1

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawLine$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Screen.drawLine$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Screen.drawLine$IF_TRUE2) // label IF_TRUE2

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 8
@LCL // pop local 8 (&asm_segment)
D=M
@8
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_399
D=A
@GT_SUB
0;JMP
(RET_GT_399)

// pop local 7
@LCL // pop local 7 (&asm_segment)
D=M
@7
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

// goto IF_END2
@Screen.drawLine$IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Screen.drawLine$IF_FALSE2) // label IF_FALSE2

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 8
@LCL // pop local 8 (&asm_segment)
D=M
@8
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_400
D=A
@GT_SUB
0;JMP
(RET_GT_400)

// pop local 7
@LCL // pop local 7 (&asm_segment)
D=M
@7
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

// label IF_END2
(Screen.drawLine$IF_END2) // label IF_END2

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_401
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_401)

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 5
@LCL // pop local 5 (&asm_segment)
D=M
@5
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_402
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_402)

// pop local 9
@LCL // pop local 9 (&asm_segment)
D=M
@9
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Math.multiply 2
@RET_CALL_403
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_403)

// pop local 10
@LCL // pop local 10 (&asm_segment)
D=M
@10
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

// push local 1
@LCL // push local 1
A=M+1
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

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Screen._drawConditional 3
@RET_CALL_404
D=A
@CALL_Screen._drawConditional_3
0;JMP
(RET_CALL_404)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Screen.drawLine$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 8
@LCL // push local 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_405
D=A
@LT_SUB
0;JMP
(RET_LT_405)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawLine$WHILE_END0
D;JNE // jump if not zero

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_406
D=A
@LT_SUB
0;JMP
(RET_LT_406)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawLine$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Screen.drawLine$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Screen.drawLine$IF_TRUE3) // label IF_TRUE3

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 9
@LCL // push local 9 (&asm_segment)
D=M // d = *asm_segment
@9 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 5
@LCL // pop local 5 (&asm_segment)
D=M
@5
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

// goto IF_END3
@Screen.drawLine$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Screen.drawLine$IF_FALSE3) // label IF_FALSE3

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 10
@LCL // push local 10 (&asm_segment)
D=M // d = *asm_segment
@10 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 5
@LCL // pop local 5 (&asm_segment)
D=M
@5
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

// push local 7
@LCL // push local 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawLine$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Screen.drawLine$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Screen.drawLine$IF_TRUE4) // label IF_TRUE4

// push local 0
@LCL // push local 0
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto IF_END4
@Screen.drawLine$IF_END4 // goto IF_END4
0;JMP // unconditional jump

// label IF_FALSE4
(Screen.drawLine$IF_FALSE4) // label IF_FALSE4

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_END4
(Screen.drawLine$IF_END4) // label IF_END4

// label IF_END3
(Screen.drawLine$IF_END3) // label IF_END3

// push local 1
@LCL // push local 1
A=M+1
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 1
@LCL // push local 1
A=M+1
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

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Screen._drawConditional 3
@RET_CALL_407
D=A
@CALL_Screen._drawConditional_3
0;JMP
(RET_CALL_407)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@Screen.drawLine$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.drawLine$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.drawRectangle 9
(Screen.drawRectangle) // function Screen.drawRectangle 9
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Screen.drawRectangle 9
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_408
D=A
@GT_SUB
0;JMP
(RET_GT_408)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_409
D=A
@GT_SUB
0;JMP
(RET_GT_409)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_410
D=A
@LT_SUB
0;JMP
(RET_LT_410)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_411
D=A
@GT_SUB
0;JMP
(RET_GT_411)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_412
D=A
@LT_SUB
0;JMP
(RET_LT_412)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 255
@255 // push constant 255 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_413
D=A
@GT_SUB
0;JMP
(RET_GT_413)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawRectangle$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.drawRectangle$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0) // label IF_TRUE0

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_414
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_414)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_415
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_415)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_416
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_416)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop local 7
@LCL // pop local 7 (&asm_segment)
D=M
@7
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_417
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_417)

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_418
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_418)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop local 8
@LCL // pop local 8 (&asm_segment)
D=M
@8
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

// push local 7
@LCL // push local 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop local 6
@LCL // pop local 6 (&asm_segment)
D=M
@6
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

// push local 8
@LCL // push local 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// pop local 5
@LCL // pop local 5 (&asm_segment)
D=M
@5
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_419
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_419)

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0) // label WHILE_EXP0

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_420
D=A
@GT_SUB
0;JMP
(RET_GT_420)

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
@Screen.drawRectangle$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_421
D=A
@EQ_SUB
0;JMP
(RET_EQ_421)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawRectangle$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.drawRectangle$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1) // label IF_TRUE1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// call Screen._updateLocation 2
@RET_CALL_422
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_422)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Screen.drawRectangle$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1) // label IF_FALSE1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Screen._updateLocation 2
@RET_CALL_423
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_423)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_424
D=A
@LT_SUB
0;JMP
(RET_LT_424)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawRectangle$WHILE_END1
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call Screen._updateLocation 2
@RET_CALL_425
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_425)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Screen.drawRectangle$WHILE_END1) // label WHILE_END1

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Screen._updateLocation 2
@RET_CALL_426
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_426)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Screen.drawRectangle$IF_END1) // label IF_END1

// push argument 1
@ARG // push argument 1
A=M+1
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

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.drawRectangle$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen._drawHorizontal 11
(Screen._drawHorizontal) // function Screen._drawHorizontal 11
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 1
@ARG // push argument 1 // function Screen._drawHorizontal 11
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.min 2
@RET_CALL_427
D=A
@CALL_Math.min_2
0;JMP
(RET_CALL_427)

// pop local 7
@LCL // pop local 7 (&asm_segment)
D=M
@7
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Math.max 2
@RET_CALL_428
D=A
@CALL_Math.max_2
0;JMP
(RET_CALL_428)

// pop local 8
@LCL // pop local 8 (&asm_segment)
D=M
@8
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// gt
@RET_GT_429
D=A
@GT_SUB
0;JMP
(RET_GT_429)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 256
@256 // push constant 256 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_430
D=A
@LT_SUB
0;JMP
(RET_LT_430)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push local 7
@LCL // push local 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 512
@512 // push constant 512 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_431
D=A
@LT_SUB
0;JMP
(RET_LT_431)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// push local 8
@LCL // push local 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// gt
@RET_GT_432
D=A
@GT_SUB
0;JMP
(RET_GT_432)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen._drawHorizontal$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen._drawHorizontal$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen._drawHorizontal$IF_TRUE0) // label IF_TRUE0

// push local 7
@LCL // push local 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call Math.max 2
@RET_CALL_433
D=A
@CALL_Math.max_2
0;JMP
(RET_CALL_433)

// pop local 7
@LCL // pop local 7 (&asm_segment)
D=M
@7
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

// push local 8
@LCL // push local 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.min 2
@RET_CALL_434
D=A
@CALL_Math.min_2
0;JMP
(RET_CALL_434)

// pop local 8
@LCL // pop local 8 (&asm_segment)
D=M
@8
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

// push local 7
@LCL // push local 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_435
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_435)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 7
@LCL // push local 7 (&asm_segment)
D=M // d = *asm_segment
@7 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_436
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_436)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop local 9
@LCL // pop local 9 (&asm_segment)
D=M
@9
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

// push local 8
@LCL // push local 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_437
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_437)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 8
@LCL // push local 8 (&asm_segment)
D=M // d = *asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_438
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_438)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop local 10
@LCL // pop local 10 (&asm_segment)
D=M
@10
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

// push local 9
@LCL // push local 9 (&asm_segment)
D=M // d = *asm_segment
@9 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop local 5
@LCL // pop local 5 (&asm_segment)
D=M
@5
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

// push local 10
@LCL // push local 10 (&asm_segment)
D=M // d = *asm_segment
@10 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push static 0
@29 // push static 0 (static ../projects/13/Pong/Screen.vm)
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

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_439
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_439)

// push local 1
@LCL // push local 1
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
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

// pop local 6
@LCL // pop local 6 (&asm_segment)
D=M
@6
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push local 6
@LCL // push local 6 (&asm_segment)
D=M // d = *asm_segment
@6 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_440
D=A
@EQ_SUB
0;JMP
(RET_EQ_440)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen._drawHorizontal$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen._drawHorizontal$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen._drawHorizontal$IF_TRUE1) // label IF_TRUE1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// call Screen._updateLocation 2
@RET_CALL_441
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_441)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Screen._drawHorizontal$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Screen._drawHorizontal$IF_FALSE1) // label IF_FALSE1

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 5
@LCL // push local 5 (&asm_segment)
D=M // d = *asm_segment
@5 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Screen._updateLocation 2
@RET_CALL_442
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_442)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP0
(Screen._drawHorizontal$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_443
D=A
@LT_SUB
0;JMP
(RET_LT_443)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen._drawHorizontal$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call Screen._updateLocation 2
@RET_CALL_444
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_444)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// goto WHILE_EXP0
@Screen._drawHorizontal$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen._drawHorizontal$WHILE_END0) // label WHILE_END0

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Screen._updateLocation 2
@RET_CALL_445
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_445)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Screen._drawHorizontal$IF_END1) // label IF_END1

// label IF_FALSE0
(Screen._drawHorizontal$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen._drawSymetric 0
(Screen._drawSymetric) // function Screen._drawSymetric 0

// push argument 1
@ARG // push argument 1 // function Screen._drawSymetric 0
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D
// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen._drawHorizontal 3
@RET_CALL_446
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_446)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen._drawHorizontal 3
@RET_CALL_447
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_447)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen._drawHorizontal 3
@RET_CALL_448
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_448)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 3
@ARG // push argument 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// call Screen._drawHorizontal 3
@RET_CALL_449
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_449)

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

// function Screen.drawCircle 3
(Screen.drawCircle) // function Screen.drawCircle 3
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Screen.drawCircle 3
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_450
D=A
@LT_SUB
0;JMP
(RET_LT_450)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_451
D=A
@GT_SUB
0;JMP
(RET_GT_451)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_452
D=A
@LT_SUB
0;JMP
(RET_LT_452)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 255
@255 // push constant 255 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_453
D=A
@GT_SUB
0;JMP
(RET_GT_453)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawCircle$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.drawCircle$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.drawCircle$IF_TRUE0) // label IF_TRUE0

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_454
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_454)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.drawCircle$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_455
D=A
@LT_SUB
0;JMP
(RET_LT_455)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 511
@511 // push constant 511 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_456
D=A
@GT_SUB
0;JMP
(RET_GT_456)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_457
D=A
@LT_SUB
0;JMP
(RET_LT_457)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 255
@255 // push constant 255 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_458
D=A
@GT_SUB
0;JMP
(RET_GT_458)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawCircle$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.drawCircle$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.drawCircle$IF_TRUE1) // label IF_TRUE1

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_459
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_459)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE1
(Screen.drawCircle$IF_FALSE1) // label IF_FALSE1

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push argument 1
@ARG // push argument 1
A=M+1
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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Screen._drawSymetric 4
@RET_CALL_460
D=A
@CALL_Screen._drawSymetric_4
0;JMP
(RET_CALL_460)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
A=M+1
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

// gt
@RET_GT_461
D=A
@GT_SUB
0;JMP
(RET_GT_461)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawCircle$WHILE_END0
D;JNE // jump if not zero

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_462
D=A
@LT_SUB
0;JMP
(RET_LT_462)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.drawCircle$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Screen.drawCircle$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Screen.drawCircle$IF_TRUE2) // label IF_TRUE2

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.multiply 2
@RET_CALL_463
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_463)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// goto IF_END2
@Screen.drawCircle$IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Screen.drawCircle$IF_FALSE2) // label IF_FALSE2

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
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

// call Math.multiply 2
@RET_CALL_464
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_464)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 1
@LCL // push local 1
A=M+1
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label IF_END2
(Screen.drawCircle$IF_END2) // label IF_END2

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
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

// push argument 1
@ARG // push argument 1
A=M+1
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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Screen._drawSymetric 4
@RET_CALL_465
D=A
@CALL_Screen._drawSymetric_4
0;JMP
(RET_CALL_465)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.drawCircle$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function String.new 0
(String.new) // function String.new 0

// push constant 3
@3 // push constant 3 // function String.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_466
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_466)

// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_467
D=A
@LT_SUB
0;JMP
(RET_LT_467)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.new$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.new$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.new$IF_TRUE0) // label IF_TRUE0

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_468
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_468)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.new$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_469
D=A
@GT_SUB
0;JMP
(RET_GT_469)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.new$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@String.new$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(String.new$IF_TRUE1) // label IF_TRUE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Array.new 1
@RET_CALL_470
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_470)

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// label IF_FALSE1
(String.new$IF_FALSE1) // label IF_FALSE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function String.dispose 0
(String.dispose) // function String.dispose 0

// push argument 0
@ARG // push argument 0 // function String.dispose 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_471
D=A
@GT_SUB
0;JMP
(RET_GT_471)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.dispose$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.dispose$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.dispose$IF_TRUE0) // label IF_TRUE0

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Array.dispose 1
@RET_CALL_472
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_472)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.dispose$IF_FALSE0) // label IF_FALSE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_473
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_473)

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

// function String.length 0
(String.length) // function String.length 0

// push argument 0
@ARG // push argument 0 // function String.length 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function String.charAt 0
(String.charAt) // function String.charAt 0

// push argument 0
@ARG // push argument 0 // function String.charAt 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_474
D=A
@LT_SUB
0;JMP
(RET_LT_474)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_475
D=A
@GT_SUB
0;JMP
(RET_GT_475)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// eq
@RET_EQ_476
D=A
@EQ_SUB
0;JMP
(RET_EQ_476)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.charAt$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.charAt$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.charAt$IF_TRUE0) // label IF_TRUE0

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_477
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_477)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.charAt$IF_FALSE0) // label IF_FALSE0

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
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

// function String.setCharAt 0
(String.setCharAt) // function String.setCharAt 0

// push argument 0
@ARG // push argument 0 // function String.setCharAt 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_478
D=A
@LT_SUB
0;JMP
(RET_LT_478)

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_479
D=A
@GT_SUB
0;JMP
(RET_GT_479)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// eq
@RET_EQ_480
D=A
@EQ_SUB
0;JMP
(RET_EQ_480)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setCharAt$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.setCharAt$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.setCharAt$IF_TRUE0) // label IF_TRUE0

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_481
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_481)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.setCharAt$IF_FALSE0) // label IF_FALSE0

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
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

// push argument 2
@ARG // push argument 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// function String.appendChar 0
(String.appendChar) // function String.appendChar 0

// push argument 0
@ARG // push argument 0 // function String.appendChar 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// eq
@RET_EQ_482
D=A
@EQ_SUB
0;JMP
(RET_EQ_482)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.appendChar$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.appendChar$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.appendChar$IF_TRUE0) // label IF_TRUE0

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_483
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_483)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.appendChar$IF_FALSE0) // label IF_FALSE0

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
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

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function String.eraseLastChar 0
(String.eraseLastChar) // function String.eraseLastChar 0

// push argument 0
@ARG // push argument 0 // function String.eraseLastChar 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_484
D=A
@EQ_SUB
0;JMP
(RET_EQ_484)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.eraseLastChar$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.eraseLastChar$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.eraseLastChar$IF_TRUE0) // label IF_TRUE0

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_485
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_485)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.eraseLastChar$IF_FALSE0) // label IF_FALSE0

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function String.intValue 5
(String.intValue) // function String.intValue 5
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function String.intValue 5
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_486
D=A
@EQ_SUB
0;JMP
(RET_EQ_486)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.intValue$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.intValue$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.intValue$IF_TRUE0) // label IF_TRUE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// label IF_FALSE0
(String.intValue$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push this 1
@THIS // push this 1
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

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_487
D=A
@EQ_SUB
0;JMP
(RET_EQ_487)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.intValue$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@String.intValue$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(String.intValue$IF_TRUE1) // label IF_TRUE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M
@4
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_FALSE1
(String.intValue$IF_FALSE1) // label IF_FALSE1

// label WHILE_EXP0
(String.intValue$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_488
D=A
@LT_SUB
0;JMP
(RET_LT_488)

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.intValue$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
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

// push constant 48
@48 // push constant 48 (constant)
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

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_489
D=A
@LT_SUB
0;JMP
(RET_LT_489)

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_490
D=A
@GT_SUB
0;JMP
(RET_GT_490)

// or
@SP // or
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M|D // val1 = val1 | val2

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@String.intValue$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@String.intValue$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(String.intValue$IF_TRUE2) // label IF_TRUE2

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_491
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_491)

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_FALSE2
(String.intValue$IF_FALSE2) // label IF_FALSE2

// goto WHILE_EXP0
@String.intValue$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(String.intValue$WHILE_END0) // label WHILE_END0

// push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@String.intValue$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@String.intValue$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(String.intValue$IF_TRUE3) // label IF_TRUE3

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label IF_FALSE3
(String.intValue$IF_FALSE3) // label IF_FALSE3

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function String.setInt 4
(String.setInt) // function String.setInt 4
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function String.setInt 4
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_492
D=A
@EQ_SUB
0;JMP
(RET_EQ_492)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.setInt$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.setInt$IF_TRUE0) // label IF_TRUE0

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_493
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_493)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.setInt$IF_FALSE0) // label IF_FALSE0

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_494
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_494)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_495
D=A
@LT_SUB
0;JMP
(RET_LT_495)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@String.setInt$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(String.setInt$IF_TRUE1) // label IF_TRUE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M
@3
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// label IF_FALSE1
(String.setInt$IF_FALSE1) // label IF_FALSE1

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(String.setInt$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// gt
@RET_GT_496
D=A
@GT_SUB
0;JMP
(RET_GT_496)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$WHILE_END0
D;JNE // jump if not zero

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_497
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_497)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_498
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_498)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop argument 1
@SP // pop argument 1
AM=M-1
D=M
@ARG
A=M+1
M=D

// goto WHILE_EXP0
@String.setInt$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(String.setInt$WHILE_END0) // label WHILE_END0

// push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@String.setInt$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(String.setInt$IF_TRUE2) // label IF_TRUE2

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push local 0
@LCL // push local 0
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label IF_FALSE2
(String.setInt$IF_FALSE2) // label IF_FALSE2

// push this 0
@THIS // push this 0
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

// lt
@RET_LT_499
D=A
@LT_SUB
0;JMP
(RET_LT_499)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@String.setInt$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(String.setInt$IF_TRUE3) // label IF_TRUE3

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_500
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_500)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE3
(String.setInt$IF_FALSE3) // label IF_FALSE3

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_501
D=A
@EQ_SUB
0;JMP
(RET_EQ_501)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@String.setInt$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(String.setInt$IF_TRUE4) // label IF_TRUE4

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push this 1
@THIS // push this 1
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

// push constant 48
@48 // push constant 48 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// goto IF_END4
@String.setInt$IF_END4 // goto IF_END4
0;JMP // unconditional jump

// label IF_FALSE4
(String.setInt$IF_FALSE4) // label IF_FALSE4

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// label WHILE_EXP1
(String.setInt$WHILE_EXP1) // label WHILE_EXP1

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// lt
@RET_LT_502
D=A
@LT_SUB
0;JMP
(RET_LT_502)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.setInt$WHILE_END1
D;JNE // jump if not zero

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// push this 1
@THIS // push this 1
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// push this 2
@THIS // push this 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
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

// pop this 2
@THIS // pop this 2 (&asm_segment)
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

// goto WHILE_EXP1
@String.setInt$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(String.setInt$WHILE_END1) // label WHILE_END1

// label IF_END4
(String.setInt$IF_END4) // label IF_END4

// push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP
AM=M+1
A=A-1
M=D

// call Array.dispose 1
@RET_CALL_503
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_503)

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

// function String.newLine 0
(String.newLine) // function String.newLine 0

// push constant 128
@128 // push constant 128 // function String.newLine 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function String.backSpace 0
(String.backSpace) // function String.backSpace 0

// push constant 129
@129 // push constant 129 // function String.backSpace 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function String.doubleQuote 0
(String.doubleQuote) // function String.doubleQuote 0

// push constant 34
@34 // push constant 34 // function String.doubleQuote 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
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
(CALL_Memory.init_0)
@R13
M=D // R13 = retAddr
@Memory.init
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Math.init_0)
@R13
M=D // R13 = retAddr
@Math.init
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.init_0)
@R13
M=D // R13 = retAddr
@Output.init
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen.init_0)
@R13
M=D // R13 = retAddr
@Screen.init
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Keyboard.init_0)
@R13
M=D // R13 = retAddr
@Keyboard.init
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Main.main_0)
@R13
M=D // R13 = retAddr
@Main.main
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Sys.halt_0)
@R13
M=D // R13 = retAddr
@Sys.halt
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
(CALL_Sys.error_1)
@R13
M=D // R13 = retAddr
@Sys.error
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(GT_SUB)
@R15
M=D // save return addr
@SP
AM=M-1 // SP--, A -> val2
D=M // D = val2
A=A-1 // A -> val1 (result slot)
D=M-D // D = val1 - val2
M=0 // assume false
@GT_END
D;JLE // skip if false
@SP
A=M-1 // A -> result slot
M=-1 // true
(GT_END)
@R15
A=M
0;JMP // return
(CALL_Output.printChar_1)
@R13
M=D // R13 = retAddr
@Output.printChar
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.printInt_1)
@R13
M=D // R13 = retAddr
@Output.printInt
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
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
(CALL_PongGame.newInstance_0)
@R13
M=D // R13 = retAddr
@PongGame.newInstance
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_PongGame.getInstance_0)
@R13
M=D // R13 = retAddr
@PongGame.getInstance
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_PongGame.run_1)
@R13
M=D // R13 = retAddr
@PongGame.run
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_PongGame.dispose_1)
@R13
M=D // R13 = retAddr
@PongGame.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Memory.alloc_1)
@R13
M=D // R13 = retAddr
@Memory.alloc
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Memory.deAlloc_1)
@R13
M=D // R13 = retAddr
@Memory.deAlloc
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.show_1)
@R13
M=D // R13 = retAddr
@Ball.show
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen.setColor_1)
@R13
M=D // R13 = retAddr
@Screen.setColor
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.draw_1)
@R13
M=D // R13 = retAddr
@Ball.draw
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen.drawRectangle_4)
@R13
M=D // R13 = retAddr
@Screen.drawRectangle
D=A
@R14
M=D // R14 = func addr
@4
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Math.abs_1)
@R13
M=D // R13 = retAddr
@Math.abs
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Math.multiply_2)
@R13
M=D // R13 = retAddr
@Math.multiply
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.hide_1)
@R13
M=D // R13 = retAddr
@Ball.hide
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Math.divide_2)
@R13
M=D // R13 = retAddr
@Math.divide
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(EQ_SUB)
@R15
M=D // save return addr
@SP
AM=M-1 // SP--, A -> val2
D=M // D = val2
A=A-1 // A -> val1 (result slot)
D=M-D // D = val1 - val2
M=0 // assume false
@EQ_END
D;JNE // skip if false
@SP
A=M-1 // A -> result slot
M=-1 // true
(EQ_END)
@R15
A=M
0;JMP // return
(CALL_Ball.setDestination_3)
@R13
M=D // R13 = retAddr
@Ball.setDestination
D=A
@R14
M=D // R14 = func addr
@3
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.show_1)
@R13
M=D // R13 = retAddr
@Bat.show
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.draw_1)
@R13
M=D // R13 = retAddr
@Bat.draw
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.hide_1)
@R13
M=D // R13 = retAddr
@Bat.hide
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Memory.peek_1)
@R13
M=D // R13 = retAddr
@Memory.peek
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Keyboard.keyPressed_0)
@R13
M=D // R13 = retAddr
@Keyboard.keyPressed
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.backSpace_0)
@R13
M=D // R13 = retAddr
@String.backSpace
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.new_1)
@R13
M=D // R13 = retAddr
@String.new
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.printString_1)
@R13
M=D // R13 = retAddr
@Output.printString
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.newLine_0)
@R13
M=D // R13 = retAddr
@String.newLine
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Keyboard.readChar_0)
@R13
M=D // R13 = retAddr
@Keyboard.readChar
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.eraseLastChar_1)
@R13
M=D // R13 = retAddr
@String.eraseLastChar
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.appendChar_2)
@R13
M=D // R13 = retAddr
@String.appendChar
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Keyboard.readLine_1)
@R13
M=D // R13 = retAddr
@Keyboard.readLine
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.intValue_1)
@R13
M=D // R13 = retAddr
@String.intValue
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.dispose_1)
@R13
M=D // R13 = retAddr
@String.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Array.new_1)
@R13
M=D // R13 = retAddr
@Array.new
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.initMap_0)
@R13
M=D // R13 = retAddr
@Output.initMap
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output._createShiftedMap_0)
@R13
M=D // R13 = retAddr
@Output._createShiftedMap
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.create_12)
@R13
M=D // R13 = retAddr
@Output.create
D=A
@R14
M=D // R14 = func addr
@12
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.getMap_1)
@R13
M=D // R13 = retAddr
@Output.getMap
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output._drawChar_1)
@R13
M=D // R13 = retAddr
@Output._drawChar
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.println_0)
@R13
M=D // R13 = retAddr
@Output.println
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.backSpace_0)
@R13
M=D // R13 = retAddr
@Output.backSpace
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.length_1)
@R13
M=D // R13 = retAddr
@String.length
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.charAt_2)
@R13
M=D // R13 = retAddr
@String.charAt
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_String.setInt_2)
@R13
M=D // R13 = retAddr
@String.setInt
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen.clearScreen_0)
@R13
M=D // R13 = retAddr
@Screen.clearScreen
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.new_4)
@R13
M=D // R13 = retAddr
@Bat.new
D=A
@R14
M=D // R14 = func addr
@4
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.new_6)
@R13
M=D // R13 = retAddr
@Ball.new
D=A
@R14
M=D // R14 = func addr
@6
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Output.moveCursor_2)
@R13
M=D // R13 = retAddr
@Output.moveCursor
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.dispose_1)
@R13
M=D // R13 = retAddr
@Bat.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.dispose_1)
@R13
M=D // R13 = retAddr
@Ball.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_PongGame.new_0)
@R13
M=D // R13 = retAddr
@PongGame.new
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.move_1)
@R13
M=D // R13 = retAddr
@Bat.move
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_PongGame.moveBall_1)
@R13
M=D // R13 = retAddr
@PongGame.moveBall
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.setDirection_2)
@R13
M=D // R13 = retAddr
@Bat.setDirection
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.move_1)
@R13
M=D // R13 = retAddr
@Ball.move
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.getLeft_1)
@R13
M=D // R13 = retAddr
@Bat.getLeft
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.getRight_1)
@R13
M=D // R13 = retAddr
@Bat.getRight
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.getLeft_1)
@R13
M=D // R13 = retAddr
@Ball.getLeft
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.getRight_1)
@R13
M=D // R13 = retAddr
@Ball.getRight
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Bat.setWidth_2)
@R13
M=D // R13 = retAddr
@Bat.setWidth
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Ball.bounce_2)
@R13
M=D // R13 = retAddr
@Ball.bounce
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen._updateLocation_2)
@R13
M=D // R13 = retAddr
@Screen._updateLocation
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen.drawPixel_2)
@R13
M=D // R13 = retAddr
@Screen.drawPixel
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen._drawConditional_3)
@R13
M=D // R13 = retAddr
@Screen._drawConditional
D=A
@R14
M=D // R14 = func addr
@3
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Math.min_2)
@R13
M=D // R13 = retAddr
@Math.min
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Math.max_2)
@R13
M=D // R13 = retAddr
@Math.max
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen._drawHorizontal_3)
@R13
M=D // R13 = retAddr
@Screen._drawHorizontal
D=A
@R14
M=D // R14 = func addr
@3
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen._drawSymetric_4)
@R13
M=D // R13 = retAddr
@Screen._drawSymetric
D=A
@R14
M=D // R14 = func addr
@4
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Array.dispose_1)
@R13
M=D // R13 = retAddr
@Array.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
