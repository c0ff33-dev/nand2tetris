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

// call UART.init 0
@RET_CALL_2
D=A
@CALL_UART.init_0
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

// call Main.main 0
@RET_CALL_5
D=A
@CALL_Main.main_0
0;JMP
(RET_CALL_5)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@RET_CALL_6
D=A
@CALL_Sys.halt_0
0;JMP
(RET_CALL_6)

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
@RET_LT_7
D=A
@LT_SUB
0;JMP
(RET_LT_7)

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
@RET_CALL_8
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_8)

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
@RET_GT_9
D=A
@GT_SUB
0;JMP
(RET_GT_9)

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

// push constant 400
@400 // push constant 400 (constant)
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
@RET_GT_10
D=A
@GT_SUB
0;JMP
(RET_GT_10)

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
// call UART.writeChar 1
@RET_CALL_11
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_11)

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

// call UART.writeChar 1
@RET_CALL_12
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_12)

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

// call UART.writeChar 1
@RET_CALL_13
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_13)

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

// call UART.writeChar 1
@RET_CALL_14
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_14)

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
@RET_CALL_15
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_15)

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
@RET_CALL_16
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_16)

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
@RET_CALL_17
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_17)

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
@RET_CALL_18
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_18)

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

// function Main.main 2
(Main.main) // function Main.main 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 0
@SP // push constant 0 // function Main.main 2
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// call String.new 1
@RET_CALL_19
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_19)

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

// call String.dispose 1
@RET_CALL_20
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_20)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_21
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_21)

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

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_22
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_22)

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

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_23
D=A
@CALL_String.appendChar_2
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

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_24
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_24)

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

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_25
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_25)

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

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_26
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_26)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_27
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_27)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_28
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_28)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_29
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_29)

// push constant 119
@119 // push constant 119 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_30
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_30)

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_31
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_31)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_32
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_32)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_33
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_33)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_34
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_34)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_35
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_35)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_36
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_36)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_37
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_37)

// push constant 67
@67 // push constant 67 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_38
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_38)

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_39
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_39)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_40
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_40)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_41
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_41)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_42
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_42)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_43
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_43)

// call StdIO.printString 1
@RET_CALL_44
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_44)

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

// call StdIO.printString 1
@RET_CALL_45
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_45)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_46
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_46)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_47
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_47)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_48
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_48)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_49
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_49)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_50
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_50)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_51
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_51)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_52
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_52)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_53
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_53)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_54
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_54)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_55
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_55)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_56
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_56)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_57
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_57)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_58
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_58)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_59
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_59)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_60
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_60)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_61
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_61)

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_62
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_62)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_63
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_63)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_64
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_64)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_65
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_65)

// call StdIO.printString 1
@RET_CALL_66
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_66)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_67
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_67)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_68
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_68)

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

// push constant 12345
@12345 // push constant 12345 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.setInt 2
@RET_CALL_69
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_69)

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
@RET_CALL_70
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_70)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_71
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_71)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_72
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_72)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_73
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_73)

// push constant 73
@73 // push constant 73 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_74
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_74)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_75
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_75)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_76
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_76)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_77
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_77)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_78
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_78)

// call StdIO.printString 1
@RET_CALL_79
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_79)

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

// call StdIO.printString 1
@RET_CALL_80
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_80)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_81
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_81)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_82
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_82)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_83
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_83)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_84
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_84)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_85
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_85)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_86
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_86)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_87
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_87)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_88
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_88)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_89
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_89)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_90
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_90)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_91
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_91)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_92
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_92)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_93
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_93)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_94
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_94)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_95
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_95)

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_96
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_96)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_97
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_97)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_98
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_98)

// push constant 52
@52 // push constant 52 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_99
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_99)

// push constant 53
@53 // push constant 53 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_100
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_100)

// call StdIO.printString 1
@RET_CALL_101
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_101)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_102
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_102)

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

// push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call String.setInt 2
@RET_CALL_103
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_103)

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
@RET_CALL_104
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_104)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_105
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_105)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_106
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_106)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_107
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_107)

