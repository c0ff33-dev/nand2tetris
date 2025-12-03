
// function Sys.init 0
(Sys.init) // function Sys.init 0

// call Memory.init 0
(Sys.Memory.init.1) // call Memory.init 0 // function Sys.init 0

// push constant 9999 // call Memory.init // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Memory.init // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Memory.init.1 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_2 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
(MICROCODE_CALL)
@SP // &esp // save RP to the stack
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
@R14 // &midpoint
A=M // *midpoint
0;JMP // return to dynamic call code
(MICROCODE_CALL_MIDPOINT_2)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@82 // prologue_size
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
@Memory.init // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)
// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Math.init 0
(Sys.Math.init.3) // call Math.init 0

// push constant 9999 // call Math.init // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Math.init // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Math.init.3 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_4 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_4)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@48 // prologue_size
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
@Math.init // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Screen.init 0
(Sys.Screen.init.5) // call Screen.init 0

// push constant 9999 // call Screen.init // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Screen.init // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Screen.init.5 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_6 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_6)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@48 // prologue_size
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
@Screen.init // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Output.init 0
(Sys.Output.init.7) // call Output.init 0

// push constant 9999 // call Output.init // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Output.init // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Output.init.7 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_8 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_8)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@48 // prologue_size
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
@Output.init // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Keyboard.init 0
(Sys.Keyboard.init.9) // call Keyboard.init 0

// push constant 9999 // call Keyboard.init // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Keyboard.init // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Keyboard.init.9 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_10 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_10)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@48 // prologue_size
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
@Keyboard.init // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Main.main 0
(Sys.Main.main.11) // call Main.main 0

// push constant 9999 // call Main.main // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Main.main // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Main.main.11 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_12 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_12)

// push constant 0 // local(0) init
@0 // push constant 0 // local(0) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0 // local(1) init
@0 // push constant 0 // local(1) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0 // local(2) init
@0 // push constant 0 // local(2) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0 // local(3) init
@0 // push constant 0 // local(3) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0 // local(4) init
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
@83 // prologue_size
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
@Main.main // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Sys.halt 0
(Sys.Sys.halt.13) // call Sys.halt 0

// push constant 9999 // call Sys.halt // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Sys.halt // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Sys.halt.13 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_14 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_14)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@48 // prologue_size
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
@Sys.halt // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Sys.halt 0
(Sys.halt) // function Sys.halt 0

// label WHILE_EXP0
(Sys.WHILE_EXP0) // label WHILE_EXP0

// push constant 0
@0 // push constant 0 // function Sys.halt 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// if-goto WHILE_END0
// compare val (if-goto conditional) with 0
@0 // if-goto WHILE_END0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Sys.WHILE_END0
D;JNE // jump if not zero

// goto WHILE_EXP0
@Sys.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.WHILE_END0) // label WHILE_END0

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Sys.wait 1
(Sys.wait) // function Sys.wait 1

// push argument 0
@ARG // push argument 0 // function Sys.wait 1 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_15
D;JLT
// JLT_FALSE_15
@0
D=A // d = false
@JLT_END_15
0;JMP
(JLT_TRUE_15)
@0
D=!A // d = -1 (true)
(JLT_END_15)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE0
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Sys.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Sys.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Sys.IF_TRUE0) // label IF_TRUE0

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Sys.error 1
(Sys.Sys.error.16) // call Sys.error 1
@Sys.Sys.error.16 // call Sys.error // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_17 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_17)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Sys.error // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// label IF_FALSE0
(Sys.IF_FALSE0) // label IF_FALSE0

// label WHILE_EXP0
(Sys.WHILE_EXP0) // label WHILE_EXP0

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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_18
D;JGT
// JGT_FALSE_18
@0
D=A // d = false
@JGT_END_18
0;JMP
(JGT_TRUE_18)
@0
D=!A // d = -1 (true)
(JGT_END_18)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// if-goto WHILE_END0
// compare val (if-goto conditional) with 0
@0 // if-goto WHILE_END0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Sys.WHILE_END0
D;JNE // jump if not zero

// push constant 50
@50 // push constant 50 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 0
@LCL // pop local 0 (&asm_segment)
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

