
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
(Sys.WHILE_EXP0) // label WHILE_EXP0

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
@Sys.WHILE_END0
D;JNE // jump if not zero

// goto WHILE_EXP0
@Sys.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.WHILE_END0) // label WHILE_END0

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
@Sys.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Sys.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Sys.IF_TRUE0) // label IF_TRUE0

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
(Sys.IF_FALSE0) // label IF_FALSE0

// label WHILE_EXP0
(Sys.WHILE_EXP0) // label WHILE_EXP0

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
@Sys.WHILE_END0
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
(Sys.WHILE_EXP1) // label WHILE_EXP1

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
@Sys.WHILE_END1
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
@Sys.WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Sys.WHILE_END1) // label WHILE_END1

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
@Sys.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.WHILE_END0) // label WHILE_END0

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

// function Main.main 4
(Main.main) // function Main.main 4
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

// push constant 18
@18 // push constant 18 // function Main.main 4 (constant)
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

// push constant 72
@72 // push constant 72 (constant)
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

// push constant 111
@111 // push constant 111 (constant)
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

// push constant 119
@119 // push constant 119 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 109
@109 // push constant 109 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 121
@121 // push constant 121 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 117
@117 // push constant 117 (constant)
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

// push constant 109
@109 // push constant 109 (constant)
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

// push constant 98
@98 // push constant 98 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 63
@63 // push constant 63 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// call Keyboard.readInt 1
@RET_CALL_36
D=A
@CALL_Keyboard.readInt_1
0;JMP
(RET_CALL_36)

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

// call Array.new 1
@RET_CALL_37
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_37)

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
(Main.WHILE_EXP0) // label WHILE_EXP0

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

// lt
@RET_LT_38
D=A
@LT_SUB
0;JMP
(RET_LT_38)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Main.WHILE_END0
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

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_39
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_39)

// push constant 69
@69 // push constant 69 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 117
@117 // push constant 117 (constant)
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

// push constant 109
@109 // push constant 109 (constant)
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

// push constant 98
@98 // push constant 98 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 58
@58 // push constant 58 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// call Keyboard.readInt 1
@RET_CALL_56
D=A
@CALL_Keyboard.readInt_1
0;JMP
(RET_CALL_56)

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

// goto WHILE_EXP0
@Main.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Main.WHILE_END0) // label WHILE_END0

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_57
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_57)

// push constant 84
@84 // push constant 84 (constant)
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

// push constant 104
@104 // push constant 104 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 118
@118 // push constant 118 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 103
@103 // push constant 103 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_69
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_69)

// push constant 105
@105 // push constant 105 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_70
D=A
@CALL_String.appendChar_2
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

// push constant 32
@32 // push constant 32 (constant)
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

// call Output.printString 1
@RET_CALL_73
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_73)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Math.divide 2
@RET_CALL_74
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_74)

// call Output.printInt 1
@RET_CALL_75
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_75)

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
@RET_GT_76
D=A
@GT_SUB
0;JMP
(RET_GT_76)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Array.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Array.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Array.IF_TRUE0) // label IF_TRUE0

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_77
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_77)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Array.IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.alloc 1
@RET_CALL_78
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_78)

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
@RET_CALL_79
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_79)

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
@RET_CALL_80
D=A
@CALL_Memory.peek_1
0;JMP
(RET_CALL_80)

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
@RET_CALL_81
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_81)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Keyboard.WHILE_EXP0) // label WHILE_EXP0

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
@RET_EQ_82
D=A
@EQ_SUB
0;JMP
(RET_EQ_82)

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
@RET_GT_83
D=A
@GT_SUB
0;JMP
(RET_GT_83)

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
@Keyboard.WHILE_END0
D;JNE // jump if not zero

// call Keyboard.keyPressed 0
@RET_CALL_84
D=A
@CALL_Keyboard.keyPressed_0
0;JMP
(RET_CALL_84)

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
@RET_GT_85
D=A
@GT_SUB
0;JMP
(RET_GT_85)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Keyboard.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Keyboard.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Keyboard.IF_TRUE0) // label IF_TRUE0

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
(Keyboard.IF_FALSE0) // label IF_FALSE0

// goto WHILE_EXP0
@Keyboard.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Keyboard.WHILE_END0) // label WHILE_END0

// call String.backSpace 0
@RET_CALL_86
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_86)

// call Output.printChar 1
@RET_CALL_87
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_87)

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
@RET_CALL_88
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_88)

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
@RET_CALL_89
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_89)

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
@RET_CALL_90
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_90)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call String.newLine 0
@RET_CALL_91
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_91)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// call String.backSpace 0
@RET_CALL_92
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_92)

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
(Keyboard.WHILE_EXP0) // label WHILE_EXP0

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
@Keyboard.WHILE_END0
D;JNE // jump if not zero