// push constant 73
@73 // push constant 73 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_108
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_108)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_109
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_109)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_110
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_110)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_111
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_111)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_112
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_112)

// call StdIO.printString 1
@RET_CALL_113
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_113)

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

// call StdIO.printString 1
@RET_CALL_114
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_114)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_115
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_115)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_116
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_116)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_117
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_117)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_118
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_118)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_119
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_119)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_120
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_120)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_121
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_121)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_122
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_122)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_123
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_123)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_124
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_124)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_125
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_125)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_126
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_126)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_127
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_127)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_128
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_128)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_129
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_129)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_130
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_130)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_131
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_131)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_132
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_132)

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_133
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_133)

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_134
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_134)

// push constant 55
@55 // push constant 55 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_135
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_135)

// call StdIO.printString 1
@RET_CALL_136
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_136)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_137
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_137)

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
@RET_CALL_138
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_138)

// push constant 108
@108 // push constant 108 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_139
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_139)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_140
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_140)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_141
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_141)

// push constant 103
@103 // push constant 103 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_142
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_142)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_143
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_143)

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_144
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_144)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_145
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_145)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_146
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_146)

// call StdIO.printString 1
@RET_CALL_147
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_147)

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

// call String.length 1
@RET_CALL_148
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_148)

// call StdIO.printInt 1
@RET_CALL_149
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_149)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_150
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_150)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_151
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_151)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_152
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_152)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_153
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_153)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_154
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_154)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_155
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_155)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_156
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_156)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_157
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_157)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_158
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_158)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_159
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_159)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_160
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_160)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_161
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_161)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_162
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_162)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_163
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_163)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_164
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_164)

// push constant 53
@53 // push constant 53 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_165
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_165)

// call StdIO.printString 1
@RET_CALL_166
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_166)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_167
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_167)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_168
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_168)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_169
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_169)

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_170
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_170)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_171
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_171)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_172
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_172)

// push constant 65
@65 // push constant 65 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_173
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_173)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_174
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_174)

// push constant 91
@91 // push constant 91 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_175
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_175)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_176
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_176)

// push constant 93
@93 // push constant 93 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_177
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_177)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_178
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_178)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_179
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_179)

// call StdIO.printString 1
@RET_CALL_180
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_180)

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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.charAt 2
@RET_CALL_181
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_181)

// call StdIO.printInt 1
@RET_CALL_182
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_182)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_183
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_183)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_184
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_184)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_185
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_185)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_186
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_186)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_187
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_187)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_188
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_188)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_189
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_189)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_190
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_190)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_191
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_191)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_192
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_192)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_193
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_193)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_194
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_194)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_195
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_195)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_196
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_196)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_197
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_197)

// push constant 57
@57 // push constant 57 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_198
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_198)

// push constant 57
@57 // push constant 57 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_199
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_199)

// call StdIO.printString 1
@RET_CALL_200
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_200)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_201
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_201)

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

// push constant 2
@2 // push constant 2 (constant)
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

// call String.setCharAt 3
@RET_CALL_202
D=A
@CALL_String.setCharAt_3
0;JMP
(RET_CALL_202)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_203
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_203)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_204
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_204)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_205
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_205)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_206
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_206)

// push constant 67
@67 // push constant 67 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_207
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_207)

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_208
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_208)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_209
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_209)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_210
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_210)

// push constant 65
@65 // push constant 65 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_211
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_211)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_212
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_212)

// push constant 40
@40 // push constant 40 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_213
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_213)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_214
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_214)

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_215
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_215)

// push constant 39
@39 // push constant 39 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_216
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_216)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_217
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_217)

// push constant 39
@39 // push constant 39 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_218
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_218)

// push constant 41
@41 // push constant 41 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_219
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_219)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_220
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_220)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_221
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_221)

// call StdIO.printString 1
@RET_CALL_222
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_222)

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

