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

// call Screen.init 0
@RET_CALL_5
D=A
@CALL_Screen.init_0
0;JMP
(RET_CALL_5)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.init 0
@RET_CALL_6
D=A
@CALL_ScreenExt.init_0
0;JMP
(RET_CALL_6)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Output.init 0
@RET_CALL_7
D=A
@CALL_Output.init_0
0;JMP
(RET_CALL_7)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Touch.init 0
@RET_CALL_8
D=A
@CALL_Touch.init_0
0;JMP
(RET_CALL_8)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Main.main 0
@RET_CALL_9
D=A
@CALL_Main.main_0
0;JMP
(RET_CALL_9)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Sys.halt 0
@RET_CALL_10
D=A
@CALL_Sys.halt_0
0;JMP
(RET_CALL_10)

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
@RET_LT_11
D=A
@LT_SUB
0;JMP
(RET_LT_11)

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
@RET_CALL_12
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_12)

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
@RET_GT_13
D=A
@GT_SUB
0;JMP
(RET_GT_13)

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
@RET_GT_14
D=A
@GT_SUB
0;JMP
(RET_GT_14)

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

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.printChar 1
@RET_CALL_17
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_17)

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
@RET_CALL_18
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_18)

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
@RET_CALL_19
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_19)

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
@RET_CALL_20
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_20)

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
@RET_CALL_21
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_21)

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
@RET_CALL_22
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_22)

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
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_23
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_23)

// push constant 32
@32 // push constant 32 (constant)
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

// push constant 80
@80 // push constant 80 (constant)
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

// push constant 108
@108 // push constant 108 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 121
@121 // push constant 121 (constant)
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

// call Menu.new 4
@RET_CALL_29
D=A
@CALL_Menu.new_4
0;JMP
(RET_CALL_29)

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@17
M=D

// call Tile.init 0
@RET_CALL_30
D=A
@CALL_Tile.init_0
0;JMP
(RET_CALL_30)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 10000
@10000 // push constant 10000 (constant)
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

// label WHILE_EXP0
(Main.main$WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_31
D=A
@GT_SUB
0;JMP
(RET_GT_31)

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

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 10000
@10000 // push constant 10000 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_32
D=A
@EQ_SUB
0;JMP
(RET_EQ_32)

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

// call Main.drawStart 0
@RET_CALL_33
D=A
@CALL_Main.drawStart_0
0;JMP
(RET_CALL_33)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Main.drawTile 0
@RET_CALL_34
D=A
@CALL_Main.drawTile_0
0;JMP
(RET_CALL_34)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Menu.draw 1
@RET_CALL_35
D=A
@CALL_Menu.draw_1
0;JMP
(RET_CALL_35)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Main.main$IF_FALSE0) // label IF_FALSE0

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

// eq
@RET_EQ_36
D=A
@EQ_SUB
0;JMP
(RET_EQ_36)

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

// call Main.clearTile 0
@RET_CALL_37
D=A
@CALL_Main.clearTile_0
0;JMP
(RET_CALL_37)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Main.drawTile 0
@RET_CALL_38
D=A
@CALL_Main.drawTile_0
0;JMP
(RET_CALL_38)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 10000
@10000 // push constant 10000 (constant)
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

// label IF_FALSE1
(Main.main$IF_FALSE1) // label IF_FALSE1

// push static 1
@17 // push static 1 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Menu.getButton 1
@RET_CALL_39
D=A
@CALL_Menu.getButton_1
0;JMP
(RET_CALL_39)

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_40
D=A
@EQ_SUB
0;JMP
(RET_EQ_40)

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

// call Main.clearTile 0
@RET_CALL_41
D=A
@CALL_Main.clearTile_0
0;JMP
(RET_CALL_41)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call TetrisGame.new 0
@RET_CALL_42
D=A
@CALL_TetrisGame.new_0
0;JMP
(RET_CALL_42)

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@18
M=D

// push static 2
@18 // push static 2 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call TetrisGame.run 1
@RET_CALL_43
D=A
@CALL_TetrisGame.run_1
0;JMP
(RET_CALL_43)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 2
@18 // push static 2 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call TetrisGame.dispose 1
@RET_CALL_44
D=A
@CALL_TetrisGame.dispose_1
0;JMP
(RET_CALL_44)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 1
@17 // push static 1 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Menu.draw 1
@RET_CALL_45
D=A
@CALL_Menu.draw_1
0;JMP
(RET_CALL_45)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 5000
@5000 // push constant 5000 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.wait 1
@RET_CALL_46
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_46)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 20000
@20000 // push constant 20000 (constant)
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

// label IF_FALSE2
(Main.main$IF_FALSE2) // label IF_FALSE2

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

// return
@RETURN_SUB
0;JMP

// function Main.drawTile 0
(Main.drawTile) // function Main.drawTile 0

// call Tile.new 0 // function Main.drawTile 0
@RET_CALL_47
D=A
@CALL_Tile.new_0
0;JMP
(RET_CALL_47)
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@16
M=D

// push static 0
@16 // push static 0 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
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

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Tile.move 3
@RET_CALL_48
D=A
@CALL_Tile.move_3
0;JMP
(RET_CALL_48)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 0
@16 // push static 0 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_49
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_49)

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

// function Main.clearTile 0
(Main.clearTile) // function Main.clearTile 0

// push static 0
@16 // push static 0 // function Main.clearTile 0 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// call Tile.erase 1
@RET_CALL_50
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_50)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 0
@16 // push static 0 (static ../projects/13/Original/12_Tetris/Main.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.dispose 1
@RET_CALL_51
D=A
@CALL_Tile.dispose_1
0;JMP
(RET_CALL_51)

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

// function Main.drawStart 2
(Main.drawStart) // function Main.drawStart 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 16
@16 // push constant 16 // function Main.drawStart 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call String.new 1
@RET_CALL_52
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_52)

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// push constant 110
@110 // push constant 110 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
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

// push constant 50
@50 // push constant 50 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 101
@101 // push constant 101 (constant)
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

// push constant 116
@116 // push constant 116 (constant)
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

// push constant 114
@114 // push constant 114 (constant)
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

// push constant 105
@105 // push constant 105 (constant)
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

// push constant 115
@115 // push constant 115 (constant)
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

// push constant 45
@45 // push constant 45 (constant)
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

// push constant 102
@102 // push constant 102 (constant)
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

// push constant 112
@112 // push constant 112 (constant)
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

// push constant 97
@97 // push constant 97 (constant)
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// call Screen.clearScreen 0
@RET_CALL_69
D=A
@CALL_Screen.clearScreen_0
0;JMP
(RET_CALL_69)

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

// call ScreenExt.setPenColor 1
@RET_CALL_70
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_70)

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

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_71
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_71)

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

// call Output.printString 1
@RET_CALL_72
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_72)

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
@RET_CALL_73
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_73)

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
@RET_GT_74
D=A
@GT_SUB
0;JMP
(RET_GT_74)

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
@RET_CALL_75
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_75)

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
@RET_CALL_76
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_76)

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
@RET_CALL_77
D=A
@CALL_Memory.deAlloc_1
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

// function Button.new 0
(Button.new) // function Button.new 0

// push constant 2
@2 // push constant 2 // function Button.new 0 (constant)
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

// function Button.dispose 0
(Button.dispose) // function Button.dispose 0

// push argument 0
@ARG // push argument 0 // function Button.dispose 0
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_79
D=A
@EQ_SUB
0;JMP
(RET_EQ_79)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Button.dispose$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Button.dispose$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Button.dispose$IF_TRUE0) // label IF_TRUE0

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call String.dispose 1
@RET_CALL_80
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_80)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Button.dispose$IF_FALSE0) // label IF_FALSE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Memory.deAlloc 1
@RET_CALL_81
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_81)

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

// function Button.draw 3
(Button.draw) // function Button.draw 3
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
@ARG // push argument 0 // function Button.draw 3
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

// push constant 3
@3 // push constant 3 (constant)
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_82
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_82)

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

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Button.draw$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Button.draw$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Button.draw$IF_TRUE0) // label IF_TRUE0

// call ScreenExt.DARKGREY 0
@RET_CALL_83
D=A
@CALL_ScreenExt.DARKGREY_0
0;JMP
(RET_CALL_83)

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
@Button.draw$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Button.draw$IF_FALSE0) // label IF_FALSE0

// call ScreenExt.LIGHTGREY 0
@RET_CALL_84
D=A
@CALL_ScreenExt.LIGHTGREY_0
0;JMP
(RET_CALL_84)

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
(Button.draw$IF_END0) // label IF_END0

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

// call ScreenExt.setPenColor 1
@RET_CALL_85
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_85)

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

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_86
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_86)

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

// push constant 288
@288 // push constant 288 (constant)
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

// push constant 33
@33 // push constant 33 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_87
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_87)

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

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_88
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_88)

// push constant 58
@58 // push constant 58 (constant)
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

// push constant 318
@318 // push constant 318 (constant)
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

// push constant 33
@33 // push constant 33 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_89
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_89)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// call Screen.drawRectangle 4
@RET_CALL_90
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_90)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call ScreenExt.setBackColor 1
@RET_CALL_91
D=A
@CALL_ScreenExt.setBackColor_1
0;JMP
(RET_CALL_91)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.BLACK 0
@RET_CALL_92
D=A
@CALL_ScreenExt.BLACK_0
0;JMP
(RET_CALL_92)

// call ScreenExt.setPenColor 1
@RET_CALL_93
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_93)

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

// push constant 3
@3 // push constant 3 (constant)
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
@RET_CALL_94
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_94)

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

// call Math.multiply 2
@RET_CALL_95
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_95)

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_96
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_96)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call Output.moveCursor 2
@RET_CALL_97
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_97)

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_98
D=A
@EQ_SUB
0;JMP
(RET_EQ_98)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Button.draw$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Button.draw$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Button.draw$IF_TRUE1) // label IF_TRUE1

// push this 1
@THIS // push this 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printString 1
@RET_CALL_99
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_99)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE1
(Button.draw$IF_FALSE1) // label IF_FALSE1

// call ScreenExt.WHITE 0
@RET_CALL_100
D=A
@CALL_ScreenExt.WHITE_0
0;JMP
(RET_CALL_100)

// call ScreenExt.setBackColor 1
@RET_CALL_101
D=A
@CALL_ScreenExt.setBackColor_1
0;JMP
(RET_CALL_101)

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
@19
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
@20
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
@21
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
@19 // push static 0 (static ../projects/13/Original/12_Tetris/GPIO.vm)
D=M
@SP
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
@19 // push static 0 (static ../projects/13/Original/12_Tetris/GPIO.vm)
D=M
@SP
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
@20 // push static 1 (static ../projects/13/Original/12_Tetris/GPIO.vm)
D=M
@SP
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
@21 // push static 2 (static ../projects/13/Original/12_Tetris/GPIO.vm)
D=M
@SP
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
@21 // push static 2 (static ../projects/13/Original/12_Tetris/GPIO.vm)
D=M
@SP
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
@RET_CALL_102
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_102)

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
@RET_CALL_103
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_103)

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
@RET_CALL_104
D=A
@CALL_GPIO.writeLed_1
0;JMP
(RET_CALL_104)

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
@RET_CALL_105
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_105)

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

// function Grid.new 1
(Grid.new) // function Grid.new 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 1
@SP // push constant 1 // function Grid.new 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign
// call Memory.alloc 1
@RET_CALL_106
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_106)

// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push constant 220
@220 // push constant 220 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_107
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_107)

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// call ScreenExt.DARKGREY 0
@RET_CALL_108
D=A
@CALL_ScreenExt.DARKGREY_0
0;JMP
(RET_CALL_108)

// call ScreenExt.setPenColor 1
@RET_CALL_109
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_109)

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

// push constant 4
@4 // push constant 4 (constant)
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

// push constant 283
@283 // push constant 283 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Screen.drawRectangle 4
@RET_CALL_110
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_110)

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

// push constant 284
@284 // push constant 284 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 147
@147 // push constant 147 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 285
@285 // push constant 285 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Screen.drawRectangle 4
@RET_CALL_111
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_111)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 146
@146 // push constant 146 (constant)
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

// push constant 147
@147 // push constant 147 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 285
@285 // push constant 285 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Screen.drawRectangle 4
@RET_CALL_112
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_112)

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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP0
(Grid.new$WHILE_EXP0) // label WHILE_EXP0

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 220
@220 // push constant 220 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_113
D=A
@LT_SUB
0;JMP
(RET_LT_113)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.new$WHILE_END0
D;JNE // jump if not zero

// push local 0
@LCL // push local 0
A=M
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
@Grid.new$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Grid.new$WHILE_END0) // label WHILE_END0

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

// function Grid.dispose 0
(Grid.dispose) // function Grid.dispose 0

// push argument 0
@ARG // push argument 0 // function Grid.dispose 0
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

// call Array.dispose 1
@RET_CALL_114
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_114)

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
@RET_CALL_115
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_115)

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

// function Grid.draw 0
(Grid.draw) // function Grid.draw 0

// push argument 0
@ARG // push argument 0 // function Grid.draw 0
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

// call ScreenExt.setPenColor 1
@RET_CALL_116
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_116)

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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_117
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_117)

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_118
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_118)

// push constant 24
@24 // push constant 24 (constant)
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_119
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_119)

// push constant 18
@18 // push constant 18 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_120
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_120)

// push constant 12
@12 // push constant 12 (constant)
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

// call Screen.drawRectangle 4
@RET_CALL_121
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_121)

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

// push constant 10
@10 // push constant 10 (constant)
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

// gt
@RET_GT_123
D=A
@GT_SUB
0;JMP
(RET_GT_123)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

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
@RET_GT_124
D=A
@GT_SUB
0;JMP
(RET_GT_124)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

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

