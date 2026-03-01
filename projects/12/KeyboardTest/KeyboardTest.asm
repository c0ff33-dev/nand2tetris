@256 // bootstrap: initialize SP as 256
D=A
@0
M=D

// function Sys.init 0
(Sys.init) // function Sys.init 0

// call Memory.init 0 // function Sys.init 0
@RET_CALL_1
D=A
@CALL_Memory.init_0
0;JMP
(RET_CALL_1)
// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Math.init 0
@RET_CALL_2
D=A
@CALL_Math.init_0
0;JMP
(RET_CALL_2)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Screen.init 0
@RET_CALL_3
D=A
@CALL_Screen.init_0
0;JMP
(RET_CALL_3)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.init 0
@RET_CALL_4
D=A
@CALL_Output.init_0
0;JMP
(RET_CALL_4)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Keyboard.init 0
@RET_CALL_5
D=A
@CALL_Keyboard.init_0
0;JMP
(RET_CALL_5)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Main.main 0
@RET_CALL_6
D=A
@CALL_Main.main_0
0;JMP
(RET_CALL_6)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@RET_CALL_7
D=A
@CALL_Sys.halt_0
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
@RET_LT_8
D=A
@LT_SUB
0;JMP
(RET_LT_8)

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
@RET_CALL_9
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_9)

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
@RET_GT_10
D=A
@GT_SUB
0;JMP
(RET_GT_10)

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

// push constant 50
@50 // push constant 50 (constant)
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
@RET_GT_11
D=A
@GT_SUB
0;JMP
(RET_GT_11)

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
@RET_CALL_12
D=A
@CALL_Output.printChar_1
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

// call Output.printChar 1
@RET_CALL_13
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_13)

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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printInt 1
@RET_CALL_15
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_15)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@RET_CALL_16
D=A
@CALL_Sys.halt_0
0;JMP
(RET_CALL_16)

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

// function Main.main 5
(Main.main) // function Main.main 5
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

// push constant 0
@SP // push constant 0 // function Main.main 5
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
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

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_17
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_17)

// push constant 107
@107 // push constant 107 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_18
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_18)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_19
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_19)

// push constant 121
@121 // push constant 121 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_20
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_20)

// push constant 80
@80 // push constant 80 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_21
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_21)

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_27
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_27)

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// call Output.printString 1
@RET_CALL_34
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_34)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_35
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_35)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Main.main$WHILE_EXP0) // label WHILE_EXP0

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
@Main.main$WHILE_END0
D;JNE // jump if not zero

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_36
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_36)

// push constant 80
@80 // push constant 80 (constant)
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

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_44
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_44)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_45
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_45)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_46
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_46)

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 80
@80 // push constant 80 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 103
@103 // push constant 103 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 68
@68 // push constant 68 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 119
@119 // push constant 119 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 107
@107 // push constant 107 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_66
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_66)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_67
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_67)

// push constant 121
@121 // push constant 121 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_68
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_68)

// call Output.printString 1
@RET_CALL_69
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_69)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP1
(Main.main$WHILE_EXP1) // label WHILE_EXP1

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
@RET_EQ_70
D=A
@EQ_SUB
0;JMP
(RET_EQ_70)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$WHILE_END1
D;JNE // jump if not zero

// call Keyboard.keyPressed 0
@RET_CALL_71
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_71)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// goto WHILE_EXP1
@Main.main$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Main.main$WHILE_END1) // label WHILE_END1

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

// label WHILE_EXP2
(Main.main$WHILE_EXP2) // label WHILE_EXP2

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
@RET_EQ_72
D=A
@EQ_SUB
0;JMP
(RET_EQ_72)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END2
@SP // if-goto WHILE_END2
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$WHILE_END2
D;JNE // jump if not zero

// call Keyboard.keyPressed 0
@RET_CALL_73
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_73)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// goto WHILE_EXP2
@Main.main$WHILE_EXP2 // goto WHILE_EXP2
0;JMP // unconditional jump

// label WHILE_END2
(Main.main$WHILE_END2) // label WHILE_END2

// call Output.println 0
@RET_CALL_74
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_74)

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

// push constant 137
@137 // push constant 137 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_75
D=A
@EQ_SUB
0;JMP
(RET_EQ_75)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Main.main$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Main.main$IF_TRUE0) // label IF_TRUE0

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_76
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_76)

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 107
@107 // push constant 107 (constant)
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

// call Output.printString 1
@RET_CALL_79
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_79)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_80
D=A
@CALL_Output.println_0
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

// label IF_FALSE0
(Main.main$IF_FALSE0) // label IF_FALSE0

// goto WHILE_EXP0
@Main.main$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Main.main$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 14
@14 // push constant 14 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 67
@67 // push constant 67 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// call Output.printString 1
@RET_CALL_96
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_96)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_97
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_97)

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

// call String.new 1
@RET_CALL_98
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_98)

// push constant 40
@40 // push constant 40 (constant)
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

// push constant 86
@86 // push constant 86 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_101
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_101)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_102
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_102)

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_103
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_103)

// push constant 102
@102 // push constant 102 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_104
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_104)

