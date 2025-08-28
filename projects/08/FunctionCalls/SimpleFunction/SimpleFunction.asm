
// (-3) function SimpleFunction.test 2
(SimpleFunction.test) // function SimpleFunction.test 2

// (-6) push local 0
@LCL // push local 0 // function SimpleFunction.test 2 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// (-8) push local 1
@LCL // push local 1 (&asm_segment)
D=M // d = *asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-10) add
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

// (-12) not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// (-14) push argument 0
@ARG // push argument 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-16) add
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

// (-18) push argument 1
@ARG // push argument 1 (&asm_segment)
D=M // d = *asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-20) sub
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

// (-22) return

// (-24) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
@ARG // pop argument 0 // return // move result to &arg[0] (soon to be last stack item) (&asm_segment)
D=M // d = *asm_segment
@0 // retrieve &dst (segment+offset) and store at *esp
D=D+A // d = &dst (asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@SP // &esp // restore esp and complete the pop
M=M+1 // &esp++ (&dst)
A=M // *esp (&dst)
A=M // *dst
M=D // dst = src (pop)
@SP // &esp
M=M-1 // &esp--
@ARG // &arg[0] // return: discard the callee stack leaving result in &arg[0] and esp at &arg[1]
D=M+1 // d = *arg[1]
@SP // &esp
M=D // *esp = arg[1]
@LCL // &lcl[0] // return: restore caller stack (THAT)
A=M-1 // &that
D=M // d = *that
@THAT
M=D // *that = *that
@2 // return: restore caller stack (THIS)
D=A // d=2
@LCL // &lcl
A=M-D // &this
D=M // d = *this
@THIS
M=D // *this = *this
@3 // return: restore caller stack (ARG)
D=A // d=3
@LCL // &lcl 
A=M-D // &lcl-3 (&arg)
D=M // d = *arg
@ARG
M=D // *arg = *arg
@LCL // &lcl // before restoring LCL, save it to R13
D=M // d = *lcl
@R13 // &r13
M=D // *r13 = lcl
@4 // return: restore caller stack (LCL)
D=A // d=4
@LCL // &lcl
A=M-D // &lcl-4
D=M // d = *lcl-4
@LCL
M=D // *lcl = *lcl-4
@5 // return: unconditional jump to LCL-5 (RP)
D=A // d=5
@R13 // &r13 (old_lcl)
A=M-D // &old_lcl-5 (&lcl)
A=M // d = *lcl-5 (*lcl)
0;JMP // return (jump to RP)