// call Keyboard.readChar 0
@RET_CALL_93
D=A
@CALL_Keyboard.readChar_0
0;JMP
(RET_CALL_93)

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
@RET_EQ_94
D=A
@EQ_SUB
0;JMP
(RET_EQ_94)

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
@Keyboard.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Keyboard.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Keyboard.IF_TRUE0) // label IF_TRUE0

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
@RET_EQ_95
D=A
@EQ_SUB
0;JMP
(RET_EQ_95)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Keyboard.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Keyboard.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Keyboard.IF_TRUE1) // label IF_TRUE1

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
@RET_CALL_96
D=A
@CALL_String.eraseLastChar_1
0;JMP
(RET_CALL_96)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Keyboard.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Keyboard.IF_FALSE1) // label IF_FALSE1

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
@RET_CALL_97
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_97)

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
(Keyboard.IF_END1) // label IF_END1

// label IF_FALSE0
(Keyboard.IF_FALSE0) // label IF_FALSE0

// goto WHILE_EXP0
@Keyboard.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Keyboard.WHILE_END0) // label WHILE_END0

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
@RET_CALL_98
D=A
@CALL_Keyboard.readLine_1
0;JMP
(RET_CALL_98)

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
@RET_CALL_99
D=A
@CALL_String.intValue_1
0;JMP
(RET_CALL_99)

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
@RET_CALL_100
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_100)

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
@RET_CALL_101
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_101)

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
@RET_CALL_102
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_102)

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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
(Math.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_103
D=A
@LT_SUB
0;JMP
(RET_LT_103)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.WHILE_END0
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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@Math.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.WHILE_END0) // label WHILE_END0

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
@RET_LT_104
D=A
@LT_SUB
0;JMP
(RET_LT_104)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.IF_TRUE0) // label IF_TRUE0

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
(Math.IF_FALSE0) // label IF_FALSE0

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
@RET_LT_105
D=A
@LT_SUB
0;JMP
(RET_LT_105)

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
@RET_GT_106
D=A
@GT_SUB
0;JMP
(RET_GT_106)

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
@RET_GT_107
D=A
@GT_SUB
0;JMP
(RET_GT_107)

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
@RET_LT_108
D=A
@LT_SUB
0;JMP
(RET_LT_108)

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
@RET_CALL_109
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_109)

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
@RET_CALL_110
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_110)

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
@RET_LT_111
D=A
@LT_SUB
0;JMP
(RET_LT_111)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.IF_TRUE0) // label IF_TRUE0

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
(Math.IF_FALSE0) // label IF_FALSE0

// label WHILE_EXP0
(Math.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_112
D=A
@LT_SUB
0;JMP
(RET_LT_112)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.WHILE_END0
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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@RET_EQ_113
D=A
@EQ_SUB
0;JMP
(RET_EQ_113)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Math.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Math.IF_TRUE1) // label IF_TRUE1

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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
(Math.IF_FALSE1) // label IF_FALSE1

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
@Math.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.WHILE_END0) // label WHILE_END0

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
@Math.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Math.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Math.IF_TRUE2) // label IF_TRUE2

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
(Math.IF_FALSE2) // label IF_FALSE2

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
@RET_EQ_114
D=A
@EQ_SUB
0;JMP
(RET_EQ_114)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.IF_TRUE0) // label IF_TRUE0

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_115
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_115)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Math.IF_FALSE0) // label IF_FALSE0

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
@RET_LT_116
D=A
@LT_SUB
0;JMP
(RET_LT_116)

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
@RET_GT_117
D=A
@GT_SUB
0;JMP
(RET_GT_117)

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
@RET_GT_118
D=A
@GT_SUB
0;JMP
(RET_GT_118)

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
@RET_LT_119
D=A
@LT_SUB
0;JMP
(RET_LT_119)

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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@RET_CALL_120
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_120)

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
@RET_CALL_121
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_121)

// pop argument 0
@SP // pop argument 0
AM=M-1
D=M
@ARG
A=M
M=D

// label WHILE_EXP0
(Math.WHILE_EXP0) // label WHILE_EXP0

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
@Math.WHILE_END0
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@RET_LT_123
D=A
@LT_SUB
0;JMP
(RET_LT_123)

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
@Math.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Math.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Math.IF_TRUE1) // label IF_TRUE1

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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@RET_GT_124
D=A
@GT_SUB
0;JMP
(RET_GT_124)

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
@Math.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Math.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Math.IF_TRUE2) // label IF_TRUE2

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
(Math.IF_FALSE2) // label IF_FALSE2

// label IF_FALSE1
(Math.IF_FALSE1) // label IF_FALSE1

// goto WHILE_EXP0
@Math.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.WHILE_END0) // label WHILE_END0