// call StdIO.printString 1
@RET_CALL_223
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_223)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_224
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_224)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_225
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_225)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_226
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_226)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_227
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_227)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_228
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_228)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_229
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_229)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_230
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_230)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_231
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_231)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_232
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_232)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_233
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_233)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_234
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_234)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_235
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_235)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_236
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_236)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_237
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_237)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_238
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_238)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_239
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_239)

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_240
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_240)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_241
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_241)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_242
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_242)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_243
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_243)

// call StdIO.printString 1
@RET_CALL_244
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_244)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_245
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_245)

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

// call String.eraseLastChar 1
@RET_CALL_246
D=A
@CALL_String.eraseLastChar_1
0;JMP
(RET_CALL_246)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_247
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_247)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_248
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_248)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_249
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_249)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_250
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_250)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_251
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_251)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_252
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_252)

// push constant 76
@76 // push constant 76 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_253
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_253)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_254
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_254)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_255
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_255)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_256
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_256)

// push constant 67
@67 // push constant 67 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_257
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_257)

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_258
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_258)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_259
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_259)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_260
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_260)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_261
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_261)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_262
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_262)

// call StdIO.printString 1
@RET_CALL_263
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_263)

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

// call StdIO.printString 1
@RET_CALL_264
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_264)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_265
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_265)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_266
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_266)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_267
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_267)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_268
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_268)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_269
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_269)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_270
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_270)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_271
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_271)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_272
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_272)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_273
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_273)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_274
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_274)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_275
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_275)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_276
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_276)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_277
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_277)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_278
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_278)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_279
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_279)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_280
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_280)

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_281
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_281)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_282
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_282)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_283
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_283)

// call StdIO.printString 1
@RET_CALL_284
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_284)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_285
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_285)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_286
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_286)

// push constant 52
@52 // push constant 52 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_287
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_287)

// push constant 53
@53 // push constant 53 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_288
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_288)

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_289
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_289)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_290
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_290)

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_291
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_291)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_292
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_292)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_293
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_293)

// push constant 86
@86 // push constant 86 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_294
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_294)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_295
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_295)

// push constant 108
@108 // push constant 108 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_296
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_296)

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_297
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_297)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_298
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_298)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_299
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_299)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_300
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_300)

// call StdIO.printString 1
@RET_CALL_301
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_301)

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

// call String.intValue 1
@RET_CALL_302
D=A
@CALL_String.intValue_1
0;JMP
(RET_CALL_302)

// call StdIO.printInt 1
@RET_CALL_303
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_303)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_304
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_304)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_305
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_305)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_306
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_306)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_307
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_307)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_308
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_308)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_309
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_309)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_310
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_310)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_311
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_311)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_312
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_312)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_313
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_313)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_314
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_314)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_315
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_315)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_316
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_316)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_317
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_317)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_318
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_318)

// push constant 52
@52 // push constant 52 (constant)
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

// push constant 53
@53 // push constant 53 (constant)
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

// push constant 54
@54 // push constant 54 (constant)
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

// call StdIO.printString 1
@RET_CALL_322
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_322)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_323
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_323)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_324
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_324)

// push constant 45
@45 // push constant 45 (constant)
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

// push constant 51
@51 // push constant 51 (constant)
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

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_327
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_327)

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_328
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_328)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_329
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_329)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_330
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_330)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_331
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_331)

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_332
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_332)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_333
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_333)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_334
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_334)

// push constant 86
@86 // push constant 86 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_335
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_335)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_336
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_336)

// push constant 108
@108 // push constant 108 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_337
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_337)

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_338
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_338)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_339
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_339)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_340
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_340)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_341
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_341)

// call StdIO.printString 1
@RET_CALL_342
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_342)

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

// call String.intValue 1
@RET_CALL_343
D=A
@CALL_String.intValue_1
0;JMP
(RET_CALL_343)

// call StdIO.printInt 1
@RET_CALL_344
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_344)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_345
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_345)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_346
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_346)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_347
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_347)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_348
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_348)

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 120
@120 // push constant 120 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_358
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_358)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_359
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_359)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_360
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_360)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_361
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_361)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_362
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_362)

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_363
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_363)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_364
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_364)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_365
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_365)