// push constant 22
@22 // push constant 22 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// lt
@RET_LT_125
D=A
@LT_SUB
0;JMP
(RET_LT_125)

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
@Grid.draw$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Grid.draw$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Grid.draw$IF_TRUE0) // label IF_TRUE0

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

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_126
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_126)

// push argument 1
@ARG // push argument 1
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

// push this 0
@THIS // push this 0
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

// label IF_FALSE0
(Grid.draw$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Grid.hasTile 0
(Grid.hasTile) // function Grid.hasTile 0

// push argument 0
@ARG // push argument 0 // function Grid.hasTile 0
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

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_127
D=A
@GT_SUB
0;JMP
(RET_GT_127)

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
@RET_LT_128
D=A
@LT_SUB
0;JMP
(RET_LT_128)

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

// push constant 21
@21 // push constant 21 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_129
D=A
@GT_SUB
0;JMP
(RET_GT_129)

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// lt
@RET_LT_130
D=A
@LT_SUB
0;JMP
(RET_LT_130)

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
@Grid.hasTile$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Grid.hasTile$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Grid.hasTile$IF_TRUE0) // label IF_TRUE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// return
@RETURN_SUB
0;JMP

// label IF_FALSE0
(Grid.hasTile$IF_FALSE0) // label IF_FALSE0

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

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_131
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_131)

// push argument 1
@ARG // push argument 1
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

// push this 0
@THIS // push this 0
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
@RET_EQ_132
D=A
@EQ_SUB
0;JMP
(RET_EQ_132)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.hasTile$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Grid.hasTile$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Grid.hasTile$IF_TRUE1) // label IF_TRUE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// label IF_FALSE1
(Grid.hasTile$IF_FALSE1) // label IF_FALSE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// return
@RETURN_SUB
0;JMP

// function Grid.isClear 0
(Grid.isClear) // function Grid.isClear 0

// push argument 0
@ARG // push argument 0 // function Grid.isClear 0
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

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_133
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_133)

// push argument 1
@ARG // push argument 1
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

// push this 0
@THIS // push this 0
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

// call ScreenExt.DARKGREY 0
@RET_CALL_134
D=A
@CALL_ScreenExt.DARKGREY_0
0;JMP
(RET_CALL_134)

// eq
@RET_EQ_135
D=A
@EQ_SUB
0;JMP
(RET_EQ_135)

// return
@RETURN_SUB
0;JMP

// function Grid.clearRow 5
(Grid.clearRow) // function Grid.clearRow 5
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
@ARG // push argument 0 // function Grid.clearRow 5
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

// label WHILE_EXP0
(Grid.clearRow$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
A=M+1
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

// lt
@RET_LT_136
D=A
@LT_SUB
0;JMP
(RET_LT_136)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$WHILE_END0
D;JNE // jump if not zero

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

// label WHILE_EXP1
(Grid.clearRow$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
A=M
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

// lt
@RET_LT_137
D=A
@LT_SUB
0;JMP
(RET_LT_137)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$WHILE_END1
D;JNE // jump if not zero

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

// call Grid.hasTile 3
@RET_CALL_138
D=A
@CALL_Grid.hasTile_3
0;JMP
(RET_CALL_138)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Grid.clearRow$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Grid.clearRow$IF_TRUE0) // label IF_TRUE0

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

// label IF_FALSE0
(Grid.clearRow$IF_FALSE0) // label IF_FALSE0

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
@Grid.clearRow$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Grid.clearRow$WHILE_END1) // label WHILE_END1

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

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Grid.clearRow$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Grid.clearRow$IF_TRUE1) // label IF_TRUE1

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

// label WHILE_EXP2
(Grid.clearRow$WHILE_EXP2) // label WHILE_EXP2

// push local 0
@LCL // push local 0
A=M
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

// lt
@RET_LT_139
D=A
@LT_SUB
0;JMP
(RET_LT_139)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END2
@SP // if-goto WHILE_END2
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$WHILE_END2
D;JNE // jump if not zero

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

// call ScreenExt.DARKGREY 0
@RET_CALL_140
D=A
@CALL_ScreenExt.DARKGREY_0
0;JMP
(RET_CALL_140)

// call Grid.draw 4
@RET_CALL_141
D=A
@CALL_Grid.draw_4
0;JMP
(RET_CALL_141)

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

// goto WHILE_EXP2
@Grid.clearRow$WHILE_EXP2 // goto WHILE_EXP2
0;JMP // unconditional jump

// label WHILE_END2
(Grid.clearRow$WHILE_END2) // label WHILE_END2

// label IF_FALSE1
(Grid.clearRow$IF_FALSE1) // label IF_FALSE1

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
@Grid.clearRow$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Grid.clearRow$WHILE_END0) // label WHILE_END0

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP3
(Grid.clearRow$WHILE_EXP3) // label WHILE_EXP3

// push local 1
@LCL // push local 1
A=M+1
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

// lt
@RET_LT_142
D=A
@LT_SUB
0;JMP
(RET_LT_142)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END3
@SP // if-goto WHILE_END3
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$WHILE_END3
D;JNE // jump if not zero

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

// label WHILE_EXP4
(Grid.clearRow$WHILE_EXP4) // label WHILE_EXP4

// push local 0
@LCL // push local 0
A=M
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

// lt
@RET_LT_143
D=A
@LT_SUB
0;JMP
(RET_LT_143)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END4
@SP // if-goto WHILE_END4
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$WHILE_END4
D;JNE // jump if not zero

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

// call Grid.isClear 3
@RET_CALL_144
D=A
@CALL_Grid.isClear_3
0;JMP
(RET_CALL_144)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Grid.clearRow$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Grid.clearRow$IF_TRUE2) // label IF_TRUE2

// push local 1
@LCL // push local 1
A=M+1
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

// label WHILE_EXP5
(Grid.clearRow$WHILE_EXP5) // label WHILE_EXP5

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

// if-goto WHILE_END5
@SP // if-goto WHILE_END5
AM=M-1 // SP--, A -> val
D=M // d = val
@Grid.clearRow$WHILE_END5
D;JNE // jump if not zero

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

// call Math.multiply 2
@RET_CALL_146
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_146)

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

// push this 0
@THIS // push this 0
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

// call Grid.draw 4
@RET_CALL_147
D=A
@CALL_Grid.draw_4
0;JMP
(RET_CALL_147)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// goto WHILE_EXP5
@Grid.clearRow$WHILE_EXP5 // goto WHILE_EXP5
0;JMP // unconditional jump

// label WHILE_END5
(Grid.clearRow$WHILE_END5) // label WHILE_END5

// label IF_FALSE2
(Grid.clearRow$IF_FALSE2) // label IF_FALSE2

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

// goto WHILE_EXP4
@Grid.clearRow$WHILE_EXP4 // goto WHILE_EXP4
0;JMP // unconditional jump

// label WHILE_END4
(Grid.clearRow$WHILE_END4) // label WHILE_END4

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

// goto WHILE_EXP3
@Grid.clearRow$WHILE_EXP3 // goto WHILE_EXP3
0;JMP // unconditional jump

// label WHILE_END3
(Grid.clearRow$WHILE_END3) // label WHILE_END3

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
@RET_CALL_148
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_148)

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@23
M=D

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_149
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_149)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@22
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_LT_150
D=A
@LT_SUB
0;JMP
(RET_LT_150)

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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_LT_151
D=A
@LT_SUB
0;JMP
(RET_LT_151)

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
@RET_LT_152
D=A
@LT_SUB
0;JMP
(RET_LT_152)

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
@RET_GT_153
D=A
@GT_SUB
0;JMP
(RET_GT_153)

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
@RET_GT_154
D=A
@GT_SUB
0;JMP
(RET_GT_154)

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
@RET_LT_155
D=A
@LT_SUB
0;JMP
(RET_LT_155)

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
@RET_CALL_156
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_156)

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
@RET_CALL_157
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_157)

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
@RET_LT_158
D=A
@LT_SUB
0;JMP
(RET_LT_158)

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
@RET_LT_159
D=A
@LT_SUB
0;JMP
(RET_LT_159)

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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_EQ_160
D=A
@EQ_SUB
0;JMP
(RET_EQ_160)

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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_EQ_161
D=A
@EQ_SUB
0;JMP
(RET_EQ_161)

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
@RET_CALL_162
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_162)

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
@RET_LT_163
D=A
@LT_SUB
0;JMP
(RET_LT_163)

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
@RET_GT_164
D=A
@GT_SUB
0;JMP
(RET_GT_164)

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
@RET_GT_165
D=A
@GT_SUB
0;JMP
(RET_GT_165)

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
@RET_LT_166
D=A
@LT_SUB
0;JMP
(RET_LT_166)

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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_CALL_167
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_167)

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
@RET_CALL_168
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_168)

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
@RET_LT_169
D=A
@LT_SUB
0;JMP
(RET_LT_169)

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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_LT_170
D=A
@LT_SUB
0;JMP
(RET_LT_170)

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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_GT_171
D=A
@GT_SUB
0;JMP
(RET_GT_171)

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
@RET_GT_172
D=A
@GT_SUB
0;JMP
(RET_GT_172)

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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_GT_173
D=A
@GT_SUB
0;JMP
(RET_GT_173)

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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@23 // push static 1 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_LT_174
D=A
@LT_SUB
0;JMP
(RET_LT_174)

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
@RET_CALL_175
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_175)

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
@RET_GT_176
D=A
@GT_SUB
0;JMP
(RET_GT_176)

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
@22 // push static 0 (static ../projects/13/Original/12_Tetris/Math.vm)
D=M
@SP
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
@RET_CALL_177
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_177)

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
@RET_GT_178
D=A
@GT_SUB
0;JMP
(RET_GT_178)

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
@RET_LT_179
D=A
@LT_SUB
0;JMP
(RET_LT_179)

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
@RET_GT_180
D=A
@GT_SUB
0;JMP
(RET_GT_180)

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
@RET_LT_181
D=A
@LT_SUB
0;JMP
(RET_LT_181)

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
@24
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
@25
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
@26
M=D

// push static 1
@25 // push static 1 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 0
@24 // push static 0 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
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
@26 // push static 2 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 1
@25 // push static 1 (static ../projects/13/Original/12_Tetris/Memory.vm)
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
@25 // push static 1 (static ../projects/13/Original/12_Tetris/Memory.vm)
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
@24 // push static 0 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
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
@25 // push static 1 (static ../projects/13/Original/12_Tetris/Memory.vm)
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
@24 // push static 0 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
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
@24 // push static 0 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
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
@RET_LT_182
D=A
@LT_SUB
0;JMP
(RET_LT_182)

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
@RET_CALL_183
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_183)

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
@RET_EQ_184
D=A
@EQ_SUB
0;JMP
(RET_EQ_184)

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
@25 // push static 1 (static ../projects/13/Original/12_Tetris/Memory.vm)
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
@26 // push static 2 (static ../projects/13/Original/12_Tetris/Memory.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_185
D=A
@LT_SUB
0;JMP
(RET_LT_185)

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
@RET_LT_186
D=A
@LT_SUB
0;JMP
(RET_LT_186)

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
@RET_EQ_187
D=A
@EQ_SUB
0;JMP
(RET_EQ_187)

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 2
@26 // push static 2 (static ../projects/13/Original/12_Tetris/Memory.vm)
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
@RET_GT_188
D=A
@GT_SUB
0;JMP
(RET_GT_188)

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
@RET_EQ_189
D=A
@EQ_SUB
0;JMP
(RET_EQ_189)

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
@RET_EQ_190
D=A
@EQ_SUB
0;JMP
(RET_EQ_190)

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
@26 // push static 2 (static ../projects/13/Original/12_Tetris/Memory.vm)
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
@RET_GT_191
D=A
@GT_SUB
0;JMP
(RET_GT_191)

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
@RET_CALL_192
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_192)

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
@RET_GT_193
D=A
@GT_SUB
0;JMP
(RET_GT_193)

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
@RET_EQ_194
D=A
@EQ_SUB
0;JMP
(RET_EQ_194)

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
@RET_LT_195
D=A
@LT_SUB
0;JMP
(RET_LT_195)

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
@RET_CALL_196
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_196)

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
@RET_EQ_197
D=A
@EQ_SUB
0;JMP
(RET_EQ_197)

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
@RET_EQ_198
D=A
@EQ_SUB
0;JMP
(RET_EQ_198)

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

// function Menu.new 0
(Menu.new) // function Menu.new 0

// push constant 3
@3 // push constant 3 // function Menu.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_199
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_199)

// pop pointer 0
@SP // pop pointer 0
AM=M-1
D=M
@3
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_200
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_200)

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

// push this 0
@THIS // push this 0
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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Button.new 2
@RET_CALL_201
D=A
@CALL_Button.new_2
0;JMP
(RET_CALL_201)

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

// push this 0
@THIS // push this 0
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

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// call Button.new 2
@RET_CALL_202
D=A
@CALL_Button.new_2
0;JMP
(RET_CALL_202)

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

// push this 0
@THIS // push this 0
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

// call Button.new 2
@RET_CALL_203
D=A
@CALL_Button.new_2
0;JMP
(RET_CALL_203)

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

// push this 0
@THIS // push this 0
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// call Button.new 2
@RET_CALL_204
D=A
@CALL_Button.new_2
0;JMP
(RET_CALL_204)

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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
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

// function Menu.dispose 2
(Menu.dispose) // function Menu.dispose 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Menu.dispose 2
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(Menu.dispose$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
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

// lt
@RET_LT_205
D=A
@LT_SUB
0;JMP
(RET_LT_205)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Menu.dispose$WHILE_END0
D;JNE // jump if not zero

// push local 1
@LCL // push local 1
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Button.dispose 1
@RET_CALL_206
D=A
@CALL_Button.dispose_1
0;JMP
(RET_CALL_206)

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
@Menu.dispose$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Menu.dispose$WHILE_END0) // label WHILE_END0