// label WHILE_EXP1
(Sys.WHILE_EXP1) // label WHILE_EXP1

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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_19
D;JGT
// JGT_FALSE_19
@0
D=A // d = false
@JGT_END_19
0;JMP
(JGT_TRUE_19)
@0
D=!A // d = -1 (true)
(JGT_END_19)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// if-goto WHILE_END1
// compare val (if-goto conditional) with 0
@0 // if-goto WHILE_END1
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Sys.WHILE_END1
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

// pop local 0
@LCL // pop local 0 (&asm_segment)
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

// goto WHILE_EXP1
@Sys.WHILE_EXP1 // goto WHILE_EXP1
0;JMP // unconditional jump

// label WHILE_END1
(Sys.WHILE_END1) // label WHILE_END1

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

// pop argument 0
@ARG // pop argument 0 (&asm_segment)
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

// goto WHILE_EXP0
@Sys.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Sys.WHILE_END0) // label WHILE_END0

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Sys.error 0
(Sys.error) // function Sys.error 0

// push constant 69
@69 // push constant 69 // function Sys.error 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// call Output.printChar 1
(Sys.Output.printChar.20) // call Output.printChar 1
@Sys.Output.printChar.20 // call Output.printChar // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_21 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_21)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Output.printChar // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Output.printChar 1
(Sys.Output.printChar.22) // call Output.printChar 1
@Sys.Output.printChar.22 // call Output.printChar // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_23 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_23)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Output.printChar // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 82
@82 // push constant 82 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Output.printChar 1
(Sys.Output.printChar.24) // call Output.printChar 1
@Sys.Output.printChar.24 // call Output.printChar // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_25 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_25)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Output.printChar // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Output.printInt 1
(Sys.Output.printInt.26) // call Output.printInt 1
@Sys.Output.printInt.26 // call Output.printInt // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_27 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_27)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Output.printInt // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// call Sys.halt 0
(Sys.Sys.halt.28) // call Sys.halt 0

// push constant 9999 // call Sys.halt // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Sys.halt // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@Sys.Sys.halt.28 // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_29 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_29)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@48 // prologue_size
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
@Sys.halt // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Main.main 5
(Main.main) // function Main.main 5

// push constant 8000
@8000 // push constant 8000 // function Main.main 5 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// push constant 333
@333 // push constant 333 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Memory.poke 2
(Main.Memory.poke.30) // call Memory.poke 2
@Main.Memory.poke.30 // call Memory.poke // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_31 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_31)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.poke // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 8000
@8000 // push constant 8000 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Memory.peek 1
(Main.Memory.peek.32) // call Memory.peek 1
@Main.Memory.peek.32 // call Memory.peek // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_33 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_33)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.peek // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop local 0
@LCL // pop local 0 (&asm_segment)
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

// push constant 8001
@8001 // push constant 8001 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// call Memory.poke 2
(Main.Memory.poke.34) // call Memory.poke 2
@Main.Memory.poke.34 // call Memory.poke // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_35 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_35)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.poke // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Array.new 1
(Main.Array.new.36) // call Array.new 1
@Main.Array.new.36 // call Array.new // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_37 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_37)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.new // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop local 2
@LCL // pop local 2 (&asm_segment)
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 2
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

// push constant 222
@222 // push constant 222 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push constant 8002
@8002 // push constant 8002 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push local 2
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// call Memory.poke 2
(Main.Memory.poke.38) // call Memory.poke 2
@Main.Memory.poke.38 // call Memory.poke // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_39 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_39)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.poke // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Array.new 1
(Main.Array.new.40) // call Array.new 1
@Main.Array.new.40 // call Array.new // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_41 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_41)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.new // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // retrieve &dst (segment+offset) and store at R13
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
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 3
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 2
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 100
@100 // push constant 100 (constant)
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push local 3
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

// push local 2
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_42
D;JEQ // jump if true
// EQ_FALSE_42
@0 // false
D=A // d = false
@EQ_END_42
0;JMP // unconditional jump
(EQ_TRUE_42)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_42) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE0
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Main.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Main.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Main.IF_TRUE0) // label IF_TRUE0

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// label IF_FALSE0
(Main.IF_FALSE0) // label IF_FALSE0