// call StdIO.printString 1
@RET_CALL_366
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_366)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_367
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_367)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_368
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_368)

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_369
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_369)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_370
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_370)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_371
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_371)

// push constant 107
@107 // push constant 107 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_372
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_372)

// push constant 83
@83 // push constant 83 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_373
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_373)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_374
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_374)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_375
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_375)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_376
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_376)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_377
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_377)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_378
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_378)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_379
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_379)

// call StdIO.printString 1
@RET_CALL_380
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_380)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call String.backSpace 0
@RET_CALL_381
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_381)

// call StdIO.printInt 1
@RET_CALL_382
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_382)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_383
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_383)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_384
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_384)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_385
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_385)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_386
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_386)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_387
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_387)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_388
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_388)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_389
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_389)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_390
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_390)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_391
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_391)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_392
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_392)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_393
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_393)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_394
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_394)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_395
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_395)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_396
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_396)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_397
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_397)

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_398
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_398)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_399
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_399)

// push constant 57
@57 // push constant 57 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_400
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_400)

// call StdIO.printString 1
@RET_CALL_401
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_401)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_402
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_402)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_403
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_403)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_404
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_404)

// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_405
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_405)

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_406
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_406)

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_407
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_407)

// push constant 108
@108 // push constant 108 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_408
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_408)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_409
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_409)

// push constant 81
@81 // push constant 81 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_410
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_410)

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_411
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_411)

// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_412
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_412)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_413
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_413)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_414
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_414)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_415
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_415)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_416
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_416)

// call StdIO.printString 1
@RET_CALL_417
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_417)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call String.doubleQuote 0
@RET_CALL_418
D=A
@CALL_String.doubleQuote_0
0;JMP
(RET_CALL_418)

// call StdIO.printInt 1
@RET_CALL_419
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_419)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_420
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_420)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_421
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_421)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_422
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_422)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_423
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_423)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_424
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_424)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_425
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_425)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_426
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_426)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_427
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_427)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_428
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_428)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_429
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_429)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_430
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_430)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_431
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_431)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_432
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_432)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_433
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_433)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_434
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_434)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_435
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_435)

// push constant 52
@52 // push constant 52 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_436
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_436)

// call StdIO.printString 1
@RET_CALL_437
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_437)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_438
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_438)

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
@RET_CALL_439
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_439)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_440
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_440)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_441
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_441)

// push constant 119
@119 // push constant 119 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_442
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_442)

// push constant 76
@76 // push constant 76 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_443
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_443)

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_444
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_444)

// push constant 110
@110 // push constant 110 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_445
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_445)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_446
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_446)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_447
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_447)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_448
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_448)

// call StdIO.printString 1
@RET_CALL_449
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_449)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call String.newLine 0
@RET_CALL_450
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_450)

// call StdIO.printInt 1
@RET_CALL_451
D=A
@CALL_StdIO.printInt_1
0;JMP
(RET_CALL_451)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_452
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_452)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_453
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_453)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_454
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_454)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_455
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_455)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_456
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_456)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_457
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_457)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_458
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_458)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_459
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_459)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_460
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_460)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_461
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_461)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_462
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_462)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_463
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_463)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_464
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_464)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_465
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_465)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_466
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_466)

// push constant 49
@49 // push constant 49 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_467
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_467)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_468
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_468)

// push constant 56
@56 // push constant 56 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_469
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_469)

// call StdIO.printString 1
@RET_CALL_470
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_470)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_471
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_471)

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

// call String.dispose 1
@RET_CALL_472
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_472)

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

