
// push argument 1
@ARG // push argument 1 (&asm_segment)
D=M // d = *asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// pop pointer 1 // that = argument[1]
@3 // pop pointer 1 // that = argument[1] (&pointer)
D=A // d = &pointer
@1 // retrieve &dst (segment+offset) and store at R13
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

// push constant 0
@SP // push constant 0
AM=M+1 // SP++
A=A-1 // A -> slot
M=0 // direct assign

// pop that 0 // first element in the series = 0
@THAT // pop that 0 // first element in the series = 0 (&asm_segment)
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

// push constant 1
@SP // push constant 1
AM=M+1 // SP++
A=A-1 // A -> slot
M=1 // direct assign

// pop that 1 // second element in the series = 1
@THAT // pop that 1 // second element in the series = 1 (&asm_segment)
D=M // d = *asm_segment
@1 // retrieve &dst (segment+offset) and store at R13
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
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

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

// pop argument 0 // num_of_elements -= 2 (first 2 elements are set)
@ARG // pop argument 0 // num_of_elements -= 2 (first 2 elements are set) (&asm_segment)
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

// label MAIN_LOOP_START
(FibonacciSeries.MAIN_LOOP_START) // label MAIN_LOOP_START

// push argument 0
@ARG // push argument 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
@SP // if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
AM=M-1 // SP--, A -> val
D=M // d = val
@FibonacciSeries.COMPUTE_ELEMENT
D;JNE // jump if not zero

// goto END_PROGRAM // otherwise, goto END_PROGRAM
@FibonacciSeries.END_PROGRAM // goto END_PROGRAM // otherwise, goto END_PROGRAM
0;JMP // unconditional jump

// label COMPUTE_ELEMENT
(FibonacciSeries.COMPUTE_ELEMENT) // label COMPUTE_ELEMENT

// push that 0
@THAT // push that 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// push that 1
@THAT // push that 1 (&asm_segment)
D=M // d = *asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// add
@SP // add
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=D+M // val1 = val2 + val1

// pop that 2 // that[2] = that[0] + that[1]
@THAT // pop that 2 // that[2] = that[0] + that[1] (&asm_segment)
D=M // d = *asm_segment
@2 // retrieve &dst (segment+offset) and store at R13
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

// push pointer 1
@3 // push pointer 1 (&asm_segment)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

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

// pop pointer 1 // that += 1
@3 // pop pointer 1 // that += 1 (&pointer)
D=A // d = &pointer
@1 // retrieve &dst (segment+offset) and store at R13
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
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

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

// pop argument 0 // num_of_elements--
@ARG // pop argument 0 // num_of_elements-- (&asm_segment)
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

// goto MAIN_LOOP_START
@FibonacciSeries.MAIN_LOOP_START // goto MAIN_LOOP_START
0;JMP // unconditional jump

// label END_PROGRAM
(FibonacciSeries.END_PROGRAM) // label END_PROGRAM