// push constant 8003
@8003 // push constant 8003 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push local 3
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push local 1
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

// call Memory.poke 2
(Main.Memory.poke.43) // call Memory.poke 2
@Main.Memory.poke.43 // call Memory.poke // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_44 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_44)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.poke // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// push constant 500
@500 // push constant 500 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Array.new 1
(Main.Array.new.45) // call Array.new 1
@Main.Array.new.45 // call Array.new // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_46 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_46)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.new // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop local 4
@LCL // pop local 4 (&asm_segment)
D=M // d = *asm_segment
@4 // retrieve &dst (segment+offset) and store at R13
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

// push constant 499
@499 // push constant 499 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 4
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 2
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 3
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push local 4
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

// push local 2
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_47
D;JEQ // jump if true
// EQ_FALSE_47
@0 // false
D=A // d = false
@EQ_END_47
0;JMP // unconditional jump
(EQ_TRUE_47)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_47) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE1
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE1
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Main.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Main.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Main.IF_TRUE1) // label IF_TRUE1

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// label IF_FALSE1
(Main.IF_FALSE1) // label IF_FALSE1

// push local 4
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

// push local 3
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_48
D;JEQ // jump if true
// EQ_FALSE_48
@0 // false
D=A // d = false
@EQ_END_48
0;JMP // unconditional jump
(EQ_TRUE_48)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_48) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE2
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE2
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Main.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Main.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Main.IF_TRUE2) // label IF_TRUE2

// push local 1
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

// push constant 10
@10 // push constant 10 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// label IF_FALSE2
(Main.IF_FALSE2) // label IF_FALSE2

// push constant 8004
@8004 // push constant 8004 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 499
@499 // push constant 499 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 4
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push local 1
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

// call Memory.poke 2
(Main.Memory.poke.49) // call Memory.poke 2
@Main.Memory.poke.49 // call Memory.poke // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_50 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_50)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.poke // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push local 2
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

// call Array.dispose 1
(Main.Array.dispose.51) // call Array.dispose 1
@Main.Array.dispose.51 // call Array.dispose // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_52 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_52)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.dispose // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push local 3
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

// call Array.dispose 1
(Main.Array.dispose.53) // call Array.dispose 1
@Main.Array.dispose.53 // call Array.dispose // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_54 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_54)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.dispose // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Array.new 1
(Main.Array.new.55) // call Array.new 1
@Main.Array.new.55 // call Array.new // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_56 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_56)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.new // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop local 3
@LCL // pop local 3 (&asm_segment)
D=M // d = *asm_segment
@3 // retrieve &dst (segment+offset) and store at R13
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
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 3
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

// push constant 499
@499 // push constant 499 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 4
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 90
@90 // push constant 90 (constant)
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push local 3
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

// push local 4
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_57
D;JEQ // jump if true
// EQ_FALSE_57
@0 // false
D=A // d = false
@EQ_END_57
0;JMP // unconditional jump
(EQ_TRUE_57)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_57) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE3
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE3
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Main.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Main.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Main.IF_TRUE3) // label IF_TRUE3

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// label IF_FALSE3
(Main.IF_FALSE3) // label IF_FALSE3

// push constant 8005
@8005 // push constant 8005 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 3
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push local 1
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

// call Memory.poke 2
(Main.Memory.poke.58) // call Memory.poke 2
@Main.Memory.poke.58 // call Memory.poke // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_59 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_59)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Memory.poke // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push local 4
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

// call Array.dispose 1
(Main.Array.dispose.60) // call Array.dispose 1
@Main.Array.dispose.60 // call Array.dispose // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_61 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_61)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.dispose // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push local 3
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

// call Array.dispose 1
(Main.Array.dispose.62) // call Array.dispose 1
@Main.Array.dispose.62 // call Array.dispose // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_63 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_63)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Array.dispose // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Array.new 0
(Array.new) // function Array.new 0