// label WHILE_EXP1
(Math.WHILE_EXP1) // label WHILE_EXP1

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
@RET_GT_125
D=A
@GT_SUB
0;JMP
(RET_GT_125)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.WHILE_END1
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@RET_GT_126
D=A
@GT_SUB
0;JMP
(RET_GT_126)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Math.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Math.IF_TRUE3) // label IF_TRUE3

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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@17 // push static 1 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
(Math.IF_FALSE3) // label IF_FALSE3

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
@Math.WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Math.WHILE_END1) // label WHILE_END1

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
@Math.IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Math.IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Math.IF_TRUE4) // label IF_TRUE4

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
(Math.IF_FALSE4) // label IF_FALSE4

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
@RET_LT_127
D=A
@LT_SUB
0;JMP
(RET_LT_127)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.IF_TRUE0) // label IF_TRUE0

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_128
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_128)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Math.IF_FALSE0) // label IF_FALSE0

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
(Math.WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_129
D=A
@GT_SUB
0;JMP
(RET_GT_129)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.WHILE_END0
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
@16 // push static 0 (static ../projects/11/Average/Math.vm)
D=M
@SP
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
@RET_CALL_130
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_130)

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
@RET_GT_131
D=A
@GT_SUB
0;JMP
(RET_GT_131)

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
@RET_LT_132
D=A
@LT_SUB
0;JMP
(RET_LT_132)

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
@Math.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Math.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Math.IF_TRUE1) // label IF_TRUE1

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
(Math.IF_FALSE1) // label IF_FALSE1

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
@Math.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Math.WHILE_END0) // label WHILE_END0

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
@RET_GT_133
D=A
@GT_SUB
0;JMP
(RET_GT_133)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.IF_TRUE0) // label IF_TRUE0

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
(Math.IF_FALSE0) // label IF_FALSE0

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
@RET_LT_134
D=A
@LT_SUB
0;JMP
(RET_LT_134)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Math.IF_TRUE0) // label IF_TRUE0

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
(Math.IF_FALSE0) // label IF_FALSE0

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
@18 // push static 0 (static ../projects/11/Average/Memory.vm)
D=M
@SP
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
@18 // push static 0 (static ../projects/11/Average/Memory.vm)
D=M
@SP
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
@18 // push static 0 (static ../projects/11/Average/Memory.vm)
D=M
@SP
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
@18 // push static 0 (static ../projects/11/Average/Memory.vm)
D=M
@SP
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
@RET_LT_135
D=A
@LT_SUB
0;JMP
(RET_LT_135)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Memory.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Memory.IF_TRUE0) // label IF_TRUE0

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_136
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_136)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Memory.IF_FALSE0) // label IF_FALSE0

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
@RET_EQ_137
D=A
@EQ_SUB
0;JMP
(RET_EQ_137)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Memory.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Memory.IF_TRUE1) // label IF_TRUE1

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
(Memory.IF_FALSE1) // label IF_FALSE1

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
(Memory.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_138
D=A
@LT_SUB
0;JMP
(RET_LT_138)

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
@RET_LT_139
D=A
@LT_SUB
0;JMP
(RET_LT_139)

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
@Memory.WHILE_END0
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
@RET_EQ_140
D=A
@EQ_SUB
0;JMP
(RET_EQ_140)

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
@RET_GT_141
D=A
@GT_SUB
0;JMP
(RET_GT_141)

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
@RET_EQ_142
D=A
@EQ_SUB
0;JMP
(RET_EQ_142)

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
@Memory.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Memory.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Memory.IF_TRUE2) // label IF_TRUE2

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
@Memory.IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Memory.IF_FALSE2) // label IF_FALSE2

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
@RET_EQ_143
D=A
@EQ_SUB
0;JMP
(RET_EQ_143)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Memory.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Memory.IF_TRUE3) // label IF_TRUE3

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
@Memory.IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Memory.IF_FALSE3) // label IF_FALSE3

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
(Memory.IF_END3) // label IF_END3

// label IF_END2
(Memory.IF_END2) // label IF_END2

// goto WHILE_EXP0
@Memory.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Memory.WHILE_END0) // label WHILE_END0

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
@RET_GT_144
D=A
@GT_SUB
0;JMP
(RET_GT_144)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Memory.IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Memory.IF_TRUE4) // label IF_TRUE4

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_145
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_145)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE4
(Memory.IF_FALSE4) // label IF_FALSE4

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
@RET_GT_146
D=A
@GT_SUB
0;JMP
(RET_GT_146)

// if-goto IF_TRUE5
@SP // if-goto IF_TRUE5
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE5
D;JNE // jump if not zero

// goto IF_FALSE5
@Memory.IF_FALSE5 // goto IF_FALSE5
0;JMP // unconditional jump

// label IF_TRUE5
(Memory.IF_TRUE5) // label IF_TRUE5

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
@RET_EQ_147
D=A
@EQ_SUB
0;JMP
(RET_EQ_147)

// if-goto IF_TRUE6
@SP // if-goto IF_TRUE6
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE6
D;JNE // jump if not zero

// goto IF_FALSE6
@Memory.IF_FALSE6 // goto IF_FALSE6
0;JMP // unconditional jump

// label IF_TRUE6
(Memory.IF_TRUE6) // label IF_TRUE6

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
@Memory.IF_END6 // goto IF_END6
0;JMP // unconditional jump

// label IF_FALSE6
(Memory.IF_FALSE6) // label IF_FALSE6

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
(Memory.IF_END6) // label IF_END6

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

// label IF_FALSE5
(Memory.IF_FALSE5) // label IF_FALSE5

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
@RET_EQ_148
D=A
@EQ_SUB
0;JMP
(RET_EQ_148)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Memory.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Memory.IF_TRUE0) // label IF_TRUE0

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
@Memory.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Memory.IF_FALSE0) // label IF_FALSE0

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
@RET_EQ_149
D=A
@EQ_SUB
0;JMP
(RET_EQ_149)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Memory.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Memory.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Memory.IF_TRUE1) // label IF_TRUE1

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
@Memory.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Memory.IF_FALSE1) // label IF_FALSE1

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
(Memory.IF_END1) // label IF_END1