// push this 0
@THIS // push this 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// call Array.dispose 1
@RET_CALL_207
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_207)

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
@RET_CALL_208
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_208)

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

// function Menu.draw 2
(Menu.draw) // function Menu.draw 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Menu.draw 2
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP0
(Menu.draw$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
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

// lt
@RET_LT_209
D=A
@LT_SUB
0;JMP
(RET_LT_209)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Menu.draw$WHILE_END0
D;JNE // jump if not zero

// push local 1
@LCL // push local 1
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

// call Button.draw 2
@RET_CALL_210
D=A
@CALL_Button.draw_2
0;JMP
(RET_CALL_210)

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
@Menu.draw$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Menu.draw$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Menu.getButton 2
(Menu.getButton) // function Menu.getButton 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Menu.getButton 2
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

// call Touch.getEvent 0
@RET_CALL_211
D=A
@CALL_Touch.getEvent_0
0;JMP
(RET_CALL_211)

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
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

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Menu.getButton$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Menu.getButton$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Menu.getButton$IF_TRUE0) // label IF_TRUE0

// call Touch.getPen 0
@RET_CALL_212
D=A
@CALL_Touch.getPen_0
0;JMP
(RET_CALL_212)

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_213
D=A
@EQ_SUB
0;JMP
(RET_EQ_213)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Menu.getButton$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Menu.getButton$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Menu.getButton$IF_TRUE1) // label IF_TRUE1

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

// call Button.draw 2
@RET_CALL_214
D=A
@CALL_Button.draw_2
0;JMP
(RET_CALL_214)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE1
(Menu.getButton$IF_FALSE1) // label IF_FALSE1

// goto IF_END0
@Menu.getButton$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Menu.getButton$IF_FALSE0) // label IF_FALSE0

// call Touch.getPen 0
@RET_CALL_215
D=A
@CALL_Touch.getPen_0
0;JMP
(RET_CALL_215)

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// eq
@RET_EQ_216
D=A
@EQ_SUB
0;JMP
(RET_EQ_216)

// call Touch.getY 0
@RET_CALL_217
D=A
@CALL_Touch.getY_0
0;JMP
(RET_CALL_217)

// push constant 3072
@3072 // push constant 3072 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_218
D=A
@GT_SUB
0;JMP
(RET_GT_218)

// and
@SP // and
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D&M // val1 = val2 & val1

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Menu.getButton$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Menu.getButton$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Menu.getButton$IF_TRUE2) // label IF_TRUE2

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

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

// call Button.draw 2
@RET_CALL_219
D=A
@CALL_Button.draw_2
0;JMP
(RET_CALL_219)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Touch.getX 0
@RET_CALL_220
D=A
@CALL_Touch.getX_0
0;JMP
(RET_CALL_220)

// push constant 1024
@1024 // push constant 1024 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.divide 2
@RET_CALL_221
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_221)

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

// push this 0
@THIS // push this 0
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

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// call Button.draw 2
@RET_CALL_222
D=A
@CALL_Button.draw_2
0;JMP
(RET_CALL_222)

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

// return
@RETURN_SUB
0;JMP

// label IF_FALSE2
(Menu.getButton$IF_FALSE2) // label IF_FALSE2

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// label IF_END0
(Menu.getButton$IF_END0) // label IF_END0

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function Output.init 1
(Output.init) // function Output.init 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 0
@SP // push constant 0 // function Output.init 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// pop static 1
@SP // pop static 1
AM=M-1
D=M
@28
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
@27
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

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Output.init$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Output.init$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Output.init$IF_TRUE0) // label IF_TRUE0

// push constant 39
@39 // push constant 39 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@29
M=D

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@30
M=D

// goto IF_END0
@Output.init$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.init$IF_FALSE0) // label IF_FALSE0

// push constant 29
@29 // push constant 29 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@29
M=D

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@30
M=D

// label IF_END0
(Output.init$IF_END0) // label IF_END0

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_223
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_223)

// pop static 4
@SP // pop static 4
AM=M-1
D=M
@31
M=D

// call Output.initMap 0
@RET_CALL_224
D=A
@CALL_Output.initMap_0
0;JMP
(RET_CALL_224)

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
@RET_CALL_225
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_225)

// pop static 5
@SP // pop static 5
AM=M-1
D=M
@32
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
@RET_CALL_271
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_271)

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
@RET_CALL_272
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_272)

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
@RET_CALL_273
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_273)

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
@RET_CALL_274
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_274)

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
@RET_CALL_275
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_275)

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
@RET_CALL_276
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_276)

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
@RET_CALL_277
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_277)

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
@RET_CALL_278
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_278)

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
@RET_CALL_279
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_279)

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
@RET_CALL_280
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_280)

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
@RET_CALL_281
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_281)

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
@RET_CALL_282
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_282)

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
@RET_CALL_283
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_283)

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
@RET_CALL_284
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_284)

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
@RET_CALL_285
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_285)

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
@RET_CALL_286
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_286)

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
@RET_CALL_287
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_287)

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
@RET_CALL_288
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_288)

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
@RET_CALL_289
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_289)

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
@RET_CALL_290
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_290)

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
@RET_CALL_291
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_291)

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
@RET_CALL_292
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_292)

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
@RET_CALL_293
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_293)

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
@RET_CALL_294
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_294)

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
@RET_CALL_295
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_295)

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
@RET_CALL_296
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_296)

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
@RET_CALL_297
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_297)

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
@RET_CALL_298
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_298)

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
@RET_CALL_299
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_299)

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
@RET_CALL_300
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_300)

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
@RET_CALL_301
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_301)

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
@RET_CALL_302
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_302)

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
@RET_CALL_303
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_303)

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
@RET_CALL_304
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_304)

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
@RET_CALL_305
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_305)

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
@RET_CALL_306
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_306)

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
@RET_CALL_307
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_307)

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
@RET_CALL_308
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_308)

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
@RET_CALL_309
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_309)

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
@RET_CALL_310
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_310)

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
@RET_CALL_311
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_311)

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
@RET_CALL_312
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_312)

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
@RET_CALL_313
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_313)

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
@RET_CALL_314
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_314)

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
@RET_CALL_315
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_315)

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
@RET_CALL_316
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_316)

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
@RET_CALL_317
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_317)

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
@RET_CALL_318
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_318)

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
@RET_CALL_319
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_319)

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
@RET_CALL_320
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_320)

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
@RET_CALL_321
D=A
@CALL_Output.create_12
0;JMP
(RET_CALL_321)

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
@RET_CALL_322
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_322)

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
@32 // push static 5 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
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

// function Output.getMap 0
(Output.getMap) // function Output.getMap 0

// push argument 0
@ARG // push argument 0 // function Output.getMap 0
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
@RET_LT_323
D=A
@LT_SUB
0;JMP
(RET_LT_323)

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

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 5
@32 // push static 5 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
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

// function Output._drawChar 7
(Output._drawChar) // function Output._drawChar 7
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
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Output._drawChar 7
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// call Output.getMap 1
@RET_CALL_325
D=A
@CALL_Output.getMap_1
0;JMP
(RET_CALL_325)

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

// push static 0
@27 // push static 0 (static ../projects/13/Original/12_Tetris/Output.vm)
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

// push static 1
@28 // push static 1 (static ../projects/13/Original/12_Tetris/Output.vm)
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

// push local 0
@LCL // push local 0
A=M
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

// call Math.multiply 2
@RET_CALL_326
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_326)

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

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_327
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_327)

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

// push constant 7
@7 // push constant 7 (constant)
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

// call ScreenExt.drawBitMap 5
@RET_CALL_328
D=A
@CALL_ScreenExt.drawBitMap_5
0;JMP
(RET_CALL_328)

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
@RET_LT_329
D=A
@LT_SUB
0;JMP
(RET_LT_329)

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 3
@30 // push static 3 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_330
D=A
@GT_SUB
0;JMP
(RET_GT_330)

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
@RET_LT_331
D=A
@LT_SUB
0;JMP
(RET_LT_331)

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

// push static 2
@29 // push static 2 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_332
D=A
@GT_SUB
0;JMP
(RET_GT_332)

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
@RET_CALL_333
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_333)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Output.moveCursor$IF_FALSE0) // label IF_FALSE0

// push argument 0
@ARG // push argument 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@28
M=D

// push argument 1
@ARG // push argument 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
M=D

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@27
M=D

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output._drawChar 1
@RET_CALL_334
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_334)

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
@RET_CALL_335
D=A
@CALL_String.newLine_0
0;JMP
(RET_CALL_335)

// eq
@RET_EQ_336
D=A
@EQ_SUB
0;JMP
(RET_EQ_336)

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
@RET_CALL_337
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_337)

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
@RET_CALL_338
D=A
@CALL_String.backSpace_0
0;JMP
(RET_CALL_338)

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
@Output.printChar$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Output.printChar$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Output.printChar$IF_TRUE1) // label IF_TRUE1

// call Output.backSpace 0
@RET_CALL_340
D=A
@CALL_Output.backSpace_0
0;JMP
(RET_CALL_340)

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
@RET_CALL_341
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_341)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 0
@27 // push static 0 (static ../projects/13/Original/12_Tetris/Output.vm)
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
@27
M=D

// push static 0
@27 // push static 0 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 2
@29 // push static 2 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_342
D=A
@GT_SUB
0;JMP
(RET_GT_342)

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

// call Output.println 0
@RET_CALL_343
D=A
@CALL_Output.println_0
0;JMP
(RET_CALL_343)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE2
(Output.printChar$IF_FALSE2) // label IF_FALSE2

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
@RET_CALL_344
D=A
@CALL_String.length_1
0;JMP
(RET_CALL_344)

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
@RET_LT_345
D=A
@LT_SUB
0;JMP
(RET_LT_345)

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
@RET_CALL_346
D=A
@CALL_String.charAt_2
0;JMP
(RET_CALL_346)

// call Output.printChar 1
@RET_CALL_347
D=A
@CALL_Output.printChar_1
0;JMP
(RET_CALL_347)

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

// push static 4
@31 // push static 4 // function Output.printInt 0 (static ../projects/13/Original/12_Tetris/Output.vm)
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
@RET_CALL_348
D=A
@CALL_String.setInt_2
0;JMP
(RET_CALL_348)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 4
@31 // push static 4 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Output.printString 1
@RET_CALL_349
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_349)

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

// push constant 0
@SP // push constant 0 // function Output.println 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@27
M=D

// push static 1
@28 // push static 1 (static ../projects/13/Original/12_Tetris/Output.vm)
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
@28
M=D

// push static 1
@28 // push static 1 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 3
@30 // push static 3 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_350
D=A
@GT_SUB
0;JMP
(RET_GT_350)

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@28
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

// push static 0
@27 // push static 0 // function Output.backSpace 0 (static ../projects/13/Original/12_Tetris/Output.vm)
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
@RET_GT_351
D=A
@GT_SUB
0;JMP
(RET_GT_351)

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
@27 // push static 0 (static ../projects/13/Original/12_Tetris/Output.vm)
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
@27
M=D

// goto IF_END0
@Output.backSpace$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Output.backSpace$IF_FALSE0) // label IF_FALSE0

// push static 2
@29 // push static 2 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@27
M=D

// push static 3
@30 // push static 3 (static ../projects/13/Original/12_Tetris/Output.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@28
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
@RET_CALL_352
D=A
@CALL_Output._drawChar_1
0;JMP
(RET_CALL_352)

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

// function Random.nextInt 0
(Random.nextInt) // function Random.nextInt 0

// push static 0
@33 // push static 0 // function Random.nextInt 0 (static ../projects/13/Original/12_Tetris/Random.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// push constant 31421
@31421 // push constant 31421 (constant)
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

// push constant 6927
@6927 // push constant 6927 (constant)
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

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@33
M=D

// push static 0
@33 // push static 0 (static ../projects/13/Original/12_Tetris/Random.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// return
@RETURN_SUB
0;JMP

// function Random.seed 0
(Random.seed) // function Random.seed 0

// push argument 0
@ARG // push argument 0 // function Random.seed 0
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
@33
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

// push constant 0
@SP // push constant 0 // function Screen.init 1
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@34
M=D

// push local 0
@LCL // push local 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.init$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.init$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.init$IF_TRUE0) // label IF_TRUE0

// push constant 319
@319 // push constant 319 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@35
M=D

// push constant 239
@239 // push constant 239 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@36
M=D

// goto IF_END0
@Screen.init$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Screen.init$IF_FALSE0) // label IF_FALSE0

// push constant 239
@239 // push constant 239 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@35
M=D

// push constant 319
@319 // push constant 319 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@36
M=D

// label IF_END0
(Screen.init$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.clearScreen 3
(Screen.clearScreen) // function Screen.clearScreen 3
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

// push constant 0
@SP // push constant 0 // function Screen.clearScreen 3
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@35 // push static 1 (static ../projects/13/Original/12_Tetris/Screen.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 2
@36 // push static 2 (static ../projects/13/Original/12_Tetris/Screen.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call ScreenExt.setWindow 4
@RET_CALL_354
D=A
@CALL_ScreenExt.setWindow_4
0;JMP
(RET_CALL_354)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.getBackColor 0
@RET_CALL_355
D=A
@CALL_ScreenExt.getBackColor_0
0;JMP
(RET_CALL_355)

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

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call ScreenExt.writeCommand 1
@RET_CALL_356
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_356)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 1
@35 // push static 1 (static ../projects/13/Original/12_Tetris/Screen.vm)
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
(Screen.clearScreen$WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_357
D=A
@GT_SUB
0;JMP
(RET_GT_357)

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

// push static 2
@36 // push static 2 (static ../projects/13/Original/12_Tetris/Screen.vm)
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

// label WHILE_EXP1
(Screen.clearScreen$WHILE_EXP1) // label WHILE_EXP1

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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// gt
@RET_GT_358
D=A
@GT_SUB
0;JMP
(RET_GT_358)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.clearScreen$WHILE_END1
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

// call ScreenExt.writeData 1
@RET_CALL_359
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_359)

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

