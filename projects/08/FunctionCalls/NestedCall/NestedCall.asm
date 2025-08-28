@261 // bootstrap: initialize SP as 261
D=A
@0
M=D

// (-3) function Sys.init 0
(Sys.init) // function Sys.init 0

// (-6) push constant 4000 // test THIS and THAT context save
@4000 // push constant 4000 // test THIS and THAT context save // function Sys.init 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// (-8) pop pointer 0
@3 // pop pointer 0 (&pointer)
D=A // d = &pointer
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

// (-10) push constant 5000
@5000 // push constant 5000 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-12) pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// (-15) call Sys.main 0
(sys.Sys.main.1) // call Sys.main 0

// (-17) push constant 9999 // call Sys.main // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Sys.main // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@sys.Sys.main.1 // push RP
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

// (-19) push constant 0 // local(0) init
@0 // push constant 0 // local(0) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-21) push constant 0 // local(1) init
@0 // push constant 0 // local(1) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-23) push constant 0 // local(2) init
@0 // push constant 0 // local(2) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-25) push constant 0 // local(3) init
@0 // push constant 0 // local(3) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-27) push constant 0 // local(4) init
@0 // push constant 0 // local(4) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@10 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@106 // prologue_size
D=A // d = prologue_size
@SP // &esp (&rp)
A=M // *esp (*rp)
M=M+D // rp = rp+prologue_size
@10 // 5+num_locals
D=A // d = 5+num_locals
@SP // &esp
M=M+D // *esp = *esp+(5+num_locals)
@10 // (5+num_locals) // initialize ARG segment for callee
D=A // d = (5+num_locals)
@SP // &esp
D=M-D // d = *esp-(5+num_locals) (*RP) 
@1 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@5 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Sys.main // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// (-29) pop temp 1
@5 // pop temp 1 (&temp)
D=A // d = &temp
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

// (-31) label LOOP
(sys.LOOP) // label LOOP

// (-34) goto LOOP
@sys.LOOP // goto LOOP
0;JMP // unconditional jump

// (-36) function Sys.main 5
(Sys.main) // function Sys.main 5

// (-39) push constant 4001
@4001 // push constant 4001 // function Sys.main 5 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// (-41) pop pointer 0
@3 // pop pointer 0 (&pointer)
D=A // d = &pointer
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

// (-43) push constant 5001
@5001 // push constant 5001 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-45) pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// (-47) push constant 200
@200 // push constant 200 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-49) pop local 1
@LCL // pop local 1 (&asm_segment)
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

// (-51) push constant 40
@40 // push constant 40 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-53) pop local 2
@LCL // pop local 2 (&asm_segment)
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

// (-55) push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-57) pop local 3
@LCL // pop local 3 (&asm_segment)
D=M // d = *asm_segment
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

// (-59) push constant 123
@123 // push constant 123 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-62) call Sys.add12 1
(sys.Sys.add12.2) // call Sys.add12 1
@sys.Sys.add12.2 // call Sys.add12 // push RP
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
@Sys.add12 // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function

// (-64) pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// (-66) push local 0
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

// (-68) push local 1
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

// (-70) push local 2
@LCL // push local 2 (&asm_segment)
D=M // d = *asm_segment
@2 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-72) push local 3
@LCL // push local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-74) push local 4
@LCL // push local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// (-76) add
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

// (-78) add
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

// (-80) add
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

// (-82) add
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

// (-84) return

// (-86) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
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

// (-88) function Sys.add12 0
(Sys.add12) // function Sys.add12 0

// (-91) push constant 4002
@4002 // push constant 4002 // function Sys.add12 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// (-93) pop pointer 0
@3 // pop pointer 0 (&pointer)
D=A // d = &pointer
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

// (-95) push constant 5002
@5002 // push constant 5002 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-97) pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// (-99) push argument 0
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

// (-101) push constant 12
@12 // push constant 12 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// (-103) add
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

// (-105) return

// (-107) pop argument 0 // return // move result to &arg[0] (soon to be last stack item)
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