// label IF_END0
(Memory.IF_END0) // label IF_END0

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
@RET_CALL_150
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_150)

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@22
M=D

// call Output.initMap 0
@RET_CALL_151
D=A
@CALL_Output.initMap_0
0;JMP
(RET_CALL_151)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.createShiftedMap 0
@RET_CALL_152
D=A
@CALL_Output.createShiftedMap_0
0;JMP
(RET_CALL_152)

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
@RET_CALL_153
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_153)

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
@RET_CALL_154
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_154)

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
@RET_CALL_155
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_155)

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
@RET_CALL_156
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_156)

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
@RET_CALL_157
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_157)

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
@RET_CALL_158
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_158)

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
@RET_CALL_159
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_159)

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
@RET_CALL_160
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_160)

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
@RET_CALL_161
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_161)

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
@RET_CALL_162
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_162)

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
@RET_CALL_163
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_163)

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
@RET_CALL_164
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_164)

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
@RET_CALL_165
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_165)

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
@RET_CALL_166
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_166)

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
@RET_CALL_167
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_167)

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
@RET_CALL_168
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_168)

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
@RET_CALL_169
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_169)

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
@RET_CALL_170
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_170)

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
@RET_CALL_171
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_171)

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
@RET_CALL_172
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_172)

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
@RET_CALL_173
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_173)

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
@RET_CALL_174
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_174)

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
@RET_CALL_250
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_250)

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
@24 // push static 5 (static ../projects/11/Average/Output.vm)
D=M
@SP
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

// function Output.createShiftedMap 4
(Output.createShiftedMap) // function Output.createShiftedMap 4
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
@127 // push constant 127 // function Output.createShiftedMap 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Array.new 1
@RET_CALL_251
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_251)

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
(Output.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_252
D=A
@LT_SUB
0;JMP
(RET_LT_252)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.WHILE_END0
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
@24 // push static 5 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
@RET_CALL_253
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_253)

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
@25 // push static 6 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
(Output.WHILE_EXP1) // label WHILE_EXP1

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
@RET_LT_254
D=A
@LT_SUB
0;JMP
(RET_LT_254)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.WHILE_END1
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
@RET_CALL_255
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_255)

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
@Output.WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Output.WHILE_END1) // label WHILE_END1

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
@RET_EQ_256
D=A
@EQ_SUB
0;JMP
(RET_EQ_256)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

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
@Output.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.IF_FALSE0) // label IF_FALSE0

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
(Output.IF_END0) // label IF_END0

// goto WHILE_EXP0
@Output.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Output.WHILE_END0) // label WHILE_END0

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
@RET_LT_257
D=A
@LT_SUB
0;JMP
(RET_LT_257)

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
@RET_GT_258
D=A
@GT_SUB
0;JMP
(RET_GT_258)

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
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

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
(Output.IF_FALSE0) // label IF_FALSE0

// push static 2
@21 // push static 2 (static ../projects/11/Average/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.IF_TRUE1) // label IF_TRUE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 5
@24 // push static 5 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
@Output.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Output.IF_FALSE1) // label IF_FALSE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 6
@25 // push static 6 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
(Output.IF_END1) // label IF_END1

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

// function Output.drawChar 4
(Output.drawChar) // function Output.drawChar 4
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
@ARG // push argument 0 // function Output.drawChar 4
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call Output.getMap 1
@RET_CALL_259
D=A
@CALL_Output.getMap_1
0;JMP
(RET_CALL_259)

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
@20 // push static 1 (static ../projects/11/Average/Output.vm)
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
(Output.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_260
D=A
@LT_SUB
0;JMP
(RET_LT_260)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.WHILE_END0
D;JNE // jump if not zero

// push static 2
@21 // push static 2 (static ../projects/11/Average/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 4
@23 // push static 4 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
@Output.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.IF_FALSE0) // label IF_FALSE0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 4
@23 // push static 4 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
(Output.IF_END0) // label IF_END0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 4
@23 // push static 4 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
@Output.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Output.WHILE_END0) // label WHILE_END0

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
@RET_LT_261
D=A
@LT_SUB
0;JMP
(RET_LT_261)

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
@RET_GT_262
D=A
@GT_SUB
0;JMP
(RET_GT_262)

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
@RET_LT_263
D=A
@LT_SUB
0;JMP
(RET_LT_263)

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
@RET_GT_264
D=A
@GT_SUB
0;JMP
(RET_GT_264)

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
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_265
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_265)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Output.IF_FALSE0) // label IF_FALSE0

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
@RET_CALL_266
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_266)

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
@RET_CALL_267
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_267)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push static 0
@19 // push static 0 (static ../projects/11/Average/Output.vm)
D=M
@SP
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
@19 // push static 0 (static ../projects/11/Average/Output.vm)
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
@RET_CALL_268
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_268)

// eq
@RET_EQ_269
D=A
@EQ_SUB
0;JMP
(RET_EQ_269)

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

// call Output.drawChar 1
@RET_CALL_270
D=A
@CALL_Output.drawChar_1
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
@RET_CALL_271
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_271)