// call String.dispose 1
@RET_CALL_473
D=A
@CALL_String.dispose_1
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
@RET_GT_474
D=A
@GT_SUB
0;JMP
(RET_GT_474)

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
@RET_CALL_475
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_475)

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
@RET_CALL_476
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_476)

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
@RET_CALL_477
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_477)

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
@16 // push static 0 (static ../projects/13/Original/07_String_Test/GPIO.vm)
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
@16 // push static 0 (static ../projects/13/Original/07_String_Test/GPIO.vm)
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
@17 // push static 1 (static ../projects/13/Original/07_String_Test/GPIO.vm)
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
@18 // push static 2 (static ../projects/13/Original/07_String_Test/GPIO.vm)
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
@18 // push static 2 (static ../projects/13/Original/07_String_Test/GPIO.vm)
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
@RET_CALL_478
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_478)

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
@RET_CALL_479
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_479)

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
@RET_CALL_480
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_480)

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
@RET_CALL_481
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_481)

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
@RET_CALL_482
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_482)

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@20
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_483
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_483)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@19
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_LT_484
D=A
@LT_SUB
0;JMP
(RET_LT_484)

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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_LT_485
D=A
@LT_SUB
0;JMP
(RET_LT_485)

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
@RET_LT_486
D=A
@LT_SUB
0;JMP
(RET_LT_486)

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
@RET_GT_487
D=A
@GT_SUB
0;JMP
(RET_GT_487)

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
@RET_GT_488
D=A
@GT_SUB
0;JMP
(RET_GT_488)

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
@RET_LT_489
D=A
@LT_SUB
0;JMP
(RET_LT_489)

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
@RET_CALL_490
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_490)

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
@RET_CALL_491
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_491)

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
@RET_LT_492
D=A
@LT_SUB
0;JMP
(RET_LT_492)

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
@RET_LT_493
D=A
@LT_SUB
0;JMP
(RET_LT_493)

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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_EQ_494
D=A
@EQ_SUB
0;JMP
(RET_EQ_494)

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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_EQ_495
D=A
@EQ_SUB
0;JMP
(RET_EQ_495)

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
@RET_CALL_496
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_496)

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
@RET_LT_497
D=A
@LT_SUB
0;JMP
(RET_LT_497)

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
@RET_GT_498
D=A
@GT_SUB
0;JMP
(RET_GT_498)

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
@RET_GT_499
D=A
@GT_SUB
0;JMP
(RET_GT_499)

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
@RET_LT_500
D=A
@LT_SUB
0;JMP
(RET_LT_500)

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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_CALL_501
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_501)

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
@RET_CALL_502
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_502)

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
@RET_LT_503
D=A
@LT_SUB
0;JMP
(RET_LT_503)

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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_LT_504
D=A
@LT_SUB
0;JMP
(RET_LT_504)

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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_GT_505
D=A
@GT_SUB
0;JMP
(RET_GT_505)

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
@RET_GT_506
D=A
@GT_SUB
0;JMP
(RET_GT_506)

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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_GT_507
D=A
@GT_SUB
0;JMP
(RET_GT_507)

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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@20 // push static 1 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_LT_508
D=A
@LT_SUB
0;JMP
(RET_LT_508)

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
@RET_CALL_509
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_509)

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
@RET_GT_510
D=A
@GT_SUB
0;JMP
(RET_GT_510)

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
@19 // push static 0 (static ../projects/13/Original/07_String_Test/Math.vm)
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
@RET_CALL_511
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_511)

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
@RET_GT_512
D=A
@GT_SUB
0;JMP
(RET_GT_512)

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
@RET_LT_513
D=A
@LT_SUB
0;JMP
(RET_LT_513)

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
@RET_GT_514
D=A
@GT_SUB
0;JMP
(RET_GT_514)

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
@RET_LT_515
D=A
@LT_SUB
0;JMP
(RET_LT_515)

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
@21
M=D

// push constant 1024
@1024 // push constant 1024 (constant)
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

// push constant 3583
@3583 // push constant 3583 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@23
M=D

