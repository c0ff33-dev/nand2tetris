
// (-3) push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-5) pop local 0 // initializes sum = 0
@LCL // pop local 0 // initializes sum = 0 (&asm_segment)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
A=M // *dst
M=D // dst = src (pop)
@SP // &esp
M=M-1 // &esp--

// (-7) label LOOP_START
(BasicLoop.LOOP_START) // label LOOP_START

// (-10) push argument 0
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

// (-12) push local 0
@LCL // push local 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-14) add
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

// (-16) pop local 0 // sum = sum + counter
@LCL // pop local 0 // sum = sum + counter (&asm_segment)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
A=M // *dst
M=D // dst = src (pop)
@SP // &esp
M=M-1 // &esp--

// (-18) push argument 0
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

// (-20) push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-22) sub
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

// (-24) pop argument 0 // counter--
@ARG // pop argument 0 // counter-- (&asm_segment)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
A=M // *dst
M=D // dst = src (pop)
@SP // &esp
M=M-1 // &esp--

// (-26) push argument 0
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

// (-28) if-goto LOOP_START // If counter > 0, goto LOOP_START
@0 // constant (0) // if-goto LOOP_START // If counter > 0, goto LOOP_START
D=A // d = 0 // push a zero onto the stack
@SP // &esp
A=M // *esp
M=D // esp = 0
@SP // &esp
M=M+1 // &esp++
@SP // &esp // compare val1 (if-goto conditional) with val2 (zero)
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2 // leave esp here (pop equivalent)
@BasicLoop.LOOP_START
D;JNE // jump if not zero

// (-30) push local 0
@LCL // push local 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