// eq
@RET_EQ_272
D=A
@EQ_SUB
0;JMP
(RET_EQ_272)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

// call Output.println 0
@RET_CALL_273
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_273)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Output.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.backSpace 0
@RET_CALL_274
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_274)

// eq
@RET_EQ_275
D=A
@EQ_SUB
0;JMP
(RET_EQ_275)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.IF_TRUE1) // label IF_TRUE1

// call Output.backSpace 0
@RET_CALL_276
D=A
@CALL_Output.backSpace_0
0;JMP
(RET_CALL_276)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Output.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Output.IF_FALSE1) // label IF_FALSE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.drawChar 1
@RET_CALL_277
D=A
@CALL_Output.drawChar_1
0;JMP
(RET_CALL_277)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 2
@21 // push static 2 (static ../projects/11/Average/Output.vm)
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
@Output.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Output.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Output.IF_TRUE2) // label IF_TRUE2

// push static 0
@19 // push static 0 (static ../projects/11/Average/Output.vm)
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
@20 // push static 1 (static ../projects/11/Average/Output.vm)
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
(Output.IF_FALSE2) // label IF_FALSE2

// push static 0
@19 // push static 0 (static ../projects/11/Average/Output.vm)
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
@RET_EQ_278
D=A
@EQ_SUB
0;JMP
(RET_EQ_278)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Output.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Output.IF_TRUE3) // label IF_TRUE3

// call Output.println 0
@RET_CALL_279
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_279)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END3
@Output.IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Output.IF_FALSE3) // label IF_FALSE3

// push static 2
@21 // push static 2 (static ../projects/11/Average/Output.vm)
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
(Output.IF_END3) // label IF_END3

// label IF_END1
(Output.IF_END1) // label IF_END1

// label IF_END0
(Output.IF_END0) // label IF_END0

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
@RET_CALL_280
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_280)

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(Output.WHILE_EXP0) // label WHILE_EXP0

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
@Output.WHILE_END0
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
@RET_CALL_282
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_282)

// call Output.printChar 1
@RET_CALL_283
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_283)

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
@Output.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Output.WHILE_END0) // label WHILE_END0

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
@22 // push static 3 // function Output.printInt 0 (static ../projects/11/Average/Output.vm)
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
@RET_CALL_284
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_284)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 3
@22 // push static 3 (static ../projects/11/Average/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printString 1
@RET_CALL_285
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_285)

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
@20 // push static 1 // function Output.println 0 (static ../projects/11/Average/Output.vm)
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
@19 // push static 0 (static ../projects/11/Average/Output.vm)
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
@20 // push static 1 (static ../projects/11/Average/Output.vm)
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
@RET_EQ_286
D=A
@EQ_SUB
0;JMP
(RET_EQ_286)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

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
(Output.IF_FALSE0) // label IF_FALSE0

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
@21 // push static 2 // function Output.backSpace 0 (static ../projects/11/Average/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.IF_TRUE0) // label IF_TRUE0

// push static 0
@19 // push static 0 (static ../projects/11/Average/Output.vm)
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
@RET_GT_287
D=A
@GT_SUB
0;JMP
(RET_GT_287)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.IF_TRUE1) // label IF_TRUE1

// push static 0
@19 // push static 0 (static ../projects/11/Average/Output.vm)
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
@20 // push static 1 (static ../projects/11/Average/Output.vm)
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
@Output.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Output.IF_FALSE1) // label IF_FALSE1

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
@20 // push static 1 (static ../projects/11/Average/Output.vm)
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
@RET_EQ_288
D=A
@EQ_SUB
0;JMP
(RET_EQ_288)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Output.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Output.IF_TRUE2) // label IF_TRUE2

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
(Output.IF_FALSE2) // label IF_FALSE2

// push static 1
@20 // push static 1 (static ../projects/11/Average/Output.vm)
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
(Output.IF_END1) // label IF_END1

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
@Output.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.IF_FALSE0) // label IF_FALSE0

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
(Output.IF_END0) // label IF_END0

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.drawChar 1
@RET_CALL_289
D=A
@CALL_Output.drawChar_1
0;JMP
(RET_CALL_289)

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
@RET_CALL_290
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_290)

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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
(Screen.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_291
D=A
@LT_SUB
0;JMP
(RET_LT_291)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.WHILE_END0
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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@Screen.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.WHILE_END0) // label WHILE_END0

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
(Screen.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_292
D=A
@LT_SUB
0;JMP
(RET_LT_292)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.WHILE_END0
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
@27 // push static 1 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@Screen.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.updateLocation 0
(Screen.updateLocation) // function Screen.updateLocation 0

// push static 2
@28 // push static 2 // function Screen.updateLocation 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@27 // push static 1 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@27 // push static 1 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@Screen.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@27 // push static 1 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@27 // push static 1 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
(Screen.IF_END0) // label IF_END0

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
@RET_LT_293
D=A
@LT_SUB
0;JMP
(RET_LT_293)

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
@RET_GT_294
D=A
@GT_SUB
0;JMP
(RET_GT_294)

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
@RET_LT_295
D=A
@LT_SUB
0;JMP
(RET_LT_295)

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
@RET_GT_296
D=A
@GT_SUB
0;JMP
(RET_GT_296)

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
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_297
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_297)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

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
@RET_CALL_298
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_298)

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
@RET_CALL_299
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_299)

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
@RET_CALL_300
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_300)

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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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