// goto WHILE_EXP1
@Screen.clearScreen$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Screen.clearScreen$WHILE_END1) // label WHILE_END1

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
@Screen.clearScreen$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.clearScreen$WHILE_END0) // label WHILE_END0

// call ScreenExt._completeTransaction 0
@RET_CALL_360
D=A
@CALL_ScreenExt._completeTransaction_0
0;JMP
(RET_CALL_360)

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
// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Screen.setColor$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Screen.setColor$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Screen.setColor$IF_TRUE0) // label IF_TRUE0

// call ScreenExt.BLACK 0
@RET_CALL_361
D=A
@CALL_ScreenExt.BLACK_0
0;JMP
(RET_CALL_361)

// call ScreenExt.setPenColor 1
@RET_CALL_362
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_362)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Screen.setColor$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Screen.setColor$IF_FALSE0) // label IF_FALSE0

// call ScreenExt.WHITE 0
@RET_CALL_363
D=A
@CALL_ScreenExt.WHITE_0
0;JMP
(RET_CALL_363)

// call ScreenExt.setPenColor 1
@RET_CALL_364
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_364)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(Screen.setColor$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Screen.drawPixel 0
(Screen.drawPixel) // function Screen.drawPixel 0

// push argument 0
@ARG // push argument 0 // function Screen.drawPixel 0
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

// call Screen.drawRectangle 4
@RET_CALL_365
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_365)

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
@RET_CALL_366
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_366)

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
@RET_CALL_367
D=A
@CALL_Screen.drawPixel_2
0;JMP
(RET_CALL_367)

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

// push argument 2
@ARG // push argument 2 // function Screen.drawLine 11 (&asm_segment)
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
@RET_CALL_368
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_368)

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
@RET_CALL_369
D=A
@CALL_Math.abs_1
0;JMP
(RET_CALL_369)

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
@RET_LT_370
D=A
@LT_SUB
0;JMP
(RET_LT_370)

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
@RET_LT_371
D=A
@LT_SUB
0;JMP
(RET_LT_371)

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
@RET_LT_372
D=A
@LT_SUB
0;JMP
(RET_LT_372)

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

// label IF_FALSE0
(Screen.drawLine$IF_FALSE0) // label IF_FALSE0

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
@RET_GT_373
D=A
@GT_SUB
0;JMP
(RET_GT_373)

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

// goto IF_END1
@Screen.drawLine$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Screen.drawLine$IF_FALSE1) // label IF_FALSE1

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
@RET_GT_374
D=A
@GT_SUB
0;JMP
(RET_GT_374)

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

// label IF_END1
(Screen.drawLine$IF_END1) // label IF_END1

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
@RET_CALL_375
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_375)

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
@RET_CALL_376
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_376)

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
@RET_CALL_377
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_377)

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
@RET_CALL_378
D=A
@CALL_Screen._drawConditional_3
0;JMP
(RET_CALL_378)

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
@RET_LT_379
D=A
@LT_SUB
0;JMP
(RET_LT_379)

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
@RET_LT_380
D=A
@LT_SUB
0;JMP
(RET_LT_380)

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

// goto IF_END2
@Screen.drawLine$IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Screen.drawLine$IF_FALSE2) // label IF_FALSE2

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

// goto IF_END3
@Screen.drawLine$IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Screen.drawLine$IF_FALSE3) // label IF_FALSE3

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

// label IF_END3
(Screen.drawLine$IF_END3) // label IF_END3

// label IF_END2
(Screen.drawLine$IF_END2) // label IF_END2

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
@RET_CALL_381
D=A
@CALL_Screen._drawConditional_3
0;JMP
(RET_CALL_381)

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

// function Screen.drawRectangle 3
(Screen.drawRectangle) // function Screen.drawRectangle 3
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
@ARG // push argument 0 // function Screen.drawRectangle 3
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

// call ScreenExt.setWindow 4
@RET_CALL_382
D=A
@CALL_ScreenExt.setWindow_4
0;JMP
(RET_CALL_382)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.getPenColor 0
@RET_CALL_383
D=A
@CALL_ScreenExt.getPenColor_0
0;JMP
(RET_CALL_383)

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

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call ScreenExt.writeCommand 1
@RET_CALL_384
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_384)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// pop local 0
@SP // pop local 0
AM=M-1
D=M
@LCL
A=M
M=D

// label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0) // label WHILE_EXP0

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
@RET_GT_385
D=A
@GT_SUB
0;JMP
(RET_GT_385)

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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
M=D

// label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1) // label WHILE_EXP1

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

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// gt
@RET_GT_386
D=A
@GT_SUB
0;JMP
(RET_GT_386)

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

// call ScreenExt.writeData 1
@RET_CALL_387
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_387)

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

// goto WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Screen.drawRectangle$WHILE_END1) // label WHILE_END1

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
@Screen.drawRectangle$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Screen.drawRectangle$WHILE_END0) // label WHILE_END0

// call ScreenExt._completeTransaction 0
@RET_CALL_388
D=A
@CALL_ScreenExt._completeTransaction_0
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

// function Screen._drawSymetric 0
(Screen._drawSymetric) // function Screen._drawSymetric 0

// push argument 0
@ARG // push argument 0 // function Screen._drawSymetric 0
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

// call Screen.drawRectangle 4
@RET_CALL_389
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_389)

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

// call Screen.drawRectangle 4
@RET_CALL_390
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_390)

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

// call Screen.drawRectangle 4
@RET_CALL_391
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_391)

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

// call Screen.drawRectangle 4
@RET_CALL_392
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_392)

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
@RET_LT_393
D=A
@LT_SUB
0;JMP
(RET_LT_393)

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

// push static 1
@35 // push static 1 (static ../projects/13/Original/12_Tetris/Screen.vm)
D=M
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
@RET_LT_395
D=A
@LT_SUB
0;JMP
(RET_LT_395)

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

// push static 2
@36 // push static 2 (static ../projects/13/Original/12_Tetris/Screen.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_396
D=A
@GT_SUB
0;JMP
(RET_GT_396)

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

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Sys.error 1
@RET_CALL_397
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_397)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(Screen.drawCircle$IF_FALSE0) // label IF_FALSE0

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
@RET_CALL_398
D=A
@CALL_Screen._drawSymetric_4
0;JMP
(RET_CALL_398)

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
@RET_GT_399
D=A
@GT_SUB
0;JMP
(RET_GT_399)

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
@RET_LT_400
D=A
@LT_SUB
0;JMP
(RET_LT_400)

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
@RET_CALL_401
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_401)

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

// goto IF_END1
@Screen.drawCircle$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Screen.drawCircle$IF_FALSE1) // label IF_FALSE1

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
@RET_CALL_402
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_402)

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

// label IF_END1
(Screen.drawCircle$IF_END1) // label IF_END1

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
@RET_CALL_403
D=A
@CALL_Screen._drawSymetric_4
0;JMP
(RET_CALL_403)

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

// function ScreenExt.init 2
(ScreenExt.init) // function ScreenExt.init 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 4104
@4104 // push constant 4104 // function ScreenExt.init 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@37
M=D

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@38
M=D

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

// push constant 54
@54 // push constant 54 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call ScreenExt.writeCommand 1
@RET_CALL_404
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_404)

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

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@ScreenExt.init$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@ScreenExt.init$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(ScreenExt.init$IF_TRUE0) // label IF_TRUE0

// push constant 8
@8 // push constant 8 (constant)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt._write8BitData 1
@RET_CALL_405
D=A
@CALL_ScreenExt._write8BitData_1
0;JMP
(RET_CALL_405)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@ScreenExt.init$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(ScreenExt.init$IF_FALSE0) // label IF_FALSE0

// push constant 64
@64 // push constant 64 (constant)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt._write8BitData 1
@RET_CALL_406
D=A
@CALL_ScreenExt._write8BitData_1
0;JMP
(RET_CALL_406)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(ScreenExt.init$IF_END0) // label IF_END0

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call ScreenExt.writeCommand 1
@RET_CALL_407
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_407)

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

// call ScreenExt._write8BitData 1
@RET_CALL_408
D=A
@CALL_ScreenExt._write8BitData_1
0;JMP
(RET_CALL_408)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 1
@38 // push static 1 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Sys.wait 1
@RET_CALL_409
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_409)

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

// call ScreenExt.writeCommand 1
@RET_CALL_410
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_410)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 1
@38 // push static 1 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Sys.wait 1
@RET_CALL_411
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_411)

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

// call ScreenExt.writeCommand 1
@RET_CALL_412
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_412)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 1
@38 // push static 1 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Sys.wait 1
@RET_CALL_413
D=A
@CALL_Sys.wait_1
0;JMP
(RET_CALL_413)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt._completeTransaction 0
@RET_CALL_414
D=A
@CALL_ScreenExt._completeTransaction_0
0;JMP
(RET_CALL_414)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.BLACK 0
@RET_CALL_415
D=A
@CALL_ScreenExt.BLACK_0
0;JMP
(RET_CALL_415)

// call ScreenExt.setPenColor 1
@RET_CALL_416
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_416)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.WHITE 0
@RET_CALL_417
D=A
@CALL_ScreenExt.WHITE_0
0;JMP
(RET_CALL_417)

// call ScreenExt.setBackColor 1
@RET_CALL_418
D=A
@CALL_ScreenExt.setBackColor_1
0;JMP
(RET_CALL_418)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Screen.clearScreen 0
@RET_CALL_419
D=A
@CALL_Screen.clearScreen_0
0;JMP
(RET_CALL_419)

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

// call Array.new 1
@RET_CALL_420
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_420)

// pop static 4
@SP // pop static 4
AM=M-1
D=M
@41
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 4
@41 // push static 4 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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
(ScreenExt.init$WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_421
D=A
@LT_SUB
0;JMP
(RET_LT_421)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@ScreenExt.init$WHILE_END0
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

// push static 4
@41 // push static 4 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// push static 4
@41 // push static 4 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// push static 4
@41 // push static 4 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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
@ScreenExt.init$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(ScreenExt.init$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function ScreenExt.writeCommand 1
(ScreenExt.writeCommand) // function ScreenExt.writeCommand 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 0
@SP // push constant 0 // function ScreenExt.writeCommand 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 0
@37 // push static 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// label WHILE_EXP0
(ScreenExt.writeCommand$WHILE_EXP0) // label WHILE_EXP0

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
@RET_EQ_422
D=A
@EQ_SUB
0;JMP
(RET_EQ_422)

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
@ScreenExt.writeCommand$WHILE_END0
D;JNE // jump if not zero

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@37 // push static 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// goto WHILE_EXP0
@ScreenExt.writeCommand$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(ScreenExt.writeCommand$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function ScreenExt._write8BitData 0
(ScreenExt._write8BitData) // function ScreenExt._write8BitData 0

// push constant 512
@512 // push constant 512 // function ScreenExt._write8BitData 0 (constant)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.writeCommand 1
@RET_CALL_423
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_423)

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

// function ScreenExt.writeData 1
(ScreenExt.writeData) // function ScreenExt.writeData 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 1
@SP // push constant 1 // function ScreenExt.writeData 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign
// push static 0
@37 // push static 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// label WHILE_EXP0
(ScreenExt.writeData$WHILE_EXP0) // label WHILE_EXP0

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
@RET_EQ_424
D=A
@EQ_SUB
0;JMP
(RET_EQ_424)

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
@ScreenExt.writeData$WHILE_END0
D;JNE // jump if not zero

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// push static 0
@37 // push static 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// goto WHILE_EXP0
@ScreenExt.writeData$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(ScreenExt.writeData$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function ScreenExt.setPenColor 0
(ScreenExt.setPenColor) // function ScreenExt.setPenColor 0

// push argument 0
@ARG // push argument 0 // function ScreenExt.setPenColor 0
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
@39
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function ScreenExt.getPenColor 0
(ScreenExt.getPenColor) // function ScreenExt.getPenColor 0

// push static 2
@39 // push static 2 // function ScreenExt.getPenColor 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function ScreenExt.setBackColor 0
(ScreenExt.setBackColor) // function ScreenExt.setBackColor 0

// push argument 0
@ARG // push argument 0 // function ScreenExt.setBackColor 0
A=M
D=M
@SP
AM=M+1
A=A-1
M=D
// pop static 3
@SP // pop static 3
AM=M-1
D=M
@40
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function ScreenExt.getBackColor 0
(ScreenExt.getBackColor) // function ScreenExt.getBackColor 0

// push static 3
@40 // push static 3 // function ScreenExt.getBackColor 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function ScreenExt.setWindow 2
(ScreenExt.setWindow) // function ScreenExt.setWindow 2
@SP
A=M
M=0
A=A+1
M=0
D=A+1
@SP
M=D

// push constant 42
@42 // push constant 42 // function ScreenExt.setWindow 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call ScreenExt.writeCommand 1
@RET_CALL_425
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_425)

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

// call ScreenExt.writeData 1
@RET_CALL_426
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_426)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call ScreenExt.writeData 1
@RET_CALL_427
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_427)

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

// call ScreenExt.writeCommand 1
@RET_CALL_428
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_428)

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

// call ScreenExt.writeData 1
@RET_CALL_429
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_429)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call ScreenExt.writeData 1
@RET_CALL_430
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_430)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt._completeTransaction 0
@RET_CALL_431
D=A
@CALL_ScreenExt._completeTransaction_0
0;JMP
(RET_CALL_431)

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

// function ScreenExt.writeRgbData 0
(ScreenExt.writeRgbData) // function ScreenExt.writeRgbData 0

