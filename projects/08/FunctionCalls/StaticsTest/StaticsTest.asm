@261 // bootstrap: initialize SP as 261
D=A
@0
M=D

// function Sys.init 0
(Sys.init) // function Sys.init 0

// push constant 6
@6 // push constant 6 // function Sys.init 0 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
// push constant 8
@8 // push constant 8 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Class1.set 2
(Sys.Class1.set.1) // call Class1.set 2
@Sys.Class1.set.1 // call Class1.set // push RP
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
@75 // prologue_size
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
0;JMP // *func // jump to function (call target)

// pop temp 0 // Dumps the return value
@5 // pop temp 0 // Dumps the return value (&temp)
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

// push constant 23
@23 // push constant 23 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// push constant 15
@15 // push constant 15 (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant

// call Class2.set 2
(Sys.Class2.set.3) // call Class2.set 2
@Sys.Class2.set.3 // call Class2.set // push RP
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
@Class2.set // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop temp 0 // Dumps the return value
@5 // pop temp 0 // Dumps the return value (&temp)
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

// call Class1.get 0
(Sys.Class1.get.5) // call Class1.get 0

// push constant 9999 // call Class1.get // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Class1.get // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
@Sys.Class1.get.5 // push RP
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
@47 // prologue_size
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
0;JMP // *func // jump to function (call target)

// call Class2.get 0
(Sys.Class2.get.7) // call Class2.get 0

// push constant 9999 // call Class2.get // if no args, create a space on the stack for the return
@9999 // push constant 9999 // call Class2.get // if no args, create a space on the stack for the return (constant)
D=A // d = constant
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = constant
@Sys.Class2.get.7 // push RP
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
@47 // prologue_size
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
0;JMP // *func // jump to function (call target)

// label WHILE
(Sys.WHILE) // label WHILE

// goto WHILE
@Sys.WHILE // goto WHILE
0;JMP // unconditional jump

// function Class1.set 0
(Class1.set) // function Class1.set 0

// push argument 0
@ARG // push argument 0 // function Class1.set 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)
// pop static 0
@16 // pop static 0 // static + src segment offset (../projects/08/FunctionCalls/StaticsTest/Class1.vm)
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

// pop static 1
@16 // pop static 1 // static + src segment offset (../projects/08/FunctionCalls/StaticsTest/Class1.vm)
D=A // d = &(static+offset)
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

// return
@RETURN_SUB
0;JMP

// function Class1.get 0
(Class1.get) // function Class1.get 0

// push static 0
@16 // push static 0 // function Class1.get 0 (&asm_segment) // static + src offset (../projects/08/FunctionCalls/StaticsTest/Class1.vm)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)
// push static 1
@16 // push static 1 (&asm_segment) // static + src offset (../projects/08/FunctionCalls/StaticsTest/Class1.vm)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// return
@RETURN_SUB
0;JMP

// function Class2.set 0
(Class2.set) // function Class2.set 0

// push argument 0
@ARG // push argument 0 // function Class2.set 0 (&asm_segment)
D=M // d = *asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)
// pop static 0
@18 // pop static 0 // static + src segment offset (../projects/08/FunctionCalls/StaticsTest/Class2.vm)
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

// pop static 1
@18 // pop static 1 // static + src segment offset (../projects/08/FunctionCalls/StaticsTest/Class2.vm)
D=A // d = &(static+offset)
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

// return
@RETURN_SUB
0;JMP

// function Class2.get 0
(Class2.get) // function Class2.get 0

// push static 0
@18 // push static 0 // function Class2.get 0 (&asm_segment) // static + src offset (../projects/08/FunctionCalls/StaticsTest/Class2.vm)
D=A // d = &asm_segment
@0 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)
// push static 1
@18 // push static 1 (&asm_segment) // static + src offset (../projects/08/FunctionCalls/StaticsTest/Class2.vm)
D=A // d = &asm_segment
@1 // offset
A=D+A // &(asm_segment+offset)
D=M // d = *(asm_segment+offset)
@SP // &esp
AM=M+1 // SP++
A=A-1 // A -> slot
M=D // slot = *(asm_segment+offset)

// sub
@SP // sub
AM=M-1 // SP--, A -> val2
D=M // d = val2
A=A-1 // A -> val1
M=M-D // val1 = val1 - val2

// return
@RETURN_SUB
0;JMP

// halt
(END_PROGRAM)
@END_PROGRAM
0;JMP
(RETURN_SUB)
@LCL
D=M
@R13
M=D // R13 = frame
@5
A=D-A
D=M
@R14
M=D // R14 = retAddr
@SP
AM=M-1
D=M
@ARG
A=M
M=D // ARG[0] = result
@ARG
D=M+1
@SP
M=D // SP = ARG + 1
@R13
AM=M-1
D=M
@THAT
M=D
@R13
AM=M-1
D=M
@THIS
M=D
@R13
AM=M-1
D=M
@ARG
M=D
@R13
AM=M-1
D=M
@LCL
M=D
@R14
A=M
0;JMP