// call Screen.updateLocation 2
@RET_CALL_301
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_301)

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

// function Screen.drawConditional 0
(Screen.drawConditional) // function Screen.drawConditional 0

// push argument 2
@ARG // push argument 2 // function Screen.drawConditional 0 (&asm_segment)
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
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

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
@RET_CALL_302
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_302)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Screen.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

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
@RET_CALL_303
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_303)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(Screen.IF_END0) // label IF_END0

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
@RET_LT_304
D=A
@LT_SUB
0;JMP
(RET_LT_304)

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
@RET_GT_305
D=A
@GT_SUB
0;JMP
(RET_GT_305)

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
@RET_LT_306
D=A
@LT_SUB
0;JMP
(RET_LT_306)

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
@RET_GT_307
D=A
@GT_SUB
0;JMP
(RET_GT_307)

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
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_308
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_308)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

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
@RET_CALL_309
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_309)

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
@RET_CALL_310
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_310)

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
@RET_LT_311
D=A
@LT_SUB
0;JMP
(RET_LT_311)

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
@RET_LT_312
D=A
@LT_SUB
0;JMP
(RET_LT_312)

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
@RET_LT_313
D=A
@LT_SUB
0;JMP
(RET_LT_313)

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
@Screen.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.IF_TRUE1) // label IF_TRUE1

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
(Screen.IF_FALSE1) // label IF_FALSE1

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
@Screen.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Screen.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Screen.IF_TRUE2) // label IF_TRUE2

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
@RET_GT_314
D=A
@GT_SUB
0;JMP
(RET_GT_314)

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
@Screen.IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Screen.IF_FALSE2) // label IF_FALSE2

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
@RET_GT_315
D=A
@GT_SUB
0;JMP
(RET_GT_315)

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
(Screen.IF_END2) // label IF_END2

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
@RET_CALL_316
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_316)

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
@RET_CALL_317
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_317)

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
@RET_CALL_318
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_318)

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

// call Screen.drawConditional 3
@RET_CALL_319
D=A
@CALL_Screen.drawConditional_3
0;JMP
(RET_CALL_319)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Screen.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_320
D=A
@LT_SUB
0;JMP
(RET_LT_320)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.WHILE_END0
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
@RET_LT_321
D=A
@LT_SUB
0;JMP
(RET_LT_321)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Screen.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Screen.IF_TRUE3) // label IF_TRUE3

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
@Screen.IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Screen.IF_FALSE3) // label IF_FALSE3

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
@Screen.IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Screen.IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Screen.IF_TRUE4) // label IF_TRUE4

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
@Screen.IF_END4 // goto IF_END4
0;JMP // unconditional jump

// label IF_FALSE4
(Screen.IF_FALSE4) // label IF_FALSE4

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
(Screen.IF_END4) // label IF_END4

// label IF_END3
(Screen.IF_END3) // label IF_END3

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

// call Screen.drawConditional 3
@RET_CALL_322
D=A
@CALL_Screen.drawConditional_3
0;JMP
(RET_CALL_322)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@Screen.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.WHILE_END0) // label WHILE_END0

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
@RET_GT_323
D=A
@GT_SUB
0;JMP
(RET_GT_323)

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
@RET_GT_324
D=A
@GT_SUB
0;JMP
(RET_GT_324)

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
@RET_LT_325
D=A
@LT_SUB
0;JMP
(RET_LT_325)

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
@RET_GT_326
D=A
@GT_SUB
0;JMP
(RET_GT_326)

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
@RET_LT_327
D=A
@LT_SUB
0;JMP
(RET_LT_327)

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
@RET_GT_328
D=A
@GT_SUB
0;JMP
(RET_GT_328)

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
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_329
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_329)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

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
@RET_CALL_330
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_330)

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
@RET_CALL_331
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_331)

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
@RET_CALL_332
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_332)

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
@RET_CALL_333
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_333)

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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@RET_CALL_334
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_334)

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
(Screen.WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_335
D=A
@GT_SUB
0;JMP
(RET_GT_335)

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
@Screen.WHILE_END0
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
@RET_EQ_336
D=A
@EQ_SUB
0;JMP
(RET_EQ_336)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.IF_TRUE1) // label IF_TRUE1

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

// call Screen.updateLocation 2
@RET_CALL_337
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_337)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Screen.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Screen.IF_FALSE1) // label IF_FALSE1

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

// call Screen.updateLocation 2
@RET_CALL_338
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_338)

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
(Screen.WHILE_EXP1) // label WHILE_EXP1

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
@RET_LT_339
D=A
@LT_SUB
0;JMP
(RET_LT_339)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.WHILE_END1
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

// call Screen.updateLocation 2
@RET_CALL_340
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_340)

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
@Screen.WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Screen.WHILE_END1) // label WHILE_END1

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

