
// (-3) push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-5) push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-7) eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_1
D;JEQ // jump if true
// EQ_FALSE_1
@0 // false
D=A // d = false
@EQ_END_1
0;JMP // unconditional jump
(EQ_TRUE_1)
@0 // 0
D=A // d = 0
D=D-1 // d = -1 (true)
(EQ_END_1) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// (-12) push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-14) push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-16) eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_2
D;JEQ // jump if true
// EQ_FALSE_2
@0 // false
D=A // d = false
@EQ_END_2
0;JMP // unconditional jump
(EQ_TRUE_2)
@0 // 0
D=A // d = 0
D=D-1 // d = -1 (true)
(EQ_END_2) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// (-21) push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-23) push constant 17
@17 // push constant 17 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-25) eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_3
D;JEQ // jump if true
// EQ_FALSE_3
@0 // false
D=A // d = false
@EQ_END_3
0;JMP // unconditional jump
(EQ_TRUE_3)
@0 // 0
D=A // d = 0
D=D-1 // d = -1 (true)
(EQ_END_3) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// (-30) push constant 892
@892 // push constant 892 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-32) push constant 891
@891 // push constant 891 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-34) lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_4
D;JLT
(JLT_FALSE_4)
@0
D=A // d = false
@JLT_END_4
0;JMP
(JLT_TRUE_4)
@0
D=A
D=D-1 // d = -1 (true)
(JLT_END_4)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// (-39) push constant 891
@891 // push constant 891 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-41) push constant 892
@892 // push constant 892 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-43) lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_5
D;JLT
(JLT_FALSE_5)
@0
D=A // d = false
@JLT_END_5
0;JMP
(JLT_TRUE_5)
@0
D=A
D=D-1 // d = -1 (true)
(JLT_END_5)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// (-48) push constant 891
@891 // push constant 891 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-50) push constant 891
@891 // push constant 891 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-52) lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_6
D;JLT
(JLT_FALSE_6)
@0
D=A // d = false
@JLT_END_6
0;JMP
(JLT_TRUE_6)
@0
D=A
D=D-1 // d = -1 (true)
(JLT_END_6)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// (-57) push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-59) push constant 32766
@32766 // push constant 32766 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-61) gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_7
D;JGT
(JGT_FALSE_7)
@0
D=A // d = false
@JGT_END_7
0;JMP
(JGT_TRUE_7)
@0
D=A
D=D-1 // d = -1 (true)
(JGT_END_7)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// (-66) push constant 32766
@32766 // push constant 32766 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-68) push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-70) gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_8
D;JGT
(JGT_FALSE_8)
@0
D=A // d = false
@JGT_END_8
0;JMP
(JGT_TRUE_8)
@0
D=A
D=D-1 // d = -1 (true)
(JGT_END_8)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// (-75) push constant 32766
@32766 // push constant 32766 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-77) push constant 32766
@32766 // push constant 32766 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-79) gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_9
D;JGT
(JGT_FALSE_9)
@0
D=A // d = false
@JGT_END_9
0;JMP
(JGT_TRUE_9)
@0
D=A
D=D-1 // d = -1 (true)
(JGT_END_9)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// (-84) push constant 57
@57 // push constant 57 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-86) push constant 31
@31 // push constant 31 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-88) push constant 53
@53 // push constant 53 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-90) add
@SP // &esp // add
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=D+M // esp = val2 + val1
@SP // &esp
M=M+1 // &esp++

// (-92) push constant 112
@112 // push constant 112 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-94) sub
@SP // &esp // sub
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=M-D // esp = val1 - val2
@SP // &esp
M=M+1 // &esp++

// (-96) neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
@SP // &esp
M=M+1 // &esp++

// (-98) and
@SP // &esp // and
M=M-1 // &esp-- (&val2)
A=M // *esp (*val2)
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp = val1
M=D&M // esp = val2 & val1
@SP // &esp
M=M+1 // &esp++

// (-100) push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-102) or
@SP // &esp // or
M=M-1 // &esp-- (&val2)
A=M // *esp (*val2)
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=M|D // esp = val1 | val2
@SP // &esp
M=M+1 // &esp++

// (-104) not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++