// push constant 44
@44 // push constant 44 // function ScreenExt.writeRgbData 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call ScreenExt.writeCommand 1
@RET_CALL_432
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_432)

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

// call ScreenExt.writeData 1
@RET_CALL_433
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_433)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt._completeTransaction 0
@RET_CALL_434
D=A
@CALL_ScreenExt._completeTransaction_0
0;JMP
(RET_CALL_434)

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

// function ScreenExt._completeTransaction 1
(ScreenExt._completeTransaction) // function ScreenExt._completeTransaction 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 0
@SP // push constant 0 // function ScreenExt._completeTransaction 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 0
@37 // push static 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 256
@256 // push constant 256 (constant)
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

// label WHILE_EXP0
(ScreenExt._completeTransaction$WHILE_EXP0) // label WHILE_EXP0

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
@RET_EQ_435
D=A
@EQ_SUB
0;JMP
(RET_EQ_435)

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
@ScreenExt._completeTransaction$WHILE_END0
D;JNE // jump if not zero

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@37 // push static 0 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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

// goto WHILE_EXP0
@ScreenExt._completeTransaction$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(ScreenExt._completeTransaction$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function ScreenExt.drawBitMap 6
(ScreenExt.drawBitMap) // function ScreenExt.drawBitMap 6
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
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function ScreenExt.drawBitMap 6
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

// call ScreenExt.setWindow 4
@RET_CALL_436
D=A
@CALL_ScreenExt.setWindow_4
0;JMP
(RET_CALL_436)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call ScreenExt.getPenColor 0
@RET_CALL_437
D=A
@CALL_ScreenExt.getPenColor_0
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

// call ScreenExt.getBackColor 0
@RET_CALL_438
D=A
@CALL_ScreenExt.getBackColor_0
0;JMP
(RET_CALL_438)

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

// push constant 44
@44 // push constant 44 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call ScreenExt.writeCommand 1
@RET_CALL_439
D=A
@CALL_ScreenExt.writeCommand_1
0;JMP
(RET_CALL_439)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// label WHILE_EXP0
(ScreenExt.drawBitMap$WHILE_EXP0) // label WHILE_EXP0

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

// lt
@RET_LT_440
D=A
@LT_SUB
0;JMP
(RET_LT_440)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@ScreenExt.drawBitMap$WHILE_END0
D;JNE // jump if not zero

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

// label WHILE_EXP1
(ScreenExt.drawBitMap$WHILE_EXP1) // label WHILE_EXP1

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

// lt
@RET_LT_441
D=A
@LT_SUB
0;JMP
(RET_LT_441)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@ScreenExt.drawBitMap$WHILE_END1
D;JNE // jump if not zero

// push local 1
@LCL // push local 1
A=M+1
D=M
@SP
AM=M+1
A=A-1
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

// push static 4
@41 // push static 4 (static ../projects/13/Original/12_Tetris/ScreenExt.vm)
D=M
@SP
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
@RET_EQ_442
D=A
@EQ_SUB
0;JMP
(RET_EQ_442)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@ScreenExt.drawBitMap$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@ScreenExt.drawBitMap$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(ScreenExt.drawBitMap$IF_TRUE0) // label IF_TRUE0

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

// call ScreenExt.writeData 1
@RET_CALL_443
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_443)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@ScreenExt.drawBitMap$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(ScreenExt.drawBitMap$IF_FALSE0) // label IF_FALSE0

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

// call ScreenExt.writeData 1
@RET_CALL_444
D=A
@CALL_ScreenExt.writeData_1
0;JMP
(RET_CALL_444)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(ScreenExt.drawBitMap$IF_END0) // label IF_END0

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
@ScreenExt.drawBitMap$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(ScreenExt.drawBitMap$WHILE_END1) // label WHILE_END1

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
@ScreenExt.drawBitMap$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(ScreenExt.drawBitMap$WHILE_END0) // label WHILE_END0

// call ScreenExt._completeTransaction 0
@RET_CALL_445
D=A
@CALL_ScreenExt._completeTransaction_0
0;JMP
(RET_CALL_445)

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

// function ScreenExt.BLACK 0
(ScreenExt.BLACK) // function ScreenExt.BLACK 0

// push constant 0
@SP // push constant 0 // function ScreenExt.BLACK 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// return
@RETURN_SUB
0;JMP

// function ScreenExt.NAVY 0
(ScreenExt.NAVY) // function ScreenExt.NAVY 0

// push constant 30
@30 // push constant 30 // function ScreenExt.NAVY 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function ScreenExt.BLUE 0
(ScreenExt.BLUE) // function ScreenExt.BLUE 0

// push constant 31
@31 // push constant 31 // function ScreenExt.BLUE 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function ScreenExt.LIME 0
(ScreenExt.LIME) // function ScreenExt.LIME 0

// push constant 2016
@2016 // push constant 2016 // function ScreenExt.LIME 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function ScreenExt.GREEN 0
(ScreenExt.GREEN) // function ScreenExt.GREEN 0

// push constant 1920
@1920 // push constant 1920 // function ScreenExt.GREEN 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function ScreenExt.CYAN 0
(ScreenExt.CYAN) // function ScreenExt.CYAN 0

// push constant 2047
@2047 // push constant 2047 // function ScreenExt.CYAN 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function ScreenExt.MAROON 0
(ScreenExt.MAROON) // function ScreenExt.MAROON 0

// push constant 4096
@4096 // push constant 4096 // function ScreenExt.MAROON 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.PURPLE 0
(ScreenExt.PURPLE) // function ScreenExt.PURPLE 0

// push constant 4066
@4066 // push constant 4066 // function ScreenExt.PURPLE 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.OLIVE 0
(ScreenExt.OLIVE) // function ScreenExt.OLIVE 0

// push constant 2176
@2176 // push constant 2176 // function ScreenExt.OLIVE 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.DARKGREY 0
(ScreenExt.DARKGREY) // function ScreenExt.DARKGREY 0

// push constant 14824
@14824 // push constant 14824 // function ScreenExt.DARKGREY 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.TEAL 0
(ScreenExt.TEAL) // function ScreenExt.TEAL 0

// push constant 1950
@1950 // push constant 1950 // function ScreenExt.TEAL 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// return
@RETURN_SUB
0;JMP

// function ScreenExt.LIGHTGREY 0
(ScreenExt.LIGHTGREY) // function ScreenExt.LIGHTGREY 0

// push constant 6372
@6372 // push constant 6372 // function ScreenExt.LIGHTGREY 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.RED 0
(ScreenExt.RED) // function ScreenExt.RED 0

// push constant 2048
@2048 // push constant 2048 // function ScreenExt.RED 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.MAGENTA 0
(ScreenExt.MAGENTA) // function ScreenExt.MAGENTA 0

// push constant 2017
@2017 // push constant 2017 // function ScreenExt.MAGENTA 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.YELLOW 0
(ScreenExt.YELLOW) // function ScreenExt.YELLOW 0

// push constant 32
@32 // push constant 32 // function ScreenExt.YELLOW 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.ORANGE 0
(ScreenExt.ORANGE) // function ScreenExt.ORANGE 0

// push constant 128
@128 // push constant 128 // function ScreenExt.ORANGE 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// return
@RETURN_SUB
0;JMP

// function ScreenExt.WHITE 0
(ScreenExt.WHITE) // function ScreenExt.WHITE 0

// push constant 1
@SP // push constant 1 // function ScreenExt.WHITE 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign
// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

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
@RET_CALL_446
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_446)

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
@RET_LT_447
D=A
@LT_SUB
0;JMP
(RET_LT_447)

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
@RET_CALL_448
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_448)

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
@RET_GT_449
D=A
@GT_SUB
0;JMP
(RET_GT_449)

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
@RET_CALL_450
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_450)

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
@RET_GT_451
D=A
@GT_SUB
0;JMP
(RET_GT_451)

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
@RET_CALL_452
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_452)

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
@RET_CALL_453
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_453)

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
@RET_LT_454
D=A
@LT_SUB
0;JMP
(RET_LT_454)

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
@RET_GT_455
D=A
@GT_SUB
0;JMP
(RET_GT_455)

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
@RET_EQ_456
D=A
@EQ_SUB
0;JMP
(RET_EQ_456)

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
@RET_CALL_457
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_457)

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
@RET_LT_458
D=A
@LT_SUB
0;JMP
(RET_LT_458)

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
@RET_GT_459
D=A
@GT_SUB
0;JMP
(RET_GT_459)

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
@RET_EQ_460
D=A
@EQ_SUB
0;JMP
(RET_EQ_460)

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
@RET_CALL_461
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_461)

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
@RET_EQ_462
D=A
@EQ_SUB
0;JMP
(RET_EQ_462)

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
@RET_CALL_463
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_463)

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
@RET_EQ_464
D=A
@EQ_SUB
0;JMP
(RET_EQ_464)

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
@RET_CALL_465
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_465)

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
@RET_EQ_466
D=A
@EQ_SUB
0;JMP
(RET_EQ_466)

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
@RET_EQ_467
D=A
@EQ_SUB
0;JMP
(RET_EQ_467)

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
@RET_LT_468
D=A
@LT_SUB
0;JMP
(RET_LT_468)

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
@RET_LT_469
D=A
@LT_SUB
0;JMP
(RET_LT_469)

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
@RET_GT_470
D=A
@GT_SUB
0;JMP
(RET_GT_470)

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
@RET_CALL_471
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_471)

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
@RET_EQ_472
D=A
@EQ_SUB
0;JMP
(RET_EQ_472)

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
@RET_CALL_473
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_473)

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
@RET_CALL_474
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_474)

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
@RET_LT_475
D=A
@LT_SUB
0;JMP
(RET_LT_475)

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
@RET_GT_476
D=A
@GT_SUB
0;JMP
(RET_GT_476)

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
@RET_CALL_477
D=A
@CALL_Math.divide_2
0;JMP
(RET_CALL_477)

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
@RET_CALL_478
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_478)

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
@RET_LT_479
D=A
@LT_SUB
0;JMP
(RET_LT_479)

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
@RET_CALL_480
D=A
@CALL_Sys.error_1
0;JMP
(RET_CALL_480)

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
@RET_EQ_481
D=A
@EQ_SUB
0;JMP
(RET_EQ_481)

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
@RET_LT_482
D=A
@LT_SUB
0;JMP
(RET_LT_482)

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
@RET_CALL_483
D=A
@CALL_Array.dispose_1
0;JMP
(RET_CALL_483)

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

// function TetrisGame.new 0
(TetrisGame.new) // function TetrisGame.new 0

// push constant 11
@11 // push constant 11 // function TetrisGame.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_484
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_484)

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

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_485
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_485)

// push constant 78
@78 // push constant 78 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_486
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_486)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_487
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_487)

// push constant 120
@120 // push constant 120 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_488
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_488)

// push constant 116
@116 // push constant 116 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_489
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_489)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_490
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_490)

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_491
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_491)

// push constant 83
@83 // push constant 83 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_492
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_492)

// push constant 99
@99 // push constant 99 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_493
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_493)

// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_494
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_494)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_495
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_495)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_496
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_496)

// push constant 58
@58 // push constant 58 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_497
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_497)

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_498
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_498)

// push constant 71
@71 // push constant 71 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_499
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_499)

// push constant 97
@97 // push constant 97 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_500
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_500)

// push constant 109
@109 // push constant 109 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_501
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_501)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_502
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_502)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_503
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_503)

// push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_504
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_504)

// push constant 118
@118 // push constant 118 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_505
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_505)

// push constant 101
@101 // push constant 101 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_506
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_506)

// push constant 114
@114 // push constant 114 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_507
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_507)

// push constant 33
@33 // push constant 33 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_508
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_508)

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

// call Screen.clearScreen 0
@RET_CALL_509
D=A
@CALL_Screen.clearScreen_0
0;JMP
(RET_CALL_509)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_510
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_510)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_511
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_511)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_512
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_512)

// push constant 60
@60 // push constant 60 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_513
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_513)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_514
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_514)

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_515
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_515)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_516
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_516)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_517
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_517)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_518
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_518)

// push constant 76
@76 // push constant 76 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_519
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_519)

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_520
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_520)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_521
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_521)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_522
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_522)

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_523
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_523)

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.new 1
@RET_CALL_524
D=A
@CALL_String.new_1
0;JMP
(RET_CALL_524)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_525
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_525)

// push constant 32
@32 // push constant 32 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_526
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_526)

// push constant 45
@45 // push constant 45 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_527
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_527)

// push constant 62
@62 // push constant 62 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call String.appendChar 2
@RET_CALL_528
D=A
@CALL_String.appendChar_2
0;JMP
(RET_CALL_528)

// call Menu.new 4
@RET_CALL_529
D=A
@CALL_Menu.new_4
0;JMP
(RET_CALL_529)

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

// call Menu.draw 1
@RET_CALL_530
D=A
@CALL_Menu.draw_1
0;JMP
(RET_CALL_530)

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

// call ScreenExt.setPenColor 1
@RET_CALL_531
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_531)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 4
@4 // push constant 4 (constant)
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

// call Output.moveCursor 2
@RET_CALL_532
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_532)

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

// call Output.printString 1
@RET_CALL_533
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_533)

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

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_534
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_534)

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

// call Output.printString 1
@RET_CALL_535
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_535)

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

// push constant 21
@21 // push constant 21 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_536
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_536)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call Output.printInt 1
@RET_CALL_537
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_537)

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

// call Grid.new 0
@RET_CALL_538
D=A
@CALL_Grid.new_0
0;JMP
(RET_CALL_538)

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

// call Tile.new 0
@RET_CALL_539
D=A
@CALL_Tile.new_0
0;JMP
(RET_CALL_539)

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

// call Tile.draw 1
@RET_CALL_540
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_540)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push constant 2000
@2000 // push constant 2000 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// function TetrisGame.dispose 0
(TetrisGame.dispose) // function TetrisGame.dispose 0

