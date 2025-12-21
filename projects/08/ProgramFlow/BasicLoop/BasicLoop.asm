
// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 0 // initializes sum = 0
@LCL // pop local 0 // initializes sum = 0 (&asm_segment)
D=M // d = *asm_segment
@0 // retrieve &dst (segment+offset) and store at R13
D=D+A // d = &dst (asm_segment+offset)
@R13 // &r13
M=D // r13 = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@R13 // &r13 // retrieve &dst from r13 and complete the pop
A=M // *r13 (*dst)
M=D // dst = src (pop)

// label LOOP_START
(BasicLoop.LOOP_START) // label LOOP_START

// push argument 0
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

// push local 0
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

// add
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

// pop local 0 // sum = sum + counter
@LCL // pop local 0 // sum = sum + counter (&asm_segment)
D=M // d = *asm_segment
@0 // retrieve &dst (segment+offset) and store at R13
D=D+A // d = &dst (asm_segment+offset)
@R13 // &r13
M=D // r13 = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@R13 // &r13 // retrieve &dst from r13 and complete the pop
A=M // *r13 (*dst)
M=D // dst = src (pop)

// push argument 0
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// sub
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

// pop argument 0 // counter--
@ARG // pop argument 0 // counter-- (&asm_segment)
D=M // d = *asm_segment
@0 // retrieve &dst (segment+offset) and store at R13
D=D+A // d = &dst (asm_segment+offset)
@R13 // &r13
M=D // r13 = &dst
@SP // &esp // retrieve &src from top of the stack
M=M-1 // &esp-- (&src)
A=M // *src
D=M // d = src
@R13 // &r13 // retrieve &dst from r13 and complete the pop
A=M // *r13 (*dst)
M=D // dst = src (pop)

// push argument 0
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

// if-goto LOOP_START // If counter > 0, goto LOOP_START
// compare val (if-goto conditional) with 0
@0 // if-goto LOOP_START // If counter > 0, goto LOOP_START
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@BasicLoop.LOOP_START
D;JNE // jump if not zero

// push local 0
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