// push static 1
@22 // push static 1 (static ../projects/13/Original/07_String_Test/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@21 // push static 0 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@23 // push static 2 (static ../projects/13/Original/07_String_Test/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@22 // push static 1 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@22 // push static 1 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@21 // push static 0 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@22 // push static 1 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@21 // push static 0 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@21 // push static 0 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@RET_LT_516
D=A
@LT_SUB
0;JMP
(RET_LT_516)

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
@RET_CALL_517
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_517)

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
@RET_EQ_518
D=A
@EQ_SUB
0;JMP
(RET_EQ_518)

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
@22 // push static 1 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@23 // push static 2 (static ../projects/13/Original/07_String_Test/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_519
D=A
@LT_SUB
0;JMP
(RET_LT_519)

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
@RET_LT_520
D=A
@LT_SUB
0;JMP
(RET_LT_520)

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
@RET_EQ_521
D=A
@EQ_SUB
0;JMP
(RET_EQ_521)

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 2
@23 // push static 2 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@RET_GT_522
D=A
@GT_SUB
0;JMP
(RET_GT_522)

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
@RET_EQ_523
D=A
@EQ_SUB
0;JMP
(RET_EQ_523)

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
@RET_EQ_524
D=A
@EQ_SUB
0;JMP
(RET_EQ_524)

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
@23 // push static 2 (static ../projects/13/Original/07_String_Test/Memory.vm)
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
@RET_GT_525
D=A
@GT_SUB
0;JMP
(RET_GT_525)

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
@RET_CALL_526
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_526)

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
@RET_GT_527
D=A
@GT_SUB
0;JMP
(RET_GT_527)

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
@RET_EQ_528
D=A
@EQ_SUB
0;JMP
(RET_EQ_528)

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
@RET_LT_529
D=A
@LT_SUB
0;JMP
(RET_LT_529)

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
@RET_CALL_530
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_530)

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
@RET_EQ_531
D=A
@EQ_SUB
0;JMP
(RET_EQ_531)

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
@RET_EQ_532
D=A
@EQ_SUB
0;JMP
(RET_EQ_532)

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

// function StdIO.printString 2
(StdIO.printString) // function StdIO.printString 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 0
@SP // push constant 0 // function StdIO.printString 2
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.length 1
@RET_CALL_533
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_533)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(StdIO.printString$WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_534
D=A
@LT_SUB
0;JMP
(RET_LT_534)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@StdIO.printString$WHILE_END0
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
@RET_CALL_535
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_535)

// call UART.writeChar 1
@RET_CALL_536
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_536)

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
@StdIO.printString$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(StdIO.printString$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function StdIO.printInt 1
(StdIO.printInt) // function StdIO.printInt 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 6
@6 // push constant 6 // function StdIO.printInt 1 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call String.new 1
@RET_CALL_537
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_537)

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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.setInt 2
@RET_CALL_538
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_538)

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

// call StdIO.printString 1
@RET_CALL_539
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_539)

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

// call String.dispose 1
@RET_CALL_540
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_540)

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

// function StdIO.println 0
(StdIO.println) // function StdIO.println 0

// push constant 13
@13 // push constant 13 // function StdIO.println 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call UART.writeChar 1
@RET_CALL_541
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_541)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call UART.writeChar 1
@RET_CALL_542
D=A
@CALL_UART.writeChar_1
0;JMP
(RET_CALL_542)

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

// function StdIO.readInt 2
(StdIO.readInt) // function StdIO.readInt 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function StdIO.readInt 2
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call StdIO.readLine 1
@RET_CALL_543
D=A
@CALL_StdIO.readLine_1
0;JMP
(RET_CALL_543)

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
@RET_CALL_544
D=A
@CALL_String.intValue_1
0;JMP
(RET_CALL_544)

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
@RET_CALL_545
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_545)

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

// function StdIO.readLine 3
(StdIO.readLine) // function StdIO.readLine 3
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

// push constant 50
@50 // push constant 50 // function StdIO.readLine 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call String.new 1
@RET_CALL_546
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_546)

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

// call StdIO.printString 1
@RET_CALL_547
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_547)

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