// push argument 0
@ARG // push argument 0 // function TetrisGame.dispose 0
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

// call String.dispose 1
@RET_CALL_541
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_541)

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

// call String.dispose 1
@RET_CALL_542
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_542)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call String.dispose 1
@RET_CALL_543
D=A
@CALL_String.dispose_1
0;JMP
(RET_CALL_543)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

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

// call Grid.dispose 1
@RET_CALL_544
D=A
@CALL_Grid.dispose_1
0;JMP
(RET_CALL_544)

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

// call Tile.dispose 1
@RET_CALL_545
D=A
@CALL_Tile.dispose_1
0;JMP
(RET_CALL_545)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call Menu.dispose 1
@RET_CALL_546
D=A
@CALL_Menu.dispose_1
0;JMP
(RET_CALL_546)

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
@RET_CALL_547
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_547)

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

// function TetrisGame.score 0
(TetrisGame.score) // function TetrisGame.score 0

// push argument 0
@ARG // push argument 0 // function TetrisGame.score 0
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// eq
@RET_EQ_548
D=A
@EQ_SUB
0;JMP
(RET_EQ_548)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.score$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@TetrisGame.score$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(TetrisGame.score$IF_TRUE0) // label IF_TRUE0

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

// push constant 40
@40 // push constant 40 (constant)
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

// label IF_FALSE0
(TetrisGame.score$IF_FALSE0) // label IF_FALSE0

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

// eq
@RET_EQ_549
D=A
@EQ_SUB
0;JMP
(RET_EQ_549)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.score$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@TetrisGame.score$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(TetrisGame.score$IF_TRUE1) // label IF_TRUE1

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

// push constant 100
@100 // push constant 100 (constant)
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

// label IF_FALSE1
(TetrisGame.score$IF_FALSE1) // label IF_FALSE1

// push argument 1
@ARG // push argument 1
A=M+1
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

// eq
@RET_EQ_550
D=A
@EQ_SUB
0;JMP
(RET_EQ_550)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.score$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@TetrisGame.score$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(TetrisGame.score$IF_TRUE2) // label IF_TRUE2

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

// push constant 300
@300 // push constant 300 (constant)
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

// label IF_FALSE2
(TetrisGame.score$IF_FALSE2) // label IF_FALSE2

// push argument 1
@ARG // push argument 1
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

// eq
@RET_EQ_551
D=A
@EQ_SUB
0;JMP
(RET_EQ_551)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.score$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@TetrisGame.score$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(TetrisGame.score$IF_TRUE3) // label IF_TRUE3

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

// push constant 1200
@1200 // push constant 1200 (constant)
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

// label IF_FALSE3
(TetrisGame.score$IF_FALSE3) // label IF_FALSE3

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call ScreenExt.setPenColor 1
@RET_CALL_552
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_552)

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

// push constant 21
@21 // push constant 21 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_553
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_553)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call Output.printInt 1
@RET_CALL_554
D=A
@CALL_Output.printInt_1
0;JMP
(RET_CALL_554)

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

// function TetrisGame.run 1
(TetrisGame.run) // function TetrisGame.run 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function TetrisGame.run 1
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

// call Tile.span 2
@RET_CALL_555
D=A
@CALL_Tile.span_2
0;JMP
(RET_CALL_555)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// call Tile.new 0
@RET_CALL_556
D=A
@CALL_Tile.new_0
0;JMP
(RET_CALL_556)

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

// call Tile.draw 1
@RET_CALL_557
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_557)

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

// label WHILE_EXP0
(TetrisGame.run$WHILE_EXP0) // label WHILE_EXP0

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
@TetrisGame.run$WHILE_END0
D;JNE // jump if not zero

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

// call Menu.getButton 1
@RET_CALL_558
D=A
@CALL_Menu.getButton_1
0;JMP
(RET_CALL_558)

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_559
D=A
@EQ_SUB
0;JMP
(RET_EQ_559)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@TetrisGame.run$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(TetrisGame.run$IF_TRUE0) // label IF_TRUE0

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

// call Tile.moveRight 1
@RET_CALL_560
D=A
@CALL_Tile.moveRight_1
0;JMP
(RET_CALL_560)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE0
(TetrisGame.run$IF_FALSE0) // label IF_FALSE0

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

// eq
@RET_EQ_561
D=A
@EQ_SUB
0;JMP
(RET_EQ_561)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@TetrisGame.run$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(TetrisGame.run$IF_TRUE1) // label IF_TRUE1

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

// call Tile.rotateRight 1
@RET_CALL_562
D=A
@CALL_Tile.rotateRight_1
0;JMP
(RET_CALL_562)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE1
(TetrisGame.run$IF_FALSE1) // label IF_FALSE1

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

// eq
@RET_EQ_563
D=A
@EQ_SUB
0;JMP
(RET_EQ_563)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@TetrisGame.run$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(TetrisGame.run$IF_TRUE2) // label IF_TRUE2

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

// call Tile.rotateLeft 1
@RET_CALL_564
D=A
@CALL_Tile.rotateLeft_1
0;JMP
(RET_CALL_564)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE2
(TetrisGame.run$IF_FALSE2) // label IF_FALSE2

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
@RET_EQ_565
D=A
@EQ_SUB
0;JMP
(RET_EQ_565)

// if-goto IF_TRUE3
@SP // if-goto IF_TRUE3
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@TetrisGame.run$IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(TetrisGame.run$IF_TRUE3) // label IF_TRUE3

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

// call Tile.moveLeft 1
@RET_CALL_566
D=A
@CALL_Tile.moveLeft_1
0;JMP
(RET_CALL_566)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE3
(TetrisGame.run$IF_FALSE3) // label IF_FALSE3

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// eq
@RET_EQ_567
D=A
@EQ_SUB
0;JMP
(RET_EQ_567)

// if-goto IF_TRUE4
@SP // if-goto IF_TRUE4
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@TetrisGame.run$IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(TetrisGame.run$IF_TRUE4) // label IF_TRUE4

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

// call Tile.moveDown 1
@RET_CALL_568
D=A
@CALL_Tile.moveDown_1
0;JMP
(RET_CALL_568)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE5
@SP // if-goto IF_TRUE5
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE5
D;JNE // jump if not zero

// goto IF_FALSE5
@TetrisGame.run$IF_FALSE5 // goto IF_FALSE5
0;JMP // unconditional jump

// label IF_TRUE5
(TetrisGame.run$IF_TRUE5) // label IF_TRUE5

// push pointer 0
@3 // push pointer 0
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

// call Tile.getScore 1
@RET_CALL_569
D=A
@CALL_Tile.getScore_1
0;JMP
(RET_CALL_569)

// call TetrisGame.score 2
@RET_CALL_570
D=A
@CALL_TetrisGame.score_2
0;JMP
(RET_CALL_570)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call Tile.dispose 1
@RET_CALL_571
D=A
@CALL_Tile.dispose_1
0;JMP
(RET_CALL_571)

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

// call Tile.span 2
@RET_CALL_572
D=A
@CALL_Tile.span_2
0;JMP
(RET_CALL_572)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE6
@SP // if-goto IF_TRUE6
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE6
D;JNE // jump if not zero

// goto IF_FALSE6
@TetrisGame.run$IF_FALSE6 // goto IF_FALSE6
0;JMP // unconditional jump

// label IF_TRUE6
(TetrisGame.run$IF_TRUE6) // label IF_TRUE6

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

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

// goto IF_END6
@TetrisGame.run$IF_END6 // goto IF_END6
0;JMP // unconditional jump

// label IF_FALSE6
(TetrisGame.run$IF_FALSE6) // label IF_FALSE6

// call Tile.new 0
@RET_CALL_573
D=A
@CALL_Tile.new_0
0;JMP
(RET_CALL_573)

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

// call Tile.draw 1
@RET_CALL_574
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_574)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END6
(TetrisGame.run$IF_END6) // label IF_END6

// label IF_FALSE5
(TetrisGame.run$IF_FALSE5) // label IF_FALSE5

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

// if-goto IF_TRUE7
@SP // if-goto IF_TRUE7
AM=M-1 // SP--, A -> val
D=M // d = val
@TetrisGame.run$IF_TRUE7
D;JNE // jump if not zero

// goto IF_FALSE7
@TetrisGame.run$IF_FALSE7 // goto IF_FALSE7
0;JMP // unconditional jump

// label IF_TRUE7
(TetrisGame.run$IF_TRUE7) // label IF_TRUE7

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// call ScreenExt.setPenColor 1
@RET_CALL_575
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_575)

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

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Output.moveCursor 2
@RET_CALL_576
D=A
@CALL_Output.moveCursor_2
0;JMP
(RET_CALL_576)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// call Output.printString 1
@RET_CALL_577
D=A
@CALL_Output.printString_1
0;JMP
(RET_CALL_577)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_FALSE7
(TetrisGame.run$IF_FALSE7) // label IF_FALSE7

// push constant 2000
@2000 // push constant 2000 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// label IF_FALSE4
(TetrisGame.run$IF_FALSE4) // label IF_FALSE4

// goto WHILE_EXP0
@TetrisGame.run$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(TetrisGame.run$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.init 0
(Tile.init) // function Tile.init 0

// push constant 7
@7 // push constant 7 // function Tile.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Array.new 1
@RET_CALL_578
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_578)

// pop static 0
@SP // pop static 0
AM=M-1
D=M
@42
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.YELLOW 0
@RET_CALL_579
D=A
@CALL_ScreenExt.YELLOW_0
0;JMP
(RET_CALL_579)

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.TEAL 0
@RET_CALL_580
D=A
@CALL_ScreenExt.TEAL_0
0;JMP
(RET_CALL_580)

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.PURPLE 0
@RET_CALL_581
D=A
@CALL_ScreenExt.PURPLE_0
0;JMP
(RET_CALL_581)

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.GREEN 0
@RET_CALL_582
D=A
@CALL_ScreenExt.GREEN_0
0;JMP
(RET_CALL_582)

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.RED 0
@RET_CALL_583
D=A
@CALL_ScreenExt.RED_0
0;JMP
(RET_CALL_583)

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.BLUE 0
@RET_CALL_584
D=A
@CALL_ScreenExt.BLUE_0
0;JMP
(RET_CALL_584)

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// call ScreenExt.ORANGE 0
@RET_CALL_585
D=A
@CALL_ScreenExt.ORANGE_0
0;JMP
(RET_CALL_585)

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

// push constant 28
@28 // push constant 28 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Array.new 1
@RET_CALL_586
D=A
@CALL_Array.new_1
0;JMP
(RET_CALL_586)

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@43
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 1632
@1632 // push constant 1632 (constant)
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

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 1632
@1632 // push constant 1632 (constant)
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 1632
@1632 // push constant 1632 (constant)
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 1632
@1632 // push constant 1632 (constant)
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 3840
@3840 // push constant 3840 (constant)
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

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 8738
@8738 // push constant 8738 (constant)
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

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 240
@240 // push constant 240 (constant)
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

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 17476
@17476 // push constant 17476 (constant)
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

// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 19968
@19968 // push constant 19968 (constant)
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

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 17984
@17984 // push constant 17984 (constant)
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

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 3648
@3648 // push constant 3648 (constant)
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

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 19520
@19520 // push constant 19520 (constant)
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

// push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 27648
@27648 // push constant 27648 (constant)
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

// push constant 13
@13 // push constant 13 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 17952
@17952 // push constant 17952 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 1728
@1728 // push constant 1728 (constant)
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

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 29631
@29631 // push constant 29631 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

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

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 14847
@14847 // push constant 14847 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

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

// push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 9792
@9792 // push constant 9792 (constant)
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

// push constant 18
@18 // push constant 18 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 3168
@3168 // push constant 3168 (constant)
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

// push constant 19
@19 // push constant 19 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 19584
@19584 // push constant 19584 (constant)
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

// push constant 20
@20 // push constant 20 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 29183
@29183 // push constant 29183 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

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

// push constant 21
@21 // push constant 21 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 25664
@25664 // push constant 25664 (constant)
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

// push constant 22
@22 // push constant 22 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 3616
@3616 // push constant 3616 (constant)
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

// push constant 23
@23 // push constant 23 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 17600
@17600 // push constant 17600 (constant)
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

// push constant 24
@24 // push constant 24 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 11776
@11776 // push constant 11776 (constant)
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

// push constant 25
@25 // push constant 25 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 17504
@17504 // push constant 17504 (constant)
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

// push constant 26
@26 // push constant 26 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 3712
@3712 // push constant 3712 (constant)
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

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 15295
@15295 // push constant 15295 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

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

// function Tile.new 0
(Tile.new) // function Tile.new 0

// push constant 5
@5 // push constant 5 // function Tile.new 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// call Memory.alloc 1
@RET_CALL_587
D=A
@CALL_Memory.alloc_1
0;JMP
(RET_CALL_587)

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

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// label WHILE_EXP0
(Tile.new$WHILE_EXP0) // label WHILE_EXP0

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

// push constant 7
@7 // push constant 7 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// eq
@RET_EQ_588
D=A
@EQ_SUB
0;JMP
(RET_EQ_588)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.new$WHILE_END0
D;JNE // jump if not zero

// call Random.nextInt 0
@RET_CALL_589
D=A
@CALL_Random.nextInt_0
0;JMP
(RET_CALL_589)

// push constant 7
@7 // push constant 7 (constant)
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

// goto WHILE_EXP0
@Tile.new$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Tile.new$WHILE_END0) // label WHILE_END0

// push constant 11
@11 // push constant 11 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
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

// function Tile.move 0
(Tile.move) // function Tile.move 0

// push argument 0
@ARG // push argument 0 // function Tile.move 0
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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.dispose 0
(Tile.dispose) // function Tile.dispose 0