// call Screen.updateLocation 2
@RET_CALL_341
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_341)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Screen.IF_END1) // label IF_END1

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
@Screen.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.drawHorizontal 11
(Screen.drawHorizontal) // function Screen.drawHorizontal 11
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
@ARG // push argument 1 // function Screen.drawHorizontal 11
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
@RET_CALL_342
D=A
@CALL_Math.min_2
0;JMP
(RET_CALL_342)

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
@RET_CALL_343
D=A
@CALL_Math.max_2
0;JMP
(RET_CALL_343)

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
@RET_GT_344
D=A
@GT_SUB
0;JMP
(RET_GT_344)

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
@RET_LT_345
D=A
@LT_SUB
0;JMP
(RET_LT_345)

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
@RET_LT_346
D=A
@LT_SUB
0;JMP
(RET_LT_346)

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
@RET_GT_347
D=A
@GT_SUB
0;JMP
(RET_GT_347)

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
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

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
@RET_CALL_348
D=A
@CALL_Math.max_2
0;JMP
(RET_CALL_348)

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
@RET_CALL_349
D=A
@CALL_Math.min_2
0;JMP
(RET_CALL_349)

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
@RET_CALL_350
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_350)

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
@RET_CALL_351
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_351)

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
@RET_CALL_352
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_352)

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
@RET_CALL_353
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_353)

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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@26 // push static 0 (static ../projects/11/Average/Screen.vm)
D=M
@SP
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
@RET_CALL_354
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_354)

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
@RET_EQ_355
D=A
@EQ_SUB
0;JMP
(RET_EQ_355)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.IF_TRUE1) // label IF_TRUE1

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

// call Screen.updateLocation 2
@RET_CALL_356
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_356)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Screen.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Screen.IF_FALSE1) // label IF_FALSE1

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

// call Screen.updateLocation 2
@RET_CALL_357
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_357)

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
(Screen.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_358
D=A
@LT_SUB
0;JMP
(RET_LT_358)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.WHILE_END0
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

// call Screen.updateLocation 2
@RET_CALL_359
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_359)

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
@Screen.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.WHILE_END0) // label WHILE_END0

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

// call Screen.updateLocation 2
@RET_CALL_360
D=A
@CALL_Screen.updateLocation_2
0;JMP
(RET_CALL_360)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Screen.IF_END1) // label IF_END1

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.drawSymetric 0
(Screen.drawSymetric) // function Screen.drawSymetric 0

// push argument 1
@ARG // push argument 1 // function Screen.drawSymetric 0
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

// call Screen.drawHorizontal 3
@RET_CALL_361
D=A
@CALL_Screen.drawHorizontal_3
0;JMP
(RET_CALL_361)

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

// call Screen.drawHorizontal 3
@RET_CALL_362
D=A
@CALL_Screen.drawHorizontal_3
0;JMP
(RET_CALL_362)

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

// call Screen.drawHorizontal 3
@RET_CALL_363
D=A
@CALL_Screen.drawHorizontal_3
0;JMP
(RET_CALL_363)

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

// call Screen.drawHorizontal 3
@RET_CALL_364
D=A
@CALL_Screen.drawHorizontal_3
0;JMP
(RET_CALL_364)

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
@RET_LT_365
D=A
@LT_SUB
0;JMP
(RET_LT_365)

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
@RET_GT_366
D=A
@GT_SUB
0;JMP
(RET_GT_366)

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
@RET_LT_367
D=A
@LT_SUB
0;JMP
(RET_LT_367)

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
@RET_GT_368
D=A
@GT_SUB
0;JMP
(RET_GT_368)

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
@Screen.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.IF_TRUE0) // label IF_TRUE0

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_369
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_369)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.IF_FALSE0) // label IF_FALSE0

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
@RET_LT_370
D=A
@LT_SUB
0;JMP
(RET_LT_370)

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
@RET_GT_371
D=A
@GT_SUB
0;JMP
(RET_GT_371)

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
@RET_LT_372
D=A
@LT_SUB
0;JMP
(RET_LT_372)

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
@RET_GT_373
D=A
@GT_SUB
0;JMP
(RET_GT_373)

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
@Screen.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Screen.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Screen.IF_TRUE1) // label IF_TRUE1

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_374
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_374)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE1
(Screen.IF_FALSE1) // label IF_FALSE1

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

// call Screen.drawSymetric 4
@RET_CALL_375
D=A
@CALL_Screen.drawSymetric_4
0;JMP
(RET_CALL_375)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label WHILE_EXP0
(Screen.WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_376
D=A
@GT_SUB
0;JMP
(RET_GT_376)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.WHILE_END0
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
@RET_LT_377
D=A
@LT_SUB
0;JMP
(RET_LT_377)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Screen.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Screen.IF_TRUE2) // label IF_TRUE2

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
@RET_CALL_378
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_378)

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
@Screen.IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Screen.IF_FALSE2) // label IF_FALSE2

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
@RET_CALL_379
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_379)

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
(Screen.IF_END2) // label IF_END2

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