// push constant 121
@121 // push constant 121 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_113
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_113)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_114
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_114)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_115
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_115)

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 105
@105 // push constant 105 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_136
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_136)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_137
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_137)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_138
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_138)

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_147
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_147)

// push constant 104
@104 // push constant 104 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_148
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_148)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_149
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_149)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_150
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_150)

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 41
@41 // push constant 41 (constant)
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

// call Output.printString 1
@RET_CALL_158
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_158)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_159
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_159)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP3
(Main.main$WHILE_EXP3) // label WHILE_EXP3

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

// if-goto WHILE_END3
@SP // if-goto WHILE_END3
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$WHILE_END3
D;JNE // jump if not zero

// push constant 29
@29 // push constant 29 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_160
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_160)

// push constant 80
@80 // push constant 80 (constant)
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

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_166
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_166)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_167
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_167)

// push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_168
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_168)

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 117
@117 // push constant 117 (constant)
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

// push constant 109
@109 // push constant 109 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_180
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_180)

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_181
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_181)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_182
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_182)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_183
D=A
@CALL_String.appendChar_2
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 51
@51 // push constant 51 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// call Output.printString 1
@RET_CALL_190
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_190)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Keyboard.readChar 0
@RET_CALL_191
D=A
@CALL_Keyboard.readChar_0
0;JMP
(RET_CALL_191)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// call Output.println 0
@RET_CALL_192
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_192)

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

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_193
D=A
@EQ_SUB
0;JMP
(RET_EQ_193)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Main.main$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Main.main$IF_TRUE1) // label IF_TRUE1

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_194
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_194)

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 107
@107 // push constant 107 (constant)
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

// call Output.printString 1
@RET_CALL_197
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_197)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_198
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_198)

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

// label IF_FALSE1
(Main.main$IF_FALSE1) // label IF_FALSE1

// goto WHILE_EXP3
@Main.main$WHILE_EXP3 // goto WHILE_EXP3
0;JMP // unconditional jump

// label WHILE_END3
(Main.main$WHILE_END3) // label WHILE_END3

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_199
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_199)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_200
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_200)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_201
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_201)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_202
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_202)

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_203
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_203)

// push constant 76
@76 // push constant 76 (constant)
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

// push constant 105
@105 // push constant 105 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// call Output.printString 1
@RET_CALL_214
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_214)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_215
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_215)

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

// call String.new 1
@RET_CALL_216
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_216)

// push constant 40
@40 // push constant 40 (constant)
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

// push constant 86
@86 // push constant 86 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 105
@105 // push constant 105 (constant)
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

// push constant 102
@102 // push constant 102 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_222
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_222)

// push constant 121
@121 // push constant 121 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_223
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_223)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_224
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_224)

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 117
@117 // push constant 117 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 103
@103 // push constant 103 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 102
@102 // push constant 102 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 98
@98 // push constant 98 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_244
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_244)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_245
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_245)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_246
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_246)

// push constant 107
@107 // push constant 107 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_247
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_247)

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 41
@41 // push constant 41 (constant)
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

// call Output.printString 1
@RET_CALL_255
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_255)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_256
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_256)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP4
(Main.main$WHILE_EXP4) // label WHILE_EXP4

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

// if-goto WHILE_END4
@SP // if-goto WHILE_END4
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$WHILE_END4
D;JNE // jump if not zero

// push constant 36
@36 // push constant 36 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_257
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_257)

// push constant 80
@80 // push constant 80 (constant)
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

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_263
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_263)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_264
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_264)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_265
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_265)

// push constant 121
@121 // push constant 121 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 74
@74 // push constant 74 (constant)
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

// push constant 65
@65 // push constant 65 (constant)
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

// push constant 67
@67 // push constant 67 (constant)
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

// push constant 75
@75 // push constant 75 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_284
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_284)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_285
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_285)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_286
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_286)

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_290
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_290)

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// call Keyboard.readLine 1
@RET_CALL_294
D=A
@CALL_Keyboard.readLine_1
0;JMP
(RET_CALL_294)

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

// call String.length 1
@RET_CALL_295
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_295)

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_296
D=A
@EQ_SUB
0;JMP
(RET_EQ_296)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Main.main$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Main.main$IF_TRUE2) // label IF_TRUE2

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

// call String.charAt 2
@RET_CALL_297
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_297)

// push constant 74
@74 // push constant 74 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_298
D=A
@EQ_SUB
0;JMP
(RET_EQ_298)

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

// call String.charAt 2
@RET_CALL_299
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_299)

// push constant 65
@65 // push constant 65 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_300
D=A
@EQ_SUB
0;JMP
(RET_EQ_300)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

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

// call String.charAt 2
@RET_CALL_301
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_301)

// push constant 67
@67 // push constant 67 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_302
D=A
@EQ_SUB
0;JMP
(RET_EQ_302)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.charAt 2
@RET_CALL_303
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_303)

// push constant 75
@75 // push constant 75 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_304
D=A
@EQ_SUB
0;JMP
(RET_EQ_304)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Main.main$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Main.main$IF_TRUE3) // label IF_TRUE3

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_305
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_305)

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 107
@107 // push constant 107 (constant)
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

// call Output.printString 1
@RET_CALL_308
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_308)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_309
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_309)

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