// push argument 0
@ARG // push argument 0 // function Tile.dispose 0
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
@RET_CALL_590
D=A
@CALL_Memory.deAlloc_1
0;JMP
(RET_CALL_590)

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

// function Tile.check 3
(Tile.check) // function Tile.check 3
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
@ARG // push argument 0 // function Tile.check 3
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_591
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_591)

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

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
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
(Tile.check$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
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

// lt
@RET_LT_592
D=A
@LT_SUB
0;JMP
(RET_LT_592)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.check$WHILE_END0
D;JNE // jump if not zero

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

// label WHILE_EXP1
(Tile.check$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
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

// lt
@RET_LT_593
D=A
@LT_SUB
0;JMP
(RET_LT_593)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.check$WHILE_END1
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
@RET_LT_594
D=A
@LT_SUB
0;JMP
(RET_LT_594)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.check$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.check$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.check$IF_TRUE0) // label IF_TRUE0

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

// call Grid.hasTile 3
@RET_CALL_595
D=A
@CALL_Grid.hasTile_3
0;JMP
(RET_CALL_595)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.check$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Tile.check$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Tile.check$IF_TRUE1) // label IF_TRUE1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// label IF_FALSE1
(Tile.check$IF_FALSE1) // label IF_FALSE1

// label IF_FALSE0
(Tile.check$IF_FALSE0) // label IF_FALSE0

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

// goto WHILE_EXP1
@Tile.check$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Tile.check$WHILE_END1) // label WHILE_END1

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
@Tile.check$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Tile.check$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// return
@RETURN_SUB
0;JMP

// function Tile.getScore 0
(Tile.getScore) // function Tile.getScore 0

// push argument 0
@ARG // push argument 0 // function Tile.getScore 0
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

// call Grid.clearRow 1
@RET_CALL_596
D=A
@CALL_Grid.clearRow_1
0;JMP
(RET_CALL_596)

// return
@RETURN_SUB
0;JMP

// function Tile.rotateRight 0
(Tile.rotateRight) // function Tile.rotateRight 0

// push argument 0
@ARG // push argument 0 // function Tile.rotateRight 0
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

// call Tile.erase 1
@RET_CALL_597
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_597)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_598
D=A
@GT_SUB
0;JMP
(RET_GT_598)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.rotateRight$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.rotateRight$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.rotateRight$IF_TRUE0) // label IF_TRUE0

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

// label IF_FALSE0
(Tile.rotateRight$IF_FALSE0) // label IF_FALSE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_599
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_599)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.rotateRight$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Tile.rotateRight$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Tile.rotateRight$IF_TRUE1) // label IF_TRUE1

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_600
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_600)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Tile.rotateRight$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Tile.rotateRight$IF_FALSE1) // label IF_FALSE1

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
@RET_LT_601
D=A
@LT_SUB
0;JMP
(RET_LT_601)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.rotateRight$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Tile.rotateRight$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Tile.rotateRight$IF_TRUE2) // label IF_TRUE2

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

// label IF_FALSE2
(Tile.rotateRight$IF_FALSE2) // label IF_FALSE2

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_602
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_602)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Tile.rotateRight$IF_END1) // label IF_END1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.rotateLeft 0
(Tile.rotateLeft) // function Tile.rotateLeft 0

// push argument 0
@ARG // push argument 0 // function Tile.rotateLeft 0
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

// call Tile.erase 1
@RET_CALL_603
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_603)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
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
@RET_LT_604
D=A
@LT_SUB
0;JMP
(RET_LT_604)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.rotateLeft$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.rotateLeft$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.rotateLeft$IF_TRUE0) // label IF_TRUE0

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

// label IF_FALSE0
(Tile.rotateLeft$IF_FALSE0) // label IF_FALSE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_605
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_605)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.rotateLeft$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Tile.rotateLeft$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Tile.rotateLeft$IF_TRUE1) // label IF_TRUE1

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_606
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_606)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Tile.rotateLeft$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Tile.rotateLeft$IF_FALSE1) // label IF_FALSE1

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// gt
@RET_GT_607
D=A
@GT_SUB
0;JMP
(RET_GT_607)

// if-goto IF_TRUE2
@SP // if-goto IF_TRUE2
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.rotateLeft$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Tile.rotateLeft$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Tile.rotateLeft$IF_TRUE2) // label IF_TRUE2

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

// label IF_FALSE2
(Tile.rotateLeft$IF_FALSE2) // label IF_FALSE2

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_608
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_608)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Tile.rotateLeft$IF_END1) // label IF_END1

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.moveRight 0
(Tile.moveRight) // function Tile.moveRight 0

// push argument 0
@ARG // push argument 0 // function Tile.moveRight 0
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

// call Tile.erase 1
@RET_CALL_609
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_609)

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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_610
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_610)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.moveRight$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.moveRight$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.moveRight$IF_TRUE0) // label IF_TRUE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_611
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_611)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Tile.moveRight$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Tile.moveRight$IF_FALSE0) // label IF_FALSE0

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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_612
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_612)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(Tile.moveRight$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.moveLeft 0
(Tile.moveLeft) // function Tile.moveLeft 0

// push argument 0
@ARG // push argument 0 // function Tile.moveLeft 0
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

// call Tile.erase 1
@RET_CALL_613
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_613)

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

// pop this 0
@SP // pop this 0
AM=M-1
D=M
@THIS
A=M
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_614
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_614)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.moveLeft$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.moveLeft$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.moveLeft$IF_TRUE0) // label IF_TRUE0

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

// label IF_FALSE0
(Tile.moveLeft$IF_FALSE0) // label IF_FALSE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_615
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_615)

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

// function Tile.moveUp 0
(Tile.moveUp) // function Tile.moveUp 0

// push argument 0
@ARG // push argument 0 // function Tile.moveUp 0
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

// call Tile.erase 1
@RET_CALL_616
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_616)

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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_617
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_617)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.moveUp$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.moveUp$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.moveUp$IF_TRUE0) // label IF_TRUE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_618
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_618)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END0
@Tile.moveUp$IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Tile.moveUp$IF_FALSE0) // label IF_FALSE0

// push this 1
@THIS // push this 1
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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_619
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_619)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END0
(Tile.moveUp$IF_END0) // label IF_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.moveDown 0
(Tile.moveDown) // function Tile.moveDown 0

// push argument 0
@ARG // push argument 0 // function Tile.moveDown 0
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

// call Tile.erase 1
@RET_CALL_620
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_620)

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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_621
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_621)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.moveDown$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.moveDown$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.moveDown$IF_TRUE0) // label IF_TRUE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_622
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_622)

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

// return
@RETURN_SUB
0;JMP

// label IF_FALSE0
(Tile.moveDown$IF_FALSE0) // label IF_FALSE0

// push this 1
@THIS // push this 1
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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_623
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_623)

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

// function Tile.span 0
(Tile.span) // function Tile.span 0

// push argument 0
@ARG // push argument 0 // function Tile.span 0
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

// call Tile.erase 1
@RET_CALL_624
D=A
@CALL_Tile.erase_1
0;JMP
(RET_CALL_624)

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

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

// pop this 1
@SP // pop this 1
AM=M-1
D=M
@THIS
A=M+1
M=D

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.check 1
@RET_CALL_625
D=A
@CALL_Tile.check_1
0;JMP
(RET_CALL_625)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.span$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.span$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.span$IF_TRUE0) // label IF_TRUE0

// push pointer 0
@3 // push pointer 0
D=M
@SP
AM=M+1
A=A-1
M=D

// call Tile.draw 1
@RET_CALL_626
D=A
@CALL_Tile.draw_1
0;JMP
(RET_CALL_626)

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

// return
@RETURN_SUB
0;JMP

// label IF_FALSE0
(Tile.span$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.draw 3
(Tile.draw) // function Tile.draw 3
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
@ARG // push argument 0 // function Tile.draw 3
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_627
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_627)

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

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
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
(Tile.draw$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
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

// lt
@RET_LT_628
D=A
@LT_SUB
0;JMP
(RET_LT_628)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.draw$WHILE_END0
D;JNE // jump if not zero

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

// label WHILE_EXP1
(Tile.draw$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
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

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.draw$WHILE_END1
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
@RET_LT_630
D=A
@LT_SUB
0;JMP
(RET_LT_630)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.draw$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.draw$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.draw$IF_TRUE0) // label IF_TRUE0

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

// eq
@RET_EQ_631
D=A
@EQ_SUB
0;JMP
(RET_EQ_631)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.draw$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Tile.draw$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Tile.draw$IF_TRUE1) // label IF_TRUE1

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
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

// call Grid.draw 4
@RET_CALL_632
D=A
@CALL_Grid.draw_4
0;JMP
(RET_CALL_632)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Tile.draw$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Tile.draw$IF_FALSE1) // label IF_FALSE1

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

// push static 0
@42 // push static 0 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
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

// call ScreenExt.setPenColor 1
@RET_CALL_633
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_633)

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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_634
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_634)

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_635
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_635)

// push constant 24
@24 // push constant 24 (constant)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 14
@14 // push constant 14 (constant)
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

// push constant 18
@18 // push constant 18 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
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

// push constant 12
@12 // push constant 12 (constant)
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

// call Screen.drawRectangle 4
@RET_CALL_638
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_638)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Tile.draw$IF_END1) // label IF_END1

// label IF_FALSE0
(Tile.draw$IF_FALSE0) // label IF_FALSE0

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

// goto WHILE_EXP1
@Tile.draw$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Tile.draw$WHILE_END1) // label WHILE_END1

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
@Tile.draw$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Tile.draw$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Tile.erase 3
(Tile.erase) // function Tile.erase 3
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
@ARG // push argument 0 // function Tile.erase 3
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

// pop local 1
@SP // pop local 1
AM=M-1
D=M
@LCL
A=M+1
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_639
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_639)

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

// push static 1
@43 // push static 1 (static ../projects/13/Original/12_Tetris/Tile.vm)
D=M
@SP
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
(Tile.erase$WHILE_EXP0) // label WHILE_EXP0

// push local 1
@LCL // push local 1
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

// lt
@RET_LT_640
D=A
@LT_SUB
0;JMP
(RET_LT_640)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.erase$WHILE_END0
D;JNE // jump if not zero

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

// label WHILE_EXP1
(Tile.erase$WHILE_EXP1) // label WHILE_EXP1

// push local 0
@LCL // push local 0
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

// lt
@RET_LT_641
D=A
@LT_SUB
0;JMP
(RET_LT_641)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END1
@SP // if-goto WHILE_END1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.erase$WHILE_END1
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
@RET_LT_642
D=A
@LT_SUB
0;JMP
(RET_LT_642)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.erase$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Tile.erase$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Tile.erase$IF_TRUE0) // label IF_TRUE0

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

// eq
@RET_EQ_643
D=A
@EQ_SUB
0;JMP
(RET_EQ_643)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Tile.erase$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Tile.erase$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Tile.erase$IF_TRUE1) // label IF_TRUE1

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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call Grid.draw 4
@RET_CALL_644
D=A
@CALL_Grid.draw_4
0;JMP
(RET_CALL_644)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// goto IF_END1
@Tile.erase$IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Tile.erase$IF_FALSE1) // label IF_FALSE1

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// neg
@SP // neg
A=M-1 // A -> top of stack
M=-M // neg in place

// call ScreenExt.setPenColor 1
@RET_CALL_645
D=A
@CALL_ScreenExt.setPenColor_1
0;JMP
(RET_CALL_645)

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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_646
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_646)

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_647
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_647)

// push constant 24
@24 // push constant 24 (constant)
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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_648
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_648)

// push constant 18
@18 // push constant 18 (constant)
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

// push constant 14
@14 // push constant 14 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Math.multiply 2
@RET_CALL_649
D=A
@CALL_Math.multiply_2
0;JMP
(RET_CALL_649)

// push constant 12
@12 // push constant 12 (constant)
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

// call Screen.drawRectangle 4
@RET_CALL_650
D=A
@CALL_Screen.drawRectangle_4
0;JMP
(RET_CALL_650)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// label IF_END1
(Tile.erase$IF_END1) // label IF_END1

// label IF_FALSE0
(Tile.erase$IF_FALSE0) // label IF_FALSE0

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

// goto WHILE_EXP1
@Tile.erase$WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Tile.erase$WHILE_END1) // label WHILE_END1

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
@Tile.erase$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Tile.erase$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Touch.init 1
(Touch.init) // function Touch.init 1
@SP
A=M
M=0
D=A+1
@SP
M=D

// push constant 4106
@4106 // push constant 4106 // function Touch.init 1 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// pop static 0
@SP // pop static 0
AM=M-1
D=M
@44
M=D

// push constant 192
@192 // push constant 192 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 9
@SP // pop static 9
AM=M-1
D=M
@53
M=D

// push constant 208
@208 // push constant 208 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 10
@SP // pop static 10
AM=M-1
D=M
@54
M=D

// push constant 224
@224 // push constant 224 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 11
@SP // pop static 11
AM=M-1
D=M
@55
M=D

// push constant 256
@256 // push constant 256 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 12
@SP // pop static 12
AM=M-1
D=M
@56
M=D

// push constant 4094
@4094 // push constant 4094 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 7
@SP // pop static 7
AM=M-1
D=M
@51
M=D

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// pop static 8
@SP // pop static 8
AM=M-1
D=M
@52
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Touch.writeRTP 0
(Touch.writeRTP) // function Touch.writeRTP 0

// push constant 0
@SP // push constant 0 // function Touch.writeRTP 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign
// push static 0
@44 // push static 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
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
(Touch.writeRTP$WHILE_EXP0) // label WHILE_EXP0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@44 // push static 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
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
@RET_LT_651
D=A
@LT_SUB
0;JMP
(RET_LT_651)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Touch.writeRTP$WHILE_END0
D;JNE // jump if not zero

