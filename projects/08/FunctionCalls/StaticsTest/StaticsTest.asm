@261 // bootstrap: initialize SP as 261
D=A
@0
M=D

// (-3) function Sys.init 0
(Sys.init) // function Sys.init 0

// (-6) push constant 6
@6 // push constant 6 // function Sys.init 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// (-8) push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-11) call Class1.set 2
(sys.Class1.set.1) // call Class1.set 2
@sys.Class1.set.1 // call Class1.set // push RP
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@0 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Class1.set // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// (-13) pop temp 0 // Dumps the return value
@5 // pop temp 0 // Dumps the return value (&asm_segment)
D=A // d = &asm_segment
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

// (-15) push constant 23
@23 // push constant 23 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-17) push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-20) call Class2.set 2
(sys.Class2.set.2) // call Class2.set 2
@sys.Class2.set.2 // call Class2.set // push RP
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@0 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Class2.set // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// (-22) pop temp 0 // Dumps the return value
@5 // pop temp 0 // Dumps the return value (&asm_segment)
D=A // d = &asm_segment
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

// (-25) call Class1.get 0
(sys.Class1.get.3) // call Class1.get 0

// (-27) push constant 9999 // call Class1.get // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Class1.get // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@sys.Class1.get.3 // push RP
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
@71 // prologue_size
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
@Class1.get // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// (-30) call Class2.get 0
(sys.Class2.get.4) // call Class2.get 0

// (-32) push constant 9999 // call Class2.get // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Class2.get // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@sys.Class2.get.4 // push RP
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
@71 // prologue_size
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
@Class2.get // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// (-34) label WHILE
(sys.WHILE) // label WHILE

// (-37) goto WHILE
@sys.WHILE // goto WHILE
0;JMP // unconditional jump

// (-39) function Class1.set 0
(Class1.set) // function Class1.set 0

// (-42) push argument 0
@ARG // push argument 0 // function Class1.set 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// (-44) pop static 0
@16 // pop static 0 // static + src segment offset (..\projects\08\FunctionCalls\StaticsTest\Class1.vm)
D=A // d = &asm_segment
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

// (-46) push argument 1
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

// (-48) pop static 1
@16 // pop static 1 // static + src segment offset (..\projects\08\FunctionCalls\StaticsTest\Class1.vm)
D=A // d = &asm_segment
@1 // retrieve &dst (segment+offset) and store at *esp
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

// (-50) push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-52) return

// (-54) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
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
0;JMP // return (jump to RIP)

// (-56) function Class1.get 0
(Class1.get) // function Class1.get 0

// (-59) push static 0
@16 // push static 0 // function Class1.get 0 (&asm_segment) // static + src offset (..\projects\08\FunctionCalls\StaticsTest\Class1.vm)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// (-61) push static 1
@16 // push static 1 (&asm_segment) // static + src offset (..\projects\08\FunctionCalls\StaticsTest\Class1.vm)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-63) sub
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

// (-65) return

// (-67) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
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
0;JMP // return (jump to RIP)

// (-69) function Class2.set 0
(Class2.set) // function Class2.set 0

// (-72) push argument 0
@ARG // push argument 0 // function Class2.set 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// (-74) pop static 0
@18 // pop static 0 // static + src segment offset (..\projects\08\FunctionCalls\StaticsTest\Class2.vm)
D=A // d = &asm_segment
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

// (-76) push argument 1
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

// (-78) pop static 1
@18 // pop static 1 // static + src segment offset (..\projects\08\FunctionCalls\StaticsTest\Class2.vm)
D=A // d = &asm_segment
@1 // retrieve &dst (segment+offset) and store at *esp
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

// (-80) push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-82) return

// (-84) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
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
0;JMP // return (jump to RIP)

// (-86) function Class2.get 0
(Class2.get) // function Class2.get 0

// (-89) push static 0
@18 // push static 0 // function Class2.get 0 (&asm_segment) // static + src offset (..\projects\08\FunctionCalls\StaticsTest\Class2.vm)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// (-91) push static 1
@18 // push static 1 (&asm_segment) // static + src offset (..\projects\08\FunctionCalls\StaticsTest\Class2.vm)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-93) sub
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

// (-95) return

// (-97) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
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
@SP // &esp // restore esp
M=M+1 // &esp++ (&dst)
A=M // **dst (virtual segment)
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
0;JMP // return (jump to RIP)