// label IF_FALSE3
(Main.main$IF_FALSE3) // label IF_FALSE3

// label IF_FALSE2
(Main.main$IF_FALSE2) // label IF_FALSE2

// goto WHILE_EXP4
@Main.main$WHILE_EXP4 // goto WHILE_EXP4
0;JMP // unconditional jump

// label WHILE_END4
(Main.main$WHILE_END4) // label WHILE_END4

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_310
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_310)

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 73
@73 // push constant 73 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// call Output.printString 1
@RET_CALL_324
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_324)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_325
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_325)

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

// call String.new 1
@RET_CALL_326
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_326)

// push constant 40
@40 // push constant 40 (constant)
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

// push constant 86
@86 // push constant 86 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_331
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_331)

// push constant 102
@102 // push constant 102 (constant)
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

// push constant 121
@121 // push constant 121 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_342
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_342)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_343
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_343)

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_344
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_344)

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_345
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_345)

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 103
@103 // push constant 103 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 102
@102 // push constant 102 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 98
@98 // push constant 98 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 107
@107 // push constant 107 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 41
@41 // push constant 41 (constant)
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

// call Output.printString 1
@RET_CALL_365
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_365)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_366
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_366)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP5
(Main.main$WHILE_EXP5) // label WHILE_EXP5

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

// if-goto WHILE_END5
@SP // if-goto WHILE_END5
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$WHILE_END5
D;JNE // jump if not zero

// push constant 38
@38 // push constant 38 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_367
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_367)

// push constant 80
@80 // push constant 80 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_368
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_368)

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 121
@121 // push constant 121 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_380
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_380)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_381
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_381)

// push constant 51
@51 // push constant 51 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_382
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_382)

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_383
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_383)

// push constant 49
@49 // push constant 49 (constant)
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

// push constant 50
@50 // push constant 50 (constant)
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

// push constant 51
@51 // push constant 51 (constant)
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

// push constant 39
@39 // push constant 39 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_401
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_401)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_402
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_402)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_403
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_403)

// push constant 58
@58 // push constant 58 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// call Keyboard.readInt 1
@RET_CALL_406
D=A
@CALL_Keyboard.readInt_1
0;JMP
(RET_CALL_406)

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

// push constant 32123
@32123 // push constant 32123 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// eq
@RET_EQ_407
D=A
@EQ_SUB
0;JMP
(RET_EQ_407)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.main$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Main.main$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Main.main$IF_TRUE4) // label IF_TRUE4

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_408
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_408)

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 107
@107 // push constant 107 (constant)
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

// call Output.printString 1
@RET_CALL_411
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_411)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.println 0
@RET_CALL_412
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_412)

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

// label IF_FALSE4
(Main.main$IF_FALSE4) // label IF_FALSE4

// goto WHILE_EXP5
@Main.main$WHILE_EXP5 // goto WHILE_EXP5
0;JMP // unconditional jump

// label WHILE_END5
(Main.main$WHILE_END5) // label WHILE_END5

// call Output.println 0
@RET_CALL_413
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_413)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_414
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_414)

// push constant 84
@84 // push constant 84 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_417
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_417)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_418
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_418)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_419
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_419)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_420
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_420)

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 109
@109 // push constant 109 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 117
@117 // push constant 117 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 99
@99 // push constant 99 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 102
@102 // push constant 102 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_437
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_437)

// push constant 117
@117 // push constant 117 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_438
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_438)

// push constant 108
@108 // push constant 108 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_439
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_439)

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 121
@121 // push constant 121 (constant)
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

// call Output.printString 1
@RET_CALL_442
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_442)

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
@RET_GT_443
D=A
@GT_SUB
0;JMP
(RET_GT_443)

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
@RET_CALL_444
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_444)

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
@RET_CALL_445
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_445)

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
@RET_CALL_446
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_446)

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
@RET_CALL_447
D=A
@CALL_Memory.peek_1
0;JMP
(RET_CALL_447)

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
@RET_CALL_448
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_448)

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
@RET_EQ_449
D=A
@EQ_SUB
0;JMP
(RET_EQ_449)

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
@RET_GT_450
D=A
@GT_SUB
0;JMP
(RET_GT_450)

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
@RET_CALL_451
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_451)

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
@RET_GT_452
D=A
@GT_SUB
0;JMP
(RET_GT_452)

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
@RET_CALL_453
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_453)