// call String.dispose 1
@RET_CALL_548
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_548)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call UART.readChar 0
@RET_CALL_549
D=A
@CALL_UART.readChar_0
0;JMP
(RET_CALL_549)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(StdIO.readLine$WHILE_EXP0) // label WHILE_EXP0

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

// eq
@RET_EQ_550
D=A
@EQ_SUB
0;JMP
(RET_EQ_550)

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_551
D=A
@EQ_SUB
0;JMP
(RET_EQ_551)

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

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@StdIO.readLine$WHILE_END0
D;JNE // jump if not zero

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_552
D=A
@EQ_SUB
0;JMP
(RET_EQ_552)

// push local 1
@LCL // push local 1
A=M+1
D=M
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

// eq
@RET_EQ_553
D=A
@EQ_SUB
0;JMP
(RET_EQ_553)

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
@StdIO.readLine$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@StdIO.readLine$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(StdIO.readLine$IF_TRUE0) // label IF_TRUE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.eraseLastChar 1
@RET_CALL_554
D=A
@CALL_String.eraseLastChar_1
0;JMP
(RET_CALL_554)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@StdIO.readLine$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(StdIO.readLine$IF_FALSE0) // label IF_FALSE0

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

// call String.appendChar 2
@RET_CALL_555
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_555)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(StdIO.readLine$IF_END0) // label IF_END0

// call UART.readChar 0
@RET_CALL_556
D=A
@CALL_UART.readChar_0
0;JMP
(RET_CALL_556)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// goto WHILE_EXP0
@StdIO.readLine$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(StdIO.readLine$WHILE_END0) // label WHILE_END0

// call StdIO.println 0
@RET_CALL_557
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_557)

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

// call StdIO.printString 1
@RET_CALL_558
D=A
@CALL_StdIO.printString_1
0;JMP
(RET_CALL_558)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call StdIO.println 0
@RET_CALL_559
D=A
@CALL_StdIO.println_0
0;JMP
(RET_CALL_559)

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
@RET_CALL_560
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_560)

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
@RET_LT_561
D=A
@LT_SUB
0;JMP
(RET_LT_561)

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
@RET_CALL_562
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_562)

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
@RET_GT_563
D=A
@GT_SUB
0;JMP
(RET_GT_563)

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
@RET_CALL_564
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_564)

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
@RET_GT_565
D=A
@GT_SUB
0;JMP
(RET_GT_565)

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
@RET_CALL_566
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_566)

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
@RET_CALL_567
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_567)

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
@RET_LT_568
D=A
@LT_SUB
0;JMP
(RET_LT_568)

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
@RET_GT_569
D=A
@GT_SUB
0;JMP
(RET_GT_569)

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
@RET_EQ_570
D=A
@EQ_SUB
0;JMP
(RET_EQ_570)

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
@RET_CALL_571
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_571)

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
@RET_LT_572
D=A
@LT_SUB
0;JMP
(RET_LT_572)

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
@RET_GT_573
D=A
@GT_SUB
0;JMP
(RET_GT_573)

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
@RET_EQ_574
D=A
@EQ_SUB
0;JMP
(RET_EQ_574)

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
@RET_CALL_575
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_575)

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
@RET_EQ_576
D=A
@EQ_SUB
0;JMP
(RET_EQ_576)

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
@RET_CALL_577
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_577)

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
@RET_EQ_578
D=A
@EQ_SUB
0;JMP
(RET_EQ_578)

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
@RET_CALL_579
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_579)

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
@RET_EQ_580
D=A
@EQ_SUB
0;JMP
(RET_EQ_580)

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
@RET_EQ_581
D=A
@EQ_SUB
0;JMP
(RET_EQ_581)

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
@RET_LT_582
D=A
@LT_SUB
0;JMP
(RET_LT_582)

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
@RET_LT_583
D=A
@LT_SUB
0;JMP
(RET_LT_583)

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
@RET_GT_584
D=A
@GT_SUB
0;JMP
(RET_GT_584)

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
@RET_CALL_585
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_585)

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
@RET_EQ_586
D=A
@EQ_SUB
0;JMP
(RET_EQ_586)

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
@RET_CALL_587
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_587)

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
@RET_CALL_588
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_588)

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
@RET_LT_589
D=A
@LT_SUB
0;JMP
(RET_LT_589)

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
@RET_GT_590
D=A
@GT_SUB
0;JMP
(RET_GT_590)

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
@RET_CALL_591
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_591)

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
@RET_CALL_592
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_592)

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
@RET_LT_593
D=A
@LT_SUB
0;JMP
(RET_LT_593)

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
@RET_CALL_594
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_594)

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
@RET_EQ_595
D=A
@EQ_SUB
0;JMP
(RET_EQ_595)

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
@RET_LT_596
D=A
@LT_SUB
0;JMP
(RET_LT_596)

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
@RET_CALL_597
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_597)

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

