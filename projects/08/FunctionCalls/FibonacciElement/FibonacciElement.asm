@261 // bootstrap: initialize SP as 261
D=A
@0
M=D

// function Sys.init 0
(Sys.init) // function Sys.init 0

// push constant 4
@4 // push constant 4 // function Sys.init 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// call Main.fibonacci 1 // computes the 4th fibonacci element
(sys.Main.fibonacci.1) // call Main.fibonacci 1 // computes the 4th fibonacci element
@sys.Main.fibonacci.1 // call Main.fibonacci // push RP
D=A // d = RP
@SP // &esp
A=M // *esp
M=D // esp = RP
@SP // &esp
M=M+1 // &esp++
@LCL // &lcl[0] // save LCL to the stack
D=M // d = *lcl[0]
@SP // &esp
A=M // *esp
M=D // esp = lcl[0]
@SP // &esp
M=M+1 // &esp++
@ARG // &arg // save ARG to the stack
D=M // d = *arg
@SP // &esp
A=M // *esp
M=D // esp = arg
@SP // &esp
M=M+1 // &esp++
@THIS // &this // save THIS to the stack
D=M // d = *this
@SP // &esp
A=M // *esp
M=D // esp = this
@SP // &esp
M=M+1 // &esp++
@THAT // &that // save THAT to the stack
D=M // d = *that
@SP // &esp
A=M // *esp
M=D // esp = that
@SP // &esp
M=M+1 // &esp++
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@64 // prologue_size
D=A // d = prologue_size
@SP // &esp (&rp)
A=M // *esp (*rp)
M=M+D // rp = rp+prologue_size
@5 // 5+num_locals
D=A // d = 5+num_locals
@SP // &esp
M=M+D // *esp = *esp+(5+num_locals)
@5 // (5+num_locals) // initialize ARG segment for callee
D=A // d = (5+num_locals)
@SP // &esp
D=M-D // d = *esp-(5+num_locals) (*RP) 
@1 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@0 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Main.fibonacci // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// label WHILE
(sys.WHILE) // label WHILE

// goto WHILE // loops infinitely
@sys.WHILE // goto WHILE // loops infinitely
0;JMP // unconditional jump

// function Main.fibonacci 0
(Main.fibonacci) // function Main.fibonacci 0

// push argument 0
@ARG // push argument 0 // function Main.fibonacci 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// lt // checks if n<2
@SP // &esp // lt // checks if n<2
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_2
D;JLT
// JLT_FALSE_2
@0
D=A // d = false
@JLT_END_2
0;JMP
(JLT_TRUE_2)
@0
D=!A // d = -1 (true)
(JLT_END_2)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@main.IF_TRUE
D;JNE // jump if not zero

// goto IF_FALSE
@main.IF_FALSE // goto IF_FALSE
0;JMP // unconditional jump

// label IF_TRUE // if n<2, return n
(main.IF_TRUE) // label IF_TRUE // if n<2, return n

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

// return

// pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
@ARG // pop argument 0 // return // move result to &arg[0] (soon to be last stack item) (&asm_segment)
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

// label IF_FALSE // if n>=2, returns fib(n-2)+fib(n-1)
(main.IF_FALSE) // label IF_FALSE // if n>=2, returns fib(n-2)+fib(n-1)

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

// push constant 2
@2 // push constant 2 (constant)
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

// call Main.fibonacci 1 // computes fib(n-2)
(main.Main.fibonacci.3) // call Main.fibonacci 1 // computes fib(n-2)
@main.Main.fibonacci.3 // call Main.fibonacci // push RP
D=A // d = RP
@SP // &esp
A=M // *esp
M=D // esp = RP
@SP // &esp
M=M+1 // &esp++
@LCL // &lcl[0] // save LCL to the stack
D=M // d = *lcl[0]
@SP // &esp
A=M // *esp
M=D // esp = lcl[0]
@SP // &esp
M=M+1 // &esp++
@ARG // &arg // save ARG to the stack
D=M // d = *arg
@SP // &esp
A=M // *esp
M=D // esp = arg
@SP // &esp
M=M+1 // &esp++
@THIS // &this // save THIS to the stack
D=M // d = *this
@SP // &esp
A=M // *esp
M=D // esp = this
@SP // &esp
M=M+1 // &esp++
@THAT // &that // save THAT to the stack
D=M // d = *that
@SP // &esp
A=M // *esp
M=D // esp = that
@SP // &esp
M=M+1 // &esp++
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@64 // prologue_size
D=A // d = prologue_size
@SP // &esp (&rp)
A=M // *esp (*rp)
M=M+D // rp = rp+prologue_size
@5 // 5+num_locals
D=A // d = 5+num_locals
@SP // &esp
M=M+D // *esp = *esp+(5+num_locals)
@5 // (5+num_locals) // initialize ARG segment for callee
D=A // d = (5+num_locals)
@SP // &esp
D=M-D // d = *esp-(5+num_locals) (*RP) 
@1 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@0 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Main.fibonacci // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

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

// call Main.fibonacci 1 // computes fib(n-1)
(main.Main.fibonacci.4) // call Main.fibonacci 1 // computes fib(n-1)
@main.Main.fibonacci.4 // call Main.fibonacci // push RP
D=A // d = RP
@SP // &esp
A=M // *esp
M=D // esp = RP
@SP // &esp
M=M+1 // &esp++
@LCL // &lcl[0] // save LCL to the stack
D=M // d = *lcl[0]
@SP // &esp
A=M // *esp
M=D // esp = lcl[0]
@SP // &esp
M=M+1 // &esp++
@ARG // &arg // save ARG to the stack
D=M // d = *arg
@SP // &esp
A=M // *esp
M=D // esp = arg
@SP // &esp
M=M+1 // &esp++
@THIS // &this // save THIS to the stack
D=M // d = *this
@SP // &esp
A=M // *esp
M=D // esp = this
@SP // &esp
M=M+1 // &esp++
@THAT // &that // save THAT to the stack
D=M // d = *that
@SP // &esp
A=M // *esp
M=D // esp = that
@SP // &esp
M=M+1 // &esp++
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@64 // prologue_size
D=A // d = prologue_size
@SP // &esp (&rp)
A=M // *esp (*rp)
M=M+D // rp = rp+prologue_size
@5 // 5+num_locals
D=A // d = 5+num_locals
@SP // &esp
M=M+D // *esp = *esp+(5+num_locals)
@5 // (5+num_locals) // initialize ARG segment for callee
D=A // d = (5+num_locals)
@SP // &esp
D=M-D // d = *esp-(5+num_locals) (*RP) 
@1 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@0 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Main.fibonacci // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// add // returns fib(n-1) + fib(n-2)
@SP // &esp // add // returns fib(n-1) + fib(n-2)
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=D+M // esp = val2 + val1
@SP // &esp
M=M+1 // &esp++

// return

// pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
@ARG // pop argument 0 // return // move result to &arg[0] (soon to be last stack item) (&asm_segment)
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