// call Output.printChar 1
@RET_CALL_454
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_454)

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
@RET_CALL_455
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_455)

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
@RET_CALL_456
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_456)

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
@RET_CALL_457
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_457)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call String.newLine 0
@RET_CALL_458
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_458)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// call String.backSpace 0
@RET_CALL_459
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_459)

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
@RET_CALL_460
D=A
@CALL_Keyboard.readChar_0
0;JMP
(RET_CALL_460)

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
@RET_EQ_461
D=A
@EQ_SUB
0;JMP
(RET_EQ_461)

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
@RET_EQ_462
D=A
@EQ_SUB
0;JMP
(RET_EQ_462)

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
@RET_CALL_463
D=A
@CALL_String.eraseLastChar_1
0;JMP
(RET_CALL_463)

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
@RET_CALL_464
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_464)

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
@RET_CALL_465
D=A
@CALL_Keyboard.readLine_1
0;JMP
(RET_CALL_465)

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
@RET_CALL_466
D=A
@CALL_String.intValue_1
0;JMP
(RET_CALL_466)

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
@RET_CALL_467
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_467)

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
@RET_CALL_468
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_468)

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
@RET_CALL_469
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_469)

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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_LT_470
D=A
@LT_SUB
0;JMP
(RET_LT_470)

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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_LT_471
D=A
@LT_SUB
0;JMP
(RET_LT_471)

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
@RET_LT_472
D=A
@LT_SUB
0;JMP
(RET_LT_472)

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
@RET_GT_473
D=A
@GT_SUB
0;JMP
(RET_GT_473)

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
@RET_GT_474
D=A
@GT_SUB
0;JMP
(RET_GT_474)

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
@RET_LT_475
D=A
@LT_SUB
0;JMP
(RET_LT_475)

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
@RET_CALL_476
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_476)

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
@RET_CALL_477
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_477)

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
@RET_LT_478
D=A
@LT_SUB
0;JMP
(RET_LT_478)

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
@RET_LT_479
D=A
@LT_SUB
0;JMP
(RET_LT_479)

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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_EQ_480
D=A
@EQ_SUB
0;JMP
(RET_EQ_480)

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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_EQ_481
D=A
@EQ_SUB
0;JMP
(RET_EQ_481)

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
@RET_CALL_482
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_482)

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
@RET_LT_483
D=A
@LT_SUB
0;JMP
(RET_LT_483)

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
@RET_GT_484
D=A
@GT_SUB
0;JMP
(RET_GT_484)

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
@RET_GT_485
D=A
@GT_SUB
0;JMP
(RET_GT_485)

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
@RET_LT_486
D=A
@LT_SUB
0;JMP
(RET_LT_486)

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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_CALL_487
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_487)

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
@RET_CALL_488
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_488)

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
@RET_LT_489
D=A
@LT_SUB
0;JMP
(RET_LT_489)

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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_LT_490
D=A
@LT_SUB
0;JMP
(RET_LT_490)

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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_GT_491
D=A
@GT_SUB
0;JMP
(RET_GT_491)

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
@RET_GT_492
D=A
@GT_SUB
0;JMP
(RET_GT_492)

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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_GT_493
D=A
@GT_SUB
0;JMP
(RET_GT_493)

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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@17 // push static 1 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_LT_494
D=A
@LT_SUB
0;JMP
(RET_LT_494)

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
@RET_CALL_495
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_495)

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
@16 // push static 0 (static ../projects/12/KeyboardTest/Math.vm)
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
@RET_CALL_497
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_497)

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
@RET_GT_498
D=A
@GT_SUB
0;JMP
(RET_GT_498)

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
@RET_LT_499
D=A
@LT_SUB
0;JMP
(RET_LT_499)

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
@RET_GT_500
D=A
@GT_SUB
0;JMP
(RET_GT_500)

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
@RET_LT_501
D=A
@LT_SUB
0;JMP
(RET_LT_501)

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

// push constant 2048
@2048 // push constant 2048 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 0
@18 // push static 0 (static ../projects/12/KeyboardTest/Memory.vm)
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

// push constant 14334
@14334 // push constant 14334 (constant)
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

// push constant 2049
@2049 // push constant 2049 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 0
@18 // push static 0 (static ../projects/12/KeyboardTest/Memory.vm)
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

// push constant 2050
@2050 // push constant 2050 (constant)
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
@18 // push static 0 (static ../projects/12/KeyboardTest/Memory.vm)
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
@18 // push static 0 (static ../projects/12/KeyboardTest/Memory.vm)
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
@RET_LT_502
D=A
@LT_SUB
0;JMP
(RET_LT_502)

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
@RET_CALL_503
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_503)

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
@RET_EQ_504
D=A
@EQ_SUB
0;JMP
(RET_EQ_504)

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

// push constant 2048
@2048 // push constant 2048 (constant)
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
(Memory.alloc$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16383
@16383 // push constant 16383 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_505
D=A
@LT_SUB
0;JMP
(RET_LT_505)

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
@RET_LT_506
D=A
@LT_SUB
0;JMP
(RET_LT_506)

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
@RET_EQ_507
D=A
@EQ_SUB
0;JMP
(RET_EQ_507)

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 16382
@16382 // push constant 16382 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_508
D=A
@GT_SUB
0;JMP
(RET_GT_508)

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
@RET_EQ_509
D=A
@EQ_SUB
0;JMP
(RET_EQ_509)

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
@RET_EQ_510
D=A
@EQ_SUB
0;JMP
(RET_EQ_510)

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

// push constant 16379
@16379 // push constant 16379 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_511
D=A
@GT_SUB
0;JMP
(RET_GT_511)

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
@RET_CALL_512
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_512)

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
@RET_GT_513
D=A
@GT_SUB
0;JMP
(RET_GT_513)

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
@RET_EQ_514
D=A
@EQ_SUB
0;JMP
(RET_EQ_514)

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
@RET_LT_515
D=A
@LT_SUB
0;JMP
(RET_LT_515)

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
@RET_CALL_516
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_516)

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
@RET_EQ_517
D=A
@EQ_SUB
0;JMP
(RET_EQ_517)

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
@RET_EQ_518
D=A
@EQ_SUB
0;JMP
(RET_EQ_518)

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
@23
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
@21
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
@20
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
@19
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_519
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_519)

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@22
M=D