// function UART.init 0
(UART.init) // function UART.init 0

// push constant 4098
@4098 // push constant 4098 // function UART.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@24
M=D

// push constant 4099
@4099 // push constant 4099 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@25
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@25 // push static 1 (static ../projects/13/Original/07_String_Test/UART.vm)
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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

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

// function UART.writeChar 0
(UART.writeChar) // function UART.writeChar 0

// push constant 0
@SP // push constant 0 // function UART.writeChar 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 0
@24 // push static 0 (static ../projects/13/Original/07_String_Test/UART.vm)
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

// label WHILE_EXP0
(UART.writeChar$WHILE_EXP0) // label WHILE_EXP0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@24 // push static 0 (static ../projects/13/Original/07_String_Test/UART.vm)
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
@RET_EQ_598
D=A
@EQ_SUB
0;JMP
(RET_EQ_598)

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
@UART.writeChar$WHILE_END0
D;JNE // jump if not zero

// goto WHILE_EXP0
@UART.writeChar$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(UART.writeChar$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function UART.readChar 1
(UART.readChar) // function UART.readChar 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// label WHILE_EXP0
(UART.readChar$WHILE_EXP0) // label WHILE_EXP0

// push constant 0
@SP // push constant 0 // function UART.readChar 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 1
@25 // push static 1 (static ../projects/13/Original/07_String_Test/UART.vm)
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

// lt
@RET_LT_599
D=A
@LT_SUB
0;JMP
(RET_LT_599)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@UART.readChar$WHILE_END0
D;JNE // jump if not zero

// goto WHILE_EXP0
@UART.readChar$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(UART.readChar$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@25 // push static 1 (static ../projects/13/Original/07_String_Test/UART.vm)
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@25 // push static 1 (static ../projects/13/Original/07_String_Test/UART.vm)
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
(CALL_UART.init_0)
@R13
M=D // R13 = retAddr
@UART.init
D=A
@R14
M=D // R14 = func addr
@0
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
0;JMP // sub return
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
0;JMP // sub return
(CALL_UART.writeChar_1)
@R13
M=D // R13 = retAddr
@UART.writeChar
D=A
@R14
M=D // R14 = func addr
@1
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
(CALL_StdIO.printString_1)
@R13
M=D // R13 = retAddr
@StdIO.printString
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_StdIO.println_0)
@R13
M=D // R13 = retAddr
@StdIO.println
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_StdIO.printInt_1)
@R13
M=D // R13 = retAddr
@StdIO.printInt
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
(CALL_String.setCharAt_3)
@R13
M=D // R13 = retAddr
@String.setCharAt
D=A
@R14
M=D // R14 = func addr
@3
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
(CALL_String.doubleQuote_0)
@R13
M=D // R13 = retAddr
@String.doubleQuote
D=A
@R14
M=D // R14 = func addr
@0
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
0;JMP // sub return
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
(CALL_StdIO.readLine_1)
@R13
M=D // R13 = retAddr
@StdIO.readLine
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_UART.readChar_0)
@R13
M=D // R13 = retAddr
@UART.readChar
D=A
@R14
M=D // R14 = func addr
@0
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