// push argument 0
@ARG // push argument 0 // function Array.new 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_64
D;JGT
// JGT_FALSE_64
@0
D=A // d = false
@JGT_END_64
0;JMP
(JGT_TRUE_64)
@0
D=!A // d = -1 (true)
(JGT_END_64)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE0
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Array.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Array.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Array.IF_TRUE0) // label IF_TRUE0

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Sys.error 1
(Array.Sys.error.65) // call Sys.error 1
@Array.Sys.error.65 // call Sys.error // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_66 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_66)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Sys.error // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// label IF_FALSE0
(Array.IF_FALSE0) // label IF_FALSE0

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

// call Memory.alloc 1
(Array.Memory.alloc.67) // call Memory.alloc 1
@Array.Memory.alloc.67 // call Memory.alloc // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_68 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_68)

// push constant 0 // local(0) init
@0 // push constant 0 // local(0) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0 // local(1) init
@0 // push constant 0 // local(1) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@7 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@55 // prologue_size
D=A // d = prologue_size
@SP // &esp (&rp)
A=M // *esp (*rp)
M=M+D // rp = rp+prologue_size
@7 // 5+num_locals
D=A // d = 5+num_locals
@SP // &esp
M=M+D // *esp = *esp+(5+num_locals)
@7 // (5+num_locals) // initialize ARG segment for callee
D=A // d = (5+num_locals)
@SP // &esp
D=M-D // d = *esp-(5+num_locals) (*RP) 
@1 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@2 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Memory.alloc // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

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

// function Array.dispose 0
(Array.dispose) // function Array.dispose 0

// push argument 0
@ARG // push argument 0 // function Array.dispose 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// pop pointer 0
@3 // pop pointer 0 (&pointer)
D=A // d = &pointer
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

// push pointer 0
@3 // push pointer 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// call Memory.deAlloc 1
(Array.Memory.deAlloc.69) // call Memory.deAlloc 1
@Array.Memory.deAlloc.69 // call Memory.deAlloc // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_70 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_70)

// push constant 0 // local(0) init
@0 // push constant 0 // local(0) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 0 // local(1) init
@0 // push constant 0 // local(1) init (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
@7 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@55 // prologue_size
D=A // d = prologue_size
@SP // &esp (&rp)
A=M // *esp (*rp)
M=M+D // rp = rp+prologue_size
@7 // 5+num_locals
D=A // d = 5+num_locals
@SP // &esp
M=M+D // *esp = *esp+(5+num_locals)
@7 // (5+num_locals) // initialize ARG segment for callee
D=A // d = (5+num_locals)
@SP // &esp
D=M-D // d = *esp-(5+num_locals) (*RP) 
@1 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@2 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Memory.deAlloc // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Memory.init 0
(Memory.init) // function Memory.init 0

// push constant 0
@0 // push constant 0 // function Memory.init 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// pop static 0
@16 // pop static 0 // static + src segment offset (../projects/12/MemoryTest/Memory.vm)
D=A // d = &(static+offset)
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

// push constant 2048
@2048 // push constant 2048 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MemoryTest/Memory.vm)
D=A // d = &asm_segment
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

// push constant 14334
@14334 // push constant 14334 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push constant 2049
@2049 // push constant 2049 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MemoryTest/Memory.vm)
D=A // d = &asm_segment
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

// push constant 2050
@2050 // push constant 2050 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Memory.peek 0
(Memory.peek) // function Memory.peek 0

// push argument 0
@ARG // push argument 0 // function Memory.peek 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MemoryTest/Memory.vm)
D=A // d = &asm_segment
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// function Memory.poke 0
(Memory.poke) // function Memory.poke 0

// push argument 0
@ARG // push argument 0 // function Memory.poke 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MemoryTest/Memory.vm)
D=A // d = &asm_segment
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

// push argument 1
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Memory.alloc 2
(Memory.alloc) // function Memory.alloc 2

// push argument 0
@ARG // push argument 0 // function Memory.alloc 2 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++
// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_71
D;JLT
// JLT_FALSE_71
@0
D=A // d = false
@JLT_END_71
0;JMP
(JLT_TRUE_71)
@0
D=!A // d = -1 (true)
(JLT_END_71)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE0
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Memory.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Memory.IF_TRUE0) // label IF_TRUE0