// call Output.initMap 0
@RET_CALL_520
D=A
@CALL_Output.initMap_0
0;JMP
(RET_CALL_520)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output._createShiftedMap 0
@RET_CALL_521
D=A
@CALL_Output._createShiftedMap_0
0;JMP
(RET_CALL_521)

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
@RET_CALL_522
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_522)

// pop static 5
@SP // pop static 5
AM=M-1
D=M
@24
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
@RET_CALL_523
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_523)

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
@RET_CALL_524
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_524)

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
@RET_CALL_525
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_525)

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
@RET_CALL_526
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_526)

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
@RET_CALL_527
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_527)

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
@RET_CALL_528
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_528)

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
@RET_CALL_529
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_529)

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
@RET_CALL_530
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_530)

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
@RET_CALL_531
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_531)

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
@RET_CALL_532
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_532)

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
@RET_CALL_533
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_533)

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
@RET_CALL_534
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_534)

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
@RET_CALL_535
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_535)

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
@RET_CALL_536
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_536)

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
@RET_CALL_537
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_537)

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
@RET_CALL_538
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_538)

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
@RET_CALL_539
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_539)

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
@RET_CALL_540
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_540)

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
@RET_CALL_541
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_541)

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
@RET_CALL_542
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_542)

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
@RET_CALL_543
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_543)

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
@RET_CALL_544
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_544)

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
@RET_CALL_545
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_545)

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
@RET_CALL_546
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_546)

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
@RET_CALL_547
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_547)

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
@RET_CALL_548
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_548)

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
@RET_CALL_549
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_549)

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
@RET_CALL_550
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_550)

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
@RET_CALL_551
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_551)

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
@RET_CALL_552
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_552)

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
@RET_CALL_553
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_553)

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
@RET_CALL_554
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_554)

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
@RET_CALL_555
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_555)

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
@RET_CALL_556
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_556)

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
@RET_CALL_557
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_557)

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
@RET_CALL_558
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_558)

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
@RET_CALL_559
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_559)

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
@RET_CALL_560
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_560)

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
@RET_CALL_561
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_561)

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
@RET_CALL_562
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_562)

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
@RET_CALL_563
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_563)

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
@RET_CALL_564
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_564)

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
@RET_CALL_565
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_565)

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
@RET_CALL_566
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_566)

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
@RET_CALL_567
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_567)

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
@RET_CALL_568
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_568)

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
@RET_CALL_569
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_569)

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
@RET_CALL_570
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_570)

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
@RET_CALL_571
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_571)

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
@RET_CALL_572
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_572)

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
@RET_CALL_573
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_573)

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
@RET_CALL_574
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_574)

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
@RET_CALL_575
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_575)

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
@RET_CALL_576
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_576)

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
@RET_CALL_577
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_577)

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
@RET_CALL_578
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_578)

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
@RET_CALL_579
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_579)

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
@RET_CALL_580
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_580)

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
@RET_CALL_581
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_581)

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
@RET_CALL_582
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_582)

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
@RET_CALL_583
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_583)

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
@RET_CALL_584
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_584)

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
@RET_CALL_585
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_585)

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
@RET_CALL_586
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_586)

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
@RET_CALL_587
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_587)

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
@RET_CALL_588
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_588)

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
@RET_CALL_589
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_589)

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
@RET_CALL_590
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_590)

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
@RET_CALL_591
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_591)

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
@RET_CALL_592
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_592)

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
@RET_CALL_593
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_593)

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
@RET_CALL_594
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_594)

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
@RET_CALL_595
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_595)

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
@RET_CALL_596
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_596)

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
@RET_CALL_597
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_597)

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
@RET_CALL_598
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_598)

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
@RET_CALL_599
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_599)

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
@RET_CALL_600
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_600)

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
@RET_CALL_601
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_601)

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
@RET_CALL_602
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_602)

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
@RET_CALL_603
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_603)

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
@RET_CALL_604
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_604)

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
@RET_CALL_605
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_605)

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
@RET_CALL_606
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_606)

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
@RET_CALL_607
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_607)

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
@RET_CALL_608
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_608)

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
@RET_CALL_609
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_609)

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
@RET_CALL_610
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_610)

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
@RET_CALL_611
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_611)

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
@RET_CALL_612
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_612)

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
@RET_CALL_613
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_613)

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
@RET_CALL_614
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_614)

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
@RET_CALL_615
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_615)

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
@RET_CALL_616
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_616)

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
@RET_CALL_617
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_617)

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
@RET_CALL_618
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_618)

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
@RET_CALL_619
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_619)

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
@24 // push static 5 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_CALL_620
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_620)

