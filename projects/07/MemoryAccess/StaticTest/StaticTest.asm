
// (-3) push constant 111
@111 // push constant 111 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-5) push constant 333
@333 // push constant 333 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-7) push constant 888
@888 // push constant 888 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-9) pop static 8
@16 // pop static 8 // static + src segment offset (..\projects\07\MemoryAccess\StaticTest\StaticTest.vm)
D=A // d = &(static+offset)
@8 // retrieve &dst (segment+offset) and store at *esp
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

// (-11) pop static 3
@16 // pop static 3 // static + src segment offset (..\projects\07\MemoryAccess\StaticTest\StaticTest.vm)
D=A // d = &(static+offset)
@3 // retrieve &dst (segment+offset) and store at *esp
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

// (-13) pop static 1
@16 // pop static 1 // static + src segment offset (..\projects\07\MemoryAccess\StaticTest\StaticTest.vm)
D=A // d = &(static+offset)
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

// (-15) push static 3
@16 // push static 3 (&asm_segment) // static + src offset (..\projects\07\MemoryAccess\StaticTest\StaticTest.vm)
D=A // d = &asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-17) push static 1
@16 // push static 1 (&asm_segment) // static + src offset (..\projects\07\MemoryAccess\StaticTest\StaticTest.vm)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
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

// (-21) push static 8
@16 // push static 8 (&asm_segment) // static + src offset (..\projects\07\MemoryAccess\StaticTest\StaticTest.vm)
D=A // d = &asm_segment
@8 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-23) add
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