// push constant 5
@5 // push constant 5 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Sys.error 1
(Memory.Sys.error.72) // call Sys.error 1
@Memory.Sys.error.72 // call Sys.error // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_73 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_73)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Sys.error // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// label IF_FALSE0
(Memory.IF_FALSE0) // label IF_FALSE0

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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_74
D;JEQ // jump if true
// EQ_FALSE_74
@0 // false
D=A // d = false
@EQ_END_74
0;JMP // unconditional jump
(EQ_TRUE_74)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_74) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE1
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE1
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Memory.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Memory.IF_TRUE1) // label IF_TRUE1

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop argument 0
@ARG // pop argument 0 (&asm_segment)
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

// label IF_FALSE1
(Memory.IF_FALSE1) // label IF_FALSE1

// push constant 2048
@2048 // push constant 2048 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop local 0
@LCL // pop local 0 (&asm_segment)
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

// label WHILE_EXP0
(Memory.WHILE_EXP0) // label WHILE_EXP0

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

// push constant 16383
@16383 // push constant 16383 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_75
D;JLT
// JLT_FALSE_75
@0
D=A // d = false
@JLT_END_75
0;JMP
(JLT_TRUE_75)
@0
D=!A // d = -1 (true)
(JLT_END_75)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_76
D;JLT
// JLT_FALSE_76
@0
D=A // d = false
@JLT_END_76
0;JMP
(JLT_TRUE_76)
@0
D=!A // d = -1 (true)
(JLT_END_76)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
@SP // &esp
M=M+1 // &esp++

// and
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

// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
@SP // &esp
M=M+1 // &esp++

// if-goto WHILE_END0
// compare val (if-goto conditional) with 0
@0 // if-goto WHILE_END0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.WHILE_END0
D;JNE // jump if not zero

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_77
D;JEQ // jump if true
// EQ_FALSE_77
@0 // false
D=A // d = false
@EQ_END_77
0;JMP // unconditional jump
(EQ_TRUE_77)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_77) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// push constant 16382
@16382 // push constant 16382 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_78
D;JGT
// JGT_FALSE_78
@0
D=A // d = false
@JGT_END_78
0;JMP
(JGT_TRUE_78)
@0
D=!A // d = -1 (true)
(JGT_END_78)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// or
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_79
D;JEQ // jump if true
// EQ_FALSE_79
@0 // false
D=A // d = false
@EQ_END_79
0;JMP // unconditional jump
(EQ_TRUE_79)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_79) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// or
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

// if-goto IF_TRUE2
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE2
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@Memory.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(Memory.IF_TRUE2) // label IF_TRUE2

// push local 1
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

// pop local 0
@LCL // pop local 0 (&asm_segment)
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

// goto IF_END2
@Memory.IF_END2 // goto IF_END2
0;JMP // unconditional jump

// label IF_FALSE2
(Memory.IF_FALSE2) // label IF_FALSE2

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push local 1
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_80
D;JEQ // jump if true
// EQ_FALSE_80
@0 // false
D=A // d = false
@EQ_END_80
0;JMP // unconditional jump
(EQ_TRUE_80)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_80) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE3
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE3
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE3
D;JNE // jump if not zero

// goto IF_FALSE3
@Memory.IF_FALSE3 // goto IF_FALSE3
0;JMP // unconditional jump

// label IF_TRUE3
(Memory.IF_TRUE3) // label IF_TRUE3

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// goto IF_END3
@Memory.IF_END3 // goto IF_END3
0;JMP // unconditional jump

// label IF_FALSE3
(Memory.IF_FALSE3) // label IF_FALSE3

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// label IF_END3
(Memory.IF_END3) // label IF_END3

// label IF_END2
(Memory.IF_END2) // label IF_END2

// goto WHILE_EXP0
@Memory.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(Memory.WHILE_END0) // label WHILE_END0

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

// push constant 16379
@16379 // push constant 16379 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_81
D;JGT
// JGT_FALSE_81
@0
D=A // d = false
@JGT_END_81
0;JMP
(JGT_TRUE_81)
@0
D=!A // d = -1 (true)
(JGT_END_81)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE4
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE4
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE4
D;JNE // jump if not zero

// goto IF_FALSE4
@Memory.IF_FALSE4 // goto IF_FALSE4
0;JMP // unconditional jump