// pop static 6
@SP // pop static 6
AM=M-1
D=M
@25
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
@RET_LT_621
D=A
@LT_SUB
0;JMP
(RET_LT_621)

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
@24 // push static 5 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_CALL_622
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_622)

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
@25 // push static 6 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_LT_623
D=A
@LT_SUB
0;JMP
(RET_LT_623)

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
@RET_CALL_624
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_624)

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
@RET_EQ_625
D=A
@EQ_SUB
0;JMP
(RET_EQ_625)

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
@RET_LT_626
D=A
@LT_SUB
0;JMP
(RET_LT_626)

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
@RET_GT_627
D=A
@GT_SUB
0;JMP
(RET_GT_627)

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
@21 // push static 2 (static ../projects/12/KeyboardTest/Output.vm)
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
@24 // push static 5 (static ../projects/12/KeyboardTest/Output.vm)
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
@25 // push static 6 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_CALL_628
D=A
@CALL_Output.getMap_1
0;JMP
(RET_CALL_628)

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
@20 // push static 1 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_LT_629
D=A
@LT_SUB
0;JMP
(RET_LT_629)

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
@21 // push static 2 (static ../projects/12/KeyboardTest/Output.vm)
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
@23 // push static 4 (static ../projects/12/KeyboardTest/Output.vm)
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
@23 // push static 4 (static ../projects/12/KeyboardTest/Output.vm)
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
@23 // push static 4 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_LT_630
D=A
@LT_SUB
0;JMP
(RET_LT_630)

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
@RET_GT_631
D=A
@GT_SUB
0;JMP
(RET_GT_631)

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
@RET_LT_632
D=A
@LT_SUB
0;JMP
(RET_LT_632)

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
@RET_GT_633
D=A
@GT_SUB
0;JMP
(RET_GT_633)

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
@RET_CALL_634
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_634)

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
@RET_CALL_635
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_635)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@19
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
@RET_CALL_636
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_636)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push static 0
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@20
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
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_CALL_637
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_637)

// eq
@RET_EQ_638
D=A
@EQ_SUB
0;JMP
(RET_EQ_638)

// pop static 2
@SP // pop static 2
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

// call Output._drawChar 1
@RET_CALL_639
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_639)

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
@RET_CALL_640
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_640)

// eq
@RET_EQ_641
D=A
@EQ_SUB
0;JMP
(RET_EQ_641)

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
@RET_CALL_642
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_642)

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
@RET_CALL_643
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_643)

// eq
@RET_EQ_644
D=A
@EQ_SUB
0;JMP
(RET_EQ_644)

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
@RET_CALL_645
D=A
@CALL_Output.backSpace_0
0;JMP
(RET_CALL_645)

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
@RET_CALL_646
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_646)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 2
@21 // push static 2 (static ../projects/12/KeyboardTest/Output.vm)
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
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@19
M=D

// push static 1
@20 // push static 1 (static ../projects/12/KeyboardTest/Output.vm)
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
@20
M=D

// label IF_FALSE2
(Output.printChar$IF_FALSE2) // label IF_FALSE2

// push static 0
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_EQ_647
D=A
@EQ_SUB
0;JMP
(RET_EQ_647)

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
@RET_CALL_648
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_648)

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
@21 // push static 2 (static ../projects/12/KeyboardTest/Output.vm)
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
@21
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
@RET_CALL_649
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_649)

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
@RET_LT_650
D=A
@LT_SUB
0;JMP
(RET_LT_650)

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
@RET_CALL_651
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_651)

// call Output.printChar 1
@RET_CALL_652
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_652)

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
@22 // push static 3 // function Output.printInt 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_CALL_653
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_653)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 3
@22 // push static 3 (static ../projects/12/KeyboardTest/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printString 1
@RET_CALL_654
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_654)

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
@20 // push static 1 // function Output.println 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@20
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
@19
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
@21
M=D

// push static 1
@20 // push static 1 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_EQ_655
D=A
@EQ_SUB
0;JMP
(RET_EQ_655)

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
@20
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
@21 // push static 2 // function Output.backSpace 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_GT_656
D=A
@GT_SUB
0;JMP
(RET_GT_656)

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
@19 // push static 0 (static ../projects/12/KeyboardTest/Output.vm)
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
@19
M=D

// push static 1
@20 // push static 1 (static ../projects/12/KeyboardTest/Output.vm)
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
@20
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
@19
M=D

// push static 1
@20 // push static 1 (static ../projects/12/KeyboardTest/Output.vm)
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
@RET_EQ_657
D=A
@EQ_SUB
0;JMP
(RET_EQ_657)

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
@20
M=D

// label IF_FALSE2
(Output.backSpace$IF_FALSE2) // label IF_FALSE2

// push static 1
@20 // push static 1 (static ../projects/12/KeyboardTest/Output.vm)
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
@20
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
@21
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
@21
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
@RET_CALL_658
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_658)

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