// call Screen.drawSymetric 4
@RET_CALL_380
D=A
@CALL_Screen.drawSymetric_4
0;JMP
(RET_CALL_380)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto WHILE_EXP0
@Screen.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.WHILE_END0) // label WHILE_END0

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
@RET_CALL_381
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_381)

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
@RET_LT_382
D=A
@LT_SUB
0;JMP
(RET_LT_382)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_383
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_383)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

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
@RET_GT_384
D=A
@GT_SUB
0;JMP
(RET_GT_384)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@String.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(String.IF_TRUE1) // label IF_TRUE1

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Array.new 1
@RET_CALL_385
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_385)

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// label IF_FALSE1
(String.IF_FALSE1) // label IF_FALSE1

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
@RET_GT_386
D=A
@GT_SUB
0;JMP
(RET_GT_386)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Array.dispose 1
@RET_CALL_387
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_387)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_388
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_388)

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
@RET_LT_389
D=A
@LT_SUB
0;JMP
(RET_LT_389)

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
@RET_EQ_391
D=A
@EQ_SUB
0;JMP
(RET_EQ_391)

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
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_392
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_392)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

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
@RET_LT_393
D=A
@LT_SUB
0;JMP
(RET_LT_393)

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
@RET_GT_394
D=A
@GT_SUB
0;JMP
(RET_GT_394)

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
@RET_EQ_395
D=A
@EQ_SUB
0;JMP
(RET_EQ_395)

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
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_396
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_396)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

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
@RET_EQ_397
D=A
@EQ_SUB
0;JMP
(RET_EQ_397)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_398
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_398)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

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
@RET_EQ_399
D=A
@EQ_SUB
0;JMP
(RET_EQ_399)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_400
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_400)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

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
@RET_EQ_401
D=A
@EQ_SUB
0;JMP
(RET_EQ_401)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

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
@RET_EQ_402
D=A
@EQ_SUB
0;JMP
(RET_EQ_402)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@String.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(String.IF_TRUE1) // label IF_TRUE1

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
(String.IF_FALSE1) // label IF_FALSE1

// label WHILE_EXP0
(String.WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_403
D=A
@LT_SUB
0;JMP
(RET_LT_403)

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
@String.WHILE_END0
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
@RET_LT_404
D=A
@LT_SUB
0;JMP
(RET_LT_404)

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
@RET_GT_405
D=A
@GT_SUB
0;JMP
(RET_GT_405)

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
@String.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@String.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(String.IF_TRUE2) // label IF_TRUE2

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
@RET_CALL_406
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_406)

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
(String.IF_FALSE2) // label IF_FALSE2

// goto WHILE_EXP0
@String.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(String.WHILE_END0) // label WHILE_END0

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
@String.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@String.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(String.IF_TRUE3) // label IF_TRUE3

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
(String.IF_FALSE3) // label IF_FALSE3

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
@RET_EQ_407
D=A
@EQ_SUB
0;JMP
(RET_EQ_407)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@String.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(String.IF_TRUE0) // label IF_TRUE0

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_408
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_408)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(String.IF_FALSE0) // label IF_FALSE0

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_409
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_409)

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
@RET_LT_410
D=A
@LT_SUB
0;JMP
(RET_LT_410)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@String.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(String.IF_TRUE1) // label IF_TRUE1

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
(String.IF_FALSE1) // label IF_FALSE1

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
(String.WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_411
D=A
@GT_SUB
0;JMP
(RET_GT_411)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@String.WHILE_END0
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
@RET_CALL_412
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_412)

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
@RET_CALL_413
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_413)

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
@String.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(String.WHILE_END0) // label WHILE_END0

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
@String.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@String.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(String.IF_TRUE2) // label IF_TRUE2

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
(String.IF_FALSE2) // label IF_FALSE2

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
@RET_LT_414
D=A
@LT_SUB
0;JMP
(RET_LT_414)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@String.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(String.IF_TRUE3) // label IF_TRUE3

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_415
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_415)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE3
(String.IF_FALSE3) // label IF_FALSE3

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
@RET_EQ_416
D=A
@EQ_SUB
0;JMP
(RET_EQ_416)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@String.IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@String.IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(String.IF_TRUE4) // label IF_TRUE4

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
@String.IF_END4 // goto IF_END4
0;JMP // unconditional jump

// label IF_FALSE4
(String.IF_FALSE4) // label IF_FALSE4

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
(String.WHILE_EXP1) // label WHILE_EXP1

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
@RET_LT_417
D=A
@LT_SUB
0;JMP
(RET_LT_417)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@String.WHILE_END1
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
@String.WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(String.WHILE_END1) // label WHILE_END1

// label IF_END4
(String.IF_END4) // label IF_END4

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
@RET_CALL_418
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_418)

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
(CALL_Output.createShiftedMap_0)
@R13
M=D // R13 = retAddr
@Output.createShiftedMap
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
(CALL_Output.drawChar_1)
@R13
M=D // R13 = retAddr
@Output.drawChar
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
(CALL_Screen.updateLocation_2)
@R13
M=D // R13 = retAddr
@Screen.updateLocation
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
(CALL_Screen.drawConditional_3)
@R13
M=D // R13 = retAddr
@Screen.drawConditional
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
(CALL_Screen.drawHorizontal_3)
@R13
M=D // R13 = retAddr
@Screen.drawHorizontal
D=A
@R14
M=D // R14 = func addr
@3
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Screen.drawSymetric_4)
@R13
M=D // R13 = retAddr
@Screen.drawSymetric
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
