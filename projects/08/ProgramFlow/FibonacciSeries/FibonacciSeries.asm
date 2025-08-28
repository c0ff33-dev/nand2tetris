
// (-3) push argument 1
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

// (-5) pop pointer 1 // that = argument[1]
@3 // pop pointer 1 // that = argument[1] (&pointer)
D=A // d = &pointer
@1 // retrieve &dst (segment+offset) and store at *esp
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

// (-7) push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-9) pop that 0 // first element in the series = 0
@THAT // pop that 0 // first element in the series = 0 (&asm_segment)
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

// (-11) push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-13) pop that 1 // second element in the series = 1
@THAT // pop that 1 // second element in the series = 1 (&asm_segment)
D=M // d = *asm_segment
@1 // retrieve &dst (segment+offset) and store at *esp
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

// (-15) push argument 0
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

// (-17) push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-19) sub
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

// (-21) pop argument 0 // num_of_elements -= 2 (first 2 elements are set)
@ARG // pop argument 0 // num_of_elements -= 2 (first 2 elements are set) (&asm_segment)
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

// (-23) label MAIN_LOOP_START
(FibonacciSeries.MAIN_LOOP_START) // label MAIN_LOOP_START

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

// (-28) if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
@0 // constant (0) // if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
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
@FibonacciSeries.COMPUTE_ELEMENT
D;JNE // jump if not zero

// (-30) goto END_PROGRAM // otherwise, goto END_PROGRAM
@FibonacciSeries.END_PROGRAM // goto END_PROGRAM // otherwise, goto END_PROGRAM
0;JMP // unconditional jump

// (-32) label COMPUTE_ELEMENT
(FibonacciSeries.COMPUTE_ELEMENT) // label COMPUTE_ELEMENT

// (-35) push that 0
@THAT // push that 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-37) push that 1
@THAT // push that 1 (&asm_segment)
D=M // d = *asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-39) add
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

// (-41) pop that 2 // that[2] = that[0] + that[1]
@THAT // pop that 2 // that[2] = that[0] + that[1] (&asm_segment)
D=M // d = *asm_segment
@2 // retrieve &dst (segment+offset) and store at *esp
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

// (-43) push pointer 1
@3 // push pointer 1 (&asm_segment)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-45) push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-47) add
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

// (-49) pop pointer 1 // that += 1
@3 // pop pointer 1 // that += 1 (&pointer)
D=A // d = &pointer
@1 // retrieve &dst (segment+offset) and store at *esp
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

// (-51) push argument 0
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

// (-53) push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-55) sub
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

// (-57) pop argument 0 // num_of_elements--
@ARG // pop argument 0 // num_of_elements-- (&asm_segment)
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

// (-59) goto MAIN_LOOP_START
@FibonacciSeries.MAIN_LOOP_START // goto MAIN_LOOP_START
0;JMP // unconditional jump

// (-61) label END_PROGRAM
(FibonacciSeries.END_PROGRAM) // label END_PROGRAM