// function Screen.init 1
(Screen.init) // function Screen.init 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 16384
@16384 // push constant 16384 // function Screen.init 1 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 1
@SP // pop static 1
AM=M-1
D=M
@27
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
@28
M=D

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_659
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_659)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@26
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@RET_LT_660
D=A
@LT_SUB
0;JMP
(RET_LT_660)

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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@RET_LT_661
D=A
@LT_SUB
0;JMP
(RET_LT_661)

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
@27 // push static 1 (static ../projects/12/KeyboardTest/Screen.vm)
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
@28 // push static 2 // function Screen._updateLocation 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@27 // push static 1 (static ../projects/12/KeyboardTest/Screen.vm)
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
@27 // push static 1 (static ../projects/12/KeyboardTest/Screen.vm)
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
@27 // push static 1 (static ../projects/12/KeyboardTest/Screen.vm)
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
@27 // push static 1 (static ../projects/12/KeyboardTest/Screen.vm)
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
@RET_LT_662
D=A
@LT_SUB
0;JMP
(RET_LT_662)

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
@RET_GT_663
D=A
@GT_SUB
0;JMP
(RET_GT_663)

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
@RET_LT_664
D=A
@LT_SUB
0;JMP
(RET_LT_664)

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
@RET_GT_665
D=A
@GT_SUB
0;JMP
(RET_GT_665)

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
@RET_CALL_666
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_666)

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
@RET_CALL_667
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_667)

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
@RET_CALL_668
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_668)

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
@RET_CALL_669
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_669)

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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@RET_CALL_670
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_670)

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
@RET_CALL_671
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_671)

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
@RET_CALL_672
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_672)

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
@RET_LT_673
D=A
@LT_SUB
0;JMP
(RET_LT_673)

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
@RET_GT_674
D=A
@GT_SUB
0;JMP
(RET_GT_674)

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
@RET_LT_675
D=A
@LT_SUB
0;JMP
(RET_LT_675)

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
@RET_GT_676
D=A
@GT_SUB
0;JMP
(RET_GT_676)

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
@RET_CALL_677
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_677)

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
@RET_CALL_678
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_678)

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
@RET_CALL_679
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_679)

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
@RET_LT_680
D=A
@LT_SUB
0;JMP
(RET_LT_680)

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
@RET_LT_681
D=A
@LT_SUB
0;JMP
(RET_LT_681)

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
@RET_LT_682
D=A
@LT_SUB
0;JMP
(RET_LT_682)

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
@RET_GT_683
D=A
@GT_SUB
0;JMP
(RET_GT_683)

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
@RET_GT_684
D=A
@GT_SUB
0;JMP
(RET_GT_684)

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
@RET_CALL_685
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_685)

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
@RET_CALL_686
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_686)

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
@RET_CALL_687
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_687)

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
@RET_CALL_688
D=A
@CALL_Screen._drawConditional_3
0;JMP
(RET_CALL_688)

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
@RET_LT_689
D=A
@LT_SUB
0;JMP
(RET_LT_689)

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
@RET_LT_690
D=A
@LT_SUB
0;JMP
(RET_LT_690)

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
@RET_CALL_691
D=A
@CALL_Screen._drawConditional_3
0;JMP
(RET_CALL_691)

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
@RET_GT_692
D=A
@GT_SUB
0;JMP
(RET_GT_692)

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
@RET_GT_693
D=A
@GT_SUB
0;JMP
(RET_GT_693)

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
@RET_LT_694
D=A
@LT_SUB
0;JMP
(RET_LT_694)

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
@RET_GT_695
D=A
@GT_SUB
0;JMP
(RET_GT_695)

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
@RET_LT_696
D=A
@LT_SUB
0;JMP
(RET_LT_696)

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
@RET_GT_697
D=A
@GT_SUB
0;JMP
(RET_GT_697)

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
@RET_CALL_698
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_698)

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
@RET_CALL_699
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_699)

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
@RET_CALL_700
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_700)

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
@RET_CALL_701
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_701)

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
@RET_CALL_702
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_702)

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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@RET_CALL_703
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_703)

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
@RET_GT_704
D=A
@GT_SUB
0;JMP
(RET_GT_704)

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
@RET_EQ_705
D=A
@EQ_SUB
0;JMP
(RET_EQ_705)

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
@RET_CALL_706
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_706)

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
@RET_CALL_707
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_707)

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
@RET_LT_708
D=A
@LT_SUB
0;JMP
(RET_LT_708)

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
@RET_CALL_709
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_709)

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
@RET_CALL_710
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_710)

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
@RET_CALL_711
D=A
@CALL_Math.min_2
0;JMP
(RET_CALL_711)

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
@RET_CALL_712
D=A
@CALL_Math.max_2
0;JMP
(RET_CALL_712)

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
@RET_GT_713
D=A
@GT_SUB
0;JMP
(RET_GT_713)

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
@RET_LT_714
D=A
@LT_SUB
0;JMP
(RET_LT_714)

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
@RET_LT_715
D=A
@LT_SUB
0;JMP
(RET_LT_715)

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
@RET_GT_716
D=A
@GT_SUB
0;JMP
(RET_GT_716)

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
@RET_CALL_717
D=A
@CALL_Math.max_2
0;JMP
(RET_CALL_717)

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
@RET_CALL_718
D=A
@CALL_Math.min_2
0;JMP
(RET_CALL_718)

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
@RET_CALL_719
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_719)

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
@RET_CALL_720
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_720)

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
@RET_CALL_721
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_721)

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
@RET_CALL_722
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_722)

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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@26 // push static 0 (static ../projects/12/KeyboardTest/Screen.vm)
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
@RET_CALL_723
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_723)

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
@RET_EQ_724
D=A
@EQ_SUB
0;JMP
(RET_EQ_724)

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
@RET_CALL_725
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_725)

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
@RET_CALL_726
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_726)

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
@RET_LT_727
D=A
@LT_SUB
0;JMP
(RET_LT_727)

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
@RET_CALL_728
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_728)

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
@RET_CALL_729
D=A
@CALL_Screen._updateLocation_2
0;JMP
(RET_CALL_729)

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
@RET_CALL_730
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_730)

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
@RET_CALL_731
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_731)

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
@RET_CALL_732
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_732)

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
@RET_CALL_733
D=A
@CALL_Screen._drawHorizontal_3
0;JMP
(RET_CALL_733)

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
@RET_LT_734
D=A
@LT_SUB
0;JMP
(RET_LT_734)

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
@RET_GT_735
D=A
@GT_SUB
0;JMP
(RET_GT_735)

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
@RET_LT_736
D=A
@LT_SUB
0;JMP
(RET_LT_736)

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
@RET_GT_737
D=A
@GT_SUB
0;JMP
(RET_GT_737)

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
@RET_CALL_738
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_738)

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
@RET_LT_739
D=A
@LT_SUB
0;JMP
(RET_LT_739)

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
@RET_GT_740
D=A
@GT_SUB
0;JMP
(RET_GT_740)

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
@RET_LT_741
D=A
@LT_SUB
0;JMP
(RET_LT_741)

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
@RET_GT_742
D=A
@GT_SUB
0;JMP
(RET_GT_742)

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
@RET_CALL_743
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_743)

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
@RET_CALL_744
D=A
@CALL_Screen._drawSymetric_4
0;JMP
(RET_CALL_744)

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
@RET_GT_745
D=A
@GT_SUB
0;JMP
(RET_GT_745)

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
@RET_LT_746
D=A
@LT_SUB
0;JMP
(RET_LT_746)

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
@RET_CALL_747
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_747)

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
@RET_CALL_748
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_748)

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
@RET_CALL_749
D=A
@CALL_Screen._drawSymetric_4
0;JMP
(RET_CALL_749)

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
@RET_CALL_750
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_750)

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
@RET_LT_751
D=A
@LT_SUB
0;JMP
(RET_LT_751)

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
@RET_CALL_752
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_752)

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
@RET_GT_753
D=A
@GT_SUB
0;JMP
(RET_GT_753)

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
@RET_CALL_754
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_754)

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
@RET_GT_755
D=A
@GT_SUB
0;JMP
(RET_GT_755)

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
@RET_CALL_756
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_756)

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
@RET_CALL_757
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_757)

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
@RET_LT_758
D=A
@LT_SUB
0;JMP
(RET_LT_758)

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
@RET_GT_759
D=A
@GT_SUB
0;JMP
(RET_GT_759)

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
@RET_EQ_760
D=A
@EQ_SUB
0;JMP
(RET_EQ_760)

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
@RET_CALL_761
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_761)

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
@RET_LT_762
D=A
@LT_SUB
0;JMP
(RET_LT_762)

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
@RET_GT_763
D=A
@GT_SUB
0;JMP
(RET_GT_763)

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
@RET_EQ_764
D=A
@EQ_SUB
0;JMP
(RET_EQ_764)

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
@RET_CALL_765
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_765)

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
@RET_EQ_766
D=A
@EQ_SUB
0;JMP
(RET_EQ_766)

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
@RET_CALL_767
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_767)

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
@RET_EQ_768
D=A
@EQ_SUB
0;JMP
(RET_EQ_768)

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
@RET_CALL_769
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_769)

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
@RET_EQ_770
D=A
@EQ_SUB
0;JMP
(RET_EQ_770)

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
@RET_EQ_771
D=A
@EQ_SUB
0;JMP
(RET_EQ_771)

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
@RET_LT_772
D=A
@LT_SUB
0;JMP
(RET_LT_772)

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
@RET_LT_773
D=A
@LT_SUB
0;JMP
(RET_LT_773)

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
@RET_GT_774
D=A
@GT_SUB
0;JMP
(RET_GT_774)

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
@RET_CALL_775
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_775)

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
@RET_EQ_776
D=A
@EQ_SUB
0;JMP
(RET_EQ_776)

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
@RET_CALL_777
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_777)

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
@RET_CALL_778
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_778)

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
@RET_LT_779
D=A
@LT_SUB
0;JMP
(RET_LT_779)

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
@RET_GT_780
D=A
@GT_SUB
0;JMP
(RET_GT_780)

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
@RET_CALL_781
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_781)

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
@RET_CALL_782
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_782)

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
@RET_LT_783
D=A
@LT_SUB
0;JMP
(RET_LT_783)

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
@RET_CALL_784
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_784)

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
@RET_EQ_785
D=A
@EQ_SUB
0;JMP
(RET_EQ_785)

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
@RET_LT_786
D=A
@LT_SUB
0;JMP
(RET_LT_786)

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
@RET_CALL_787
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_787)

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
(CALL_Keyboard.readInt_1)
@R13
M=D // R13 = retAddr
@Keyboard.readInt
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