// goto WHILE_EXP0
@Touch.writeRTP$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Touch.writeRTP$WHILE_END0) // label WHILE_END0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 0
@44 // push static 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
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

// function Touch.getEvent 0
(Touch.getEvent) // function Touch.getEvent 0

// push static 11
@55 // push static 11 // function Touch.getEvent 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// call Touch.writeRTP 1
@RET_CALL_652
D=A
@CALL_Touch.writeRTP_1
0;JMP
(RET_CALL_652)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 12
@56 // push static 12 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Touch.writeRTP 1
@RET_CALL_653
D=A
@CALL_Touch.writeRTP_1
0;JMP
(RET_CALL_653)

// pop static 3
@SP // pop static 3
AM=M-1
D=M
@47
M=D

// push static 3
@47 // push static 3 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 8
@52 // push static 8 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// gt
@RET_GT_654
D=A
@GT_SUB
0;JMP
(RET_GT_654)

// push static 3
@47 // push static 3 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 7
@51 // push static 7 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_655
D=A
@LT_SUB
0;JMP
(RET_LT_655)

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
@Touch.getEvent$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Touch.getEvent$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Touch.getEvent$IF_TRUE0) // label IF_TRUE0

// push static 9
@53 // push static 9 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Touch.writeRTP 1
@RET_CALL_656
D=A
@CALL_Touch.writeRTP_1
0;JMP
(RET_CALL_656)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 12
@56 // push static 12 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Touch.writeRTP 1
@RET_CALL_657
D=A
@CALL_Touch.writeRTP_1
0;JMP
(RET_CALL_657)

// pop static 1
@SP // pop static 1
AM=M-1
D=M
@45
M=D

// push static 10
@54 // push static 10 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Touch.writeRTP 1
@RET_CALL_658
D=A
@CALL_Touch.writeRTP_1
0;JMP
(RET_CALL_658)

// pop temp 0
@SP // pop temp 0
AM=M-1
D=M
@5
M=D

// push static 7
@51 // push static 7 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 12
@56 // push static 12 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// call Touch.writeRTP 1
@RET_CALL_659
D=A
@CALL_Touch.writeRTP_1
0;JMP
(RET_CALL_659)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// pop static 2
@SP // pop static 2
AM=M-1
D=M
@46
M=D

// push static 1
@45 // push static 1 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 7
@51 // push static 7 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_660
D=A
@LT_SUB
0;JMP
(RET_LT_660)

// push static 2
@46 // push static 2 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// push static 7
@51 // push static 7 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D

// lt
@RET_LT_661
D=A
@LT_SUB
0;JMP
(RET_LT_661)

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
@Touch.getEvent$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Touch.getEvent$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Touch.getEvent$IF_TRUE1) // label IF_TRUE1

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop static 4
@SP // pop static 4
AM=M-1
D=M
@48
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

// return
@RETURN_SUB
0;JMP

// label IF_FALSE1
(Touch.getEvent$IF_FALSE1) // label IF_FALSE1

// label IF_FALSE0
(Touch.getEvent$IF_FALSE0) // label IF_FALSE0

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop static 4
@SP // pop static 4
AM=M-1
D=M
@48
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// return
@RETURN_SUB
0;JMP

// function Touch.getX 0
(Touch.getX) // function Touch.getX 0

// push static 1
@45 // push static 1 // function Touch.getX 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function Touch.getY 0
(Touch.getY) // function Touch.getY 0

// push static 2
@46 // push static 2 // function Touch.getY 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function Touch.getZ 0
(Touch.getZ) // function Touch.getZ 0

// push static 3
@47 // push static 3 // function Touch.getZ 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function Touch.getPen 0
(Touch.getPen) // function Touch.getPen 0

// push static 4
@48 // push static 4 // function Touch.getPen 0 (static ../projects/13/Original/12_Tetris/Touch.vm)
D=M
@SP
AM=M+1
A=A-1
M=D
// return
@RETURN_SUB
0;JMP

// function Touch._map 6
(Touch._map) // function Touch._map 6
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
D=A+1
@SP
M=D

// push argument 0
@ARG // push argument 0 // function Touch._map 6
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
@RET_LT_662
D=A
@LT_SUB
0;JMP
(RET_LT_662)

// if-goto IF_TRUE0
@SP // if-goto IF_TRUE0
AM=M-1 // SP--, A -> val
D=M // d = val
@Touch._map$IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Touch._map$IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Touch._map$IF_TRUE0) // label IF_TRUE0

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

// label IF_FALSE0
(Touch._map$IF_FALSE0) // label IF_FALSE0

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
@RET_GT_663
D=A
@GT_SUB
0;JMP
(RET_GT_663)

// if-goto IF_TRUE1
@SP // if-goto IF_TRUE1
AM=M-1 // SP--, A -> val
D=M // d = val
@Touch._map$IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Touch._map$IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Touch._map$IF_TRUE1) // label IF_TRUE1

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

// label IF_FALSE1
(Touch._map$IF_FALSE1) // label IF_FALSE1

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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

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

// label WHILE_EXP0
(Touch._map$WHILE_EXP0) // label WHILE_EXP0

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
@RET_LT_664
D=A
@LT_SUB
0;JMP
(RET_LT_664)

// not
@SP // not
A=M-1 // A -> top of stack
M=!M // not in place

// if-goto WHILE_END0
@SP // if-goto WHILE_END0
AM=M-1 // SP--, A -> val
D=M // d = val
@Touch._map$WHILE_END0
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

// gt
@RET_GT_665
D=A
@GT_SUB
0;JMP
(RET_GT_665)

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

// eq
@RET_EQ_666
D=A
@EQ_SUB
0;JMP
(RET_EQ_666)

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
@Touch._map$IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Touch._map$IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Touch._map$IF_TRUE2) // label IF_TRUE2

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

// label IF_FALSE2
(Touch._map$IF_FALSE2) // label IF_FALSE2

// goto WHILE_EXP0
@Touch._map$WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Touch._map$WHILE_END0) // label WHILE_END0

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

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

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
@57
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
@58
M=D

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// push static 1
@58 // push static 1 (static ../projects/13/Original/12_Tetris/UART.vm)
D=M
@SP
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
@57 // push static 0 (static ../projects/13/Original/12_Tetris/UART.vm)
D=M
@SP
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
@57 // push static 0 (static ../projects/13/Original/12_Tetris/UART.vm)
D=M
@SP
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
@RET_EQ_667
D=A
@EQ_SUB
0;JMP
(RET_EQ_667)

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
@58 // push static 1 (static ../projects/13/Original/12_Tetris/UART.vm)
D=M
@SP
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
@RET_LT_668
D=A
@LT_SUB
0;JMP
(RET_LT_668)

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
@58 // push static 1 (static ../projects/13/Original/12_Tetris/UART.vm)
D=M
@SP
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
@58 // push static 1 (static ../projects/13/Original/12_Tetris/UART.vm)
D=M
@SP
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
(CALL_ScreenExt.init_0)
@R13
M=D // R13 = retAddr
@ScreenExt.init
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
(CALL_Touch.init_0)
@R13
M=D // R13 = retAddr
@Touch.init
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
(CALL_Menu.new_4)
@R13
M=D // R13 = retAddr
@Menu.new
D=A
@R14
M=D // R14 = func addr
@4
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.init_0)
@R13
M=D // R13 = retAddr
@Tile.init
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
0;JMP // sub return
(CALL_Main.drawStart_0)
@R13
M=D // R13 = retAddr
@Main.drawStart
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Main.drawTile_0)
@R13
M=D // R13 = retAddr
@Main.drawTile
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Menu.draw_1)
@R13
M=D // R13 = retAddr
@Menu.draw
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Main.clearTile_0)
@R13
M=D // R13 = retAddr
@Main.clearTile
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Menu.getButton_1)
@R13
M=D // R13 = retAddr
@Menu.getButton
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_TetrisGame.new_0)
@R13
M=D // R13 = retAddr
@TetrisGame.new
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_TetrisGame.run_1)
@R13
M=D // R13 = retAddr
@TetrisGame.run
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_TetrisGame.dispose_1)
@R13
M=D // R13 = retAddr
@TetrisGame.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.new_0)
@R13
M=D // R13 = retAddr
@Tile.new
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.move_3)
@R13
M=D // R13 = retAddr
@Tile.move
D=A
@R14
M=D // R14 = func addr
@3
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.draw_1)
@R13
M=D // R13 = retAddr
@Tile.draw
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.erase_1)
@R13
M=D // R13 = retAddr
@Tile.erase
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.dispose_1)
@R13
M=D // R13 = retAddr
@Tile.dispose
D=A
@R14
M=D // R14 = func addr
@1
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
(CALL_ScreenExt.setPenColor_1)
@R13
M=D // R13 = retAddr
@ScreenExt.setPenColor
D=A
@R14
M=D // R14 = func addr
@1
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
(CALL_ScreenExt.DARKGREY_0)
@R13
M=D // R13 = retAddr
@ScreenExt.DARKGREY
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.LIGHTGREY_0)
@R13
M=D // R13 = retAddr
@ScreenExt.LIGHTGREY
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_ScreenExt.setBackColor_1)
@R13
M=D // R13 = retAddr
@ScreenExt.setBackColor
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.BLACK_0)
@R13
M=D // R13 = retAddr
@ScreenExt.BLACK
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.WHITE_0)
@R13
M=D // R13 = retAddr
@ScreenExt.WHITE
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_Grid.hasTile_3)
@R13
M=D // R13 = retAddr
@Grid.hasTile
D=A
@R14
M=D // R14 = func addr
@3
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Grid.draw_4)
@R13
M=D // R13 = retAddr
@Grid.draw
D=A
@R14
M=D // R14 = func addr
@4
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Grid.isClear_3)
@R13
M=D // R13 = retAddr
@Grid.isClear
D=A
@R14
M=D // R14 = func addr
@3
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
(CALL_Button.new_2)
@R13
M=D // R13 = retAddr
@Button.new
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Button.dispose_1)
@R13
M=D // R13 = retAddr
@Button.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Button.draw_2)
@R13
M=D // R13 = retAddr
@Button.draw
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Touch.getEvent_0)
@R13
M=D // R13 = retAddr
@Touch.getEvent
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Touch.getPen_0)
@R13
M=D // R13 = retAddr
@Touch.getPen
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Touch.getY_0)
@R13
M=D // R13 = retAddr
@Touch.getY
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Touch.getX_0)
@R13
M=D // R13 = retAddr
@Touch.getX
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_ScreenExt.drawBitMap_5)
@R13
M=D // R13 = retAddr
@ScreenExt.drawBitMap
D=A
@R14
M=D // R14 = func addr
@5
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
(CALL_ScreenExt.setWindow_4)
@R13
M=D // R13 = retAddr
@ScreenExt.setWindow
D=A
@R14
M=D // R14 = func addr
@4
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.getBackColor_0)
@R13
M=D // R13 = retAddr
@ScreenExt.getBackColor
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.writeCommand_1)
@R13
M=D // R13 = retAddr
@ScreenExt.writeCommand
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.writeData_1)
@R13
M=D // R13 = retAddr
@ScreenExt.writeData
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt._completeTransaction_0)
@R13
M=D // R13 = retAddr
@ScreenExt._completeTransaction
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_ScreenExt.getPenColor_0)
@R13
M=D // R13 = retAddr
@ScreenExt.getPenColor
D=A
@R14
M=D // R14 = func addr
@0
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
(CALL_ScreenExt._write8BitData_1)
@R13
M=D // R13 = retAddr
@ScreenExt._write8BitData
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Grid.new_0)
@R13
M=D // R13 = retAddr
@Grid.new
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Grid.dispose_1)
@R13
M=D // R13 = retAddr
@Grid.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Menu.dispose_1)
@R13
M=D // R13 = retAddr
@Menu.dispose
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.span_2)
@R13
M=D // R13 = retAddr
@Tile.span
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.moveRight_1)
@R13
M=D // R13 = retAddr
@Tile.moveRight
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.rotateRight_1)
@R13
M=D // R13 = retAddr
@Tile.rotateRight
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.rotateLeft_1)
@R13
M=D // R13 = retAddr
@Tile.rotateLeft
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.moveLeft_1)
@R13
M=D // R13 = retAddr
@Tile.moveLeft
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.moveDown_1)
@R13
M=D // R13 = retAddr
@Tile.moveDown
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.getScore_1)
@R13
M=D // R13 = retAddr
@Tile.getScore
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_TetrisGame.score_2)
@R13
M=D // R13 = retAddr
@TetrisGame.score
D=A
@R14
M=D // R14 = func addr
@2
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.YELLOW_0)
@R13
M=D // R13 = retAddr
@ScreenExt.YELLOW
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.TEAL_0)
@R13
M=D // R13 = retAddr
@ScreenExt.TEAL
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.PURPLE_0)
@R13
M=D // R13 = retAddr
@ScreenExt.PURPLE
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.GREEN_0)
@R13
M=D // R13 = retAddr
@ScreenExt.GREEN
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.RED_0)
@R13
M=D // R13 = retAddr
@ScreenExt.RED
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.BLUE_0)
@R13
M=D // R13 = retAddr
@ScreenExt.BLUE
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_ScreenExt.ORANGE_0)
@R13
M=D // R13 = retAddr
@ScreenExt.ORANGE
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Random.nextInt_0)
@R13
M=D // R13 = retAddr
@Random.nextInt
D=A
@R14
M=D // R14 = func addr
@0
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Grid.clearRow_1)
@R13
M=D // R13 = retAddr
@Grid.clearRow
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Tile.check_1)
@R13
M=D // R13 = retAddr
@Tile.check
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
(CALL_Touch.writeRTP_1)
@R13
M=D // R13 = retAddr
@Touch.writeRTP
D=A
@R14
M=D // R14 = func addr
@1
D=A // D = nArgs
@CALL_SUB
0;JMP