// label IF_TRUE4
(Memory.IF_TRUE4) // label IF_TRUE4

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Sys.error 1
(Memory.Sys.error.82) // call Sys.error 1
@Memory.Sys.error.82 // call Sys.error // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_83 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_83)
@5 // increment RP (SP-5+num_locals) by prologue_size
D=A // d = 5+num_locals
@SP // &esp
M=M-D // &esp = &esp-(5+num_locals) (&rp)
@41 // prologue_size
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
@Sys.error // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// label IF_FALSE4
(Memory.IF_FALSE4) // label IF_FALSE4

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// gt
@SP // &esp // gt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JGT_TRUE_84
D;JGT
// JGT_FALSE_84
@0
D=A // d = false
@JGT_END_84
0;JMP
(JGT_TRUE_84)
@0
D=!A // d = -1 (true)
(JGT_END_84)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE5
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE5
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE5
D;JNE // jump if not zero

// goto IF_FALSE5
@Memory.IF_FALSE5 // goto IF_FALSE5
0;JMP // unconditional jump

// label IF_TRUE5
(Memory.IF_TRUE5) // label IF_TRUE5

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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_85
D;JEQ // jump if true
// EQ_FALSE_85
@0 // false
D=A // d = false
@EQ_END_85
0;JMP // unconditional jump
(EQ_TRUE_85)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_85) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE6
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE6
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE6
D;JNE // jump if not zero

// goto IF_FALSE6
@Memory.IF_FALSE6 // goto IF_FALSE6
0;JMP // unconditional jump

// label IF_TRUE6
(Memory.IF_TRUE6) // label IF_TRUE6

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 4
@4 // push constant 4 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// goto IF_END6
@Memory.IF_END6 // goto IF_END6
0;JMP // unconditional jump

// label IF_FALSE6
(Memory.IF_FALSE6) // label IF_FALSE6

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

// push constant 3
@3 // push constant 3 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// label IF_END6
(Memory.IF_END6) // label IF_END6

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// label IF_FALSE5
(Memory.IF_FALSE5) // label IF_FALSE5

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// function Memory.deAlloc 2
(Memory.deAlloc) // function Memory.deAlloc 2

// push argument 0
@ARG // push argument 0 // function Memory.deAlloc 2 (&asm_segment)
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

// pop local 0
@LCL // pop local 0 (&asm_segment)
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
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop local 1
@LCL // pop local 1 (&asm_segment)
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_86
D;JEQ // jump if true
// EQ_FALSE_86
@0 // false
D=A // d = false
@EQ_END_86
0;JMP // unconditional jump
(EQ_TRUE_86)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_86) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE0
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE0
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@Memory.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(Memory.IF_TRUE0) // label IF_TRUE0

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// goto IF_END0
@Memory.IF_END0 // goto IF_END0
0;JMP // unconditional jump

// label IF_FALSE0
(Memory.IF_FALSE0) // label IF_FALSE0

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// push local 1
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// eq
@SP // eq // &esp 
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@EQ_TRUE_87
D;JEQ // jump if true
// EQ_FALSE_87
@0 // false
D=A // d = false
@EQ_END_87
0;JMP // unconditional jump
(EQ_TRUE_87)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_87) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// if-goto IF_TRUE1
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE1
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@Memory.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@Memory.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(Memory.IF_TRUE1) // label IF_TRUE1

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// goto IF_END1
@Memory.IF_END1 // goto IF_END1
0;JMP // unconditional jump

// label IF_FALSE1
(Memory.IF_FALSE1) // label IF_FALSE1

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// push constant 1
@1 // push constant 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push local 1
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push that 0
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

// pop temp 0
@5 // pop temp 0 (&temp)
D=A // d = &temp
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

// pop pointer 1
@3 // pop pointer 1 (&pointer)
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

// push temp 0
@5 // push temp 0 (&asm_segment)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
A=M // *esp
M=D // esp = *(asm_segment+offset)
@SP // &esp
M=M+1 // &esp++

// pop that 0
@THAT // pop that 0 (&asm_segment)
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

// label IF_END1
(Memory.IF_END1) // label IF_END1

// label IF_END0
(Memory.IF_END0) // label IF_END0

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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
