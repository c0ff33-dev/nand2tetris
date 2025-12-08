
// function Main.main 1
(Main.main) // function Main.main 1

// push constant 8000
@8000 // push constant 8000 // function Main.main 1 (constant)
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

// push constant 2
@2 // push constant 2 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// call Math.multiply 2
(MathTest\Main.Math.multiply.1) // call Math.multiply 2
@MathTest\Main.Math.multiply.1 // call Math.multiply // push RP
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
@110 // prologue_size
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@5 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Math.multiply // &func (parsed from call <label> <num_args>)
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

// push constant 30
@30 // push constant 30 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
@SP // &esp
M=M+1 // &esp++

// call Math.multiply 2
(MathTest\Main.Math.multiply.3) // call Math.multiply 2
@MathTest\Main.Math.multiply.3 // call Math.multiply // push RP
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
@76 // prologue_size
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@5 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Math.multiply // &func (parsed from call <label> <num_args>)
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

// push constant 2
@2 // push constant 2 (constant)
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

// push constant 100
@100 // push constant 100 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Math.multiply 2
(MathTest\Main.Math.multiply.5) // call Math.multiply 2
@MathTest\Main.Math.multiply.5 // call Math.multiply // push RP
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
@76 // prologue_size
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@5 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Math.multiply // &func (parsed from call <label> <num_args>)
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

// push constant 3
@3 // push constant 3 (constant)
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

// push constant 2
@2 // push constant 2 (constant)
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

// call Math.multiply 2
(MathTest\Main.Math.multiply.7) // call Math.multiply 2
@MathTest\Main.Math.multiply.7 // call Math.multiply // push RP
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
@76 // prologue_size
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@5 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Math.multiply // &func (parsed from call <label> <num_args>)
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

// push constant 4
@4 // push constant 4 (constant)
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

// push constant 3
@3 // push constant 3 (constant)
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

// call Math.multiply 2
(MathTest\Main.Math.multiply.9) // call Math.multiply 2
@MathTest\Main.Math.multiply.9 // call Math.multiply // push RP
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
@76 // prologue_size
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
@2 // parse num_args from call <label> <num_args>
D=D-A // d = rp-num_args (&arg1)
@ARG // &arg
M=D // *arg = &arg1
@5 // (num_locals) // initialize callee LCL (same as SP if none) 
D=A // d = num_locals
@SP // (&esp currently at bottom of stack frame)
D=M-D // d = *esp-num_locals (&lcl[0])
@LCL // &lcl[0]
M=D // &lcl[0] = &lcl[0]
@Math.multiply // &func (parsed from call <label> <num_args>)
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

// push constant 5
@5 // push constant 5 (constant)
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

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
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

// call Math.divide 2
(MathTest\Main.Math.divide.11) // call Math.divide 2
@MathTest\Main.Math.divide.11 // call Math.divide // push RP
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
@Math.divide // &func (parsed from call <label> <num_args>)
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

// push constant 6
@6 // push constant 6 (constant)
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

// push constant 18000
@18000 // push constant 18000 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
@SP // &esp
M=M+1 // &esp++

// push constant 6
@6 // push constant 6 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Math.divide 2
(MathTest\Main.Math.divide.13) // call Math.divide 2
@MathTest\Main.Math.divide.13 // call Math.divide // push RP
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
@Math.divide // &func (parsed from call <label> <num_args>)
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

// push constant 7
@7 // push constant 7 (constant)
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

// push constant 32766
@32766 // push constant 32766 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
@SP // &esp
M=M+1 // &esp++

// call Math.divide 2
(MathTest\Main.Math.divide.15) // call Math.divide 2
@MathTest\Main.Math.divide.15 // call Math.divide // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_16 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_16)
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
@Math.divide // &func (parsed from call <label> <num_args>)
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

// push constant 8
@8 // push constant 8 (constant)
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

// push constant 9
@9 // push constant 9 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Math.sqrt 1
(MathTest\Main.Math.sqrt.17) // call Math.sqrt 1
@MathTest\Main.Math.sqrt.17 // call Math.sqrt // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_18 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_18)
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
@Math.sqrt // &func (parsed from call <label> <num_args>)
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

// push constant 9
@9 // push constant 9 (constant)
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

// push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Math.sqrt 1
(MathTest\Main.Math.sqrt.19) // call Math.sqrt 1
@MathTest\Main.Math.sqrt.19 // call Math.sqrt // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_20 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_20)
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
@Math.sqrt // &func (parsed from call <label> <num_args>)
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

// push constant 10
@10 // push constant 10 (constant)
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

// push constant 345
@345 // push constant 345 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 123
@123 // push constant 123 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Math.min 2
(MathTest\Main.Math.min.21) // call Math.min 2
@MathTest\Main.Math.min.21 // call Math.min // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_22 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_22)
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
@Math.min // &func (parsed from call <label> <num_args>)
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

// push constant 11
@11 // push constant 11 (constant)
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

// push constant 123
@123 // push constant 123 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push constant 345
@345 // push constant 345 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
@SP // &esp
M=M+1 // &esp++

// call Math.max 2
(MathTest\Main.Math.max.23) // call Math.max 2
@MathTest\Main.Math.max.23 // call Math.max // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_24 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_24)
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
@Math.max // &func (parsed from call <label> <num_args>)
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

// push constant 12
@12 // push constant 12 (constant)
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

// push constant 27
@27 // push constant 27 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Math.abs 1
(MathTest\Main.Math.abs.25) // call Math.abs 1
@MathTest\Main.Math.abs.25 // call Math.abs // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_26 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_26)
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
@Math.abs // &func (parsed from call <label> <num_args>)
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

// push constant 13
@13 // push constant 13 (constant)
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

// push constant 32767
@32767 // push constant 32767 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
@SP // &esp
M=M+1 // &esp++

// call Math.abs 1
(MathTest\Main.Math.abs.27) // call Math.abs 1
@MathTest\Main.Math.abs.27 // call Math.abs // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_28 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_28)
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
@Math.abs // &func (parsed from call <label> <num_args>)
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

// function Math.init 1
(Math.init) // function Math.init 1

// push constant 16
@16 // push constant 16 // function Math.init 1 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++
// call Array.new 1
(MathTest\Math.Array.new.29) // call Array.new 1
@MathTest\Math.Array.new.29 // call Array.new // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_30 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_30)
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

// pop static 1
@16 // pop static 1 // static + src segment offset (../projects/12/MathTest\Math.vm)
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

// push constant 16
@16 // push constant 16 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// call Array.new 1
(MathTest\Math.Array.new.31) // call Array.new 1
@MathTest\Math.Array.new.31 // call Array.new // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_32 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_32)
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

// pop static 0
@16 // pop static 0 // static + src segment offset (../projects/12/MathTest\Math.vm)
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

// push constant 0
@0 // push constant 0 (constant)
D=A // d = constant
@SP // &esp
A=M // *esp
M=D // esp = constant
@SP // &esp
M=M+1 // &esp++

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MathTest\Math.vm)
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

// push constant 1
@1 // push constant 1 (constant)
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

// label WHILE_EXP0
(MathTest\Math.WHILE_EXP0) // label WHILE_EXP0

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

// push constant 15
@15 // push constant 15 (constant)
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
@JLT_TRUE_33
D;JLT
// JLT_FALSE_33
@0
D=A // d = false
@JLT_END_33
0;JMP
(JLT_TRUE_33)
@0
D=!A // d = -1 (true)
(JLT_END_33)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
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
@MathTest\Math.WHILE_END0
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

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MathTest\Math.vm)
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

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MathTest\Math.vm)
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

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MathTest\Math.vm)
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

// goto WHILE_EXP0
@MathTest\Math.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(MathTest\Math.WHILE_END0) // label WHILE_END0

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

// function Math.abs 0
(Math.abs) // function Math.abs 0

// push argument 0
@ARG // push argument 0 // function Math.abs 0 (&asm_segment)
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
@JLT_TRUE_34
D;JLT
// JLT_FALSE_34
@0
D=A // d = false
@JLT_END_34
0;JMP
(JLT_TRUE_34)
@0
D=!A // d = -1 (true)
(JLT_END_34)
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
@MathTest\Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@MathTest\Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(MathTest\Math.IF_TRUE0) // label IF_TRUE0

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

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
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

// label IF_FALSE0
(MathTest\Math.IF_FALSE0) // label IF_FALSE0

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

// function Math.multiply 5
(Math.multiply) // function Math.multiply 5

// push argument 0
@ARG // push argument 0 // function Math.multiply 5 (&asm_segment)
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
@JLT_TRUE_35
D;JLT
// JLT_FALSE_35
@0
D=A // d = false
@JLT_END_35
0;JMP
(JLT_TRUE_35)
@0
D=!A // d = -1 (true)
(JLT_END_35)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
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
@JGT_TRUE_36
D;JGT
// JGT_FALSE_36
@0
D=A // d = false
@JGT_END_36
0;JMP
(JGT_TRUE_36)
@0
D=!A // d = -1 (true)
(JGT_END_36)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
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
@JGT_TRUE_37
D;JGT
// JGT_FALSE_37
@0
D=A // d = false
@JGT_END_37
0;JMP
(JGT_TRUE_37)
@0
D=!A // d = -1 (true)
(JGT_END_37)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = gt result
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
@JLT_TRUE_38
D;JLT
// JLT_FALSE_38
@0
D=A // d = false
@JLT_END_38
0;JMP
(JLT_TRUE_38)
@0
D=!A // d = -1 (true)
(JLT_END_38)
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

// call Math.abs 1
(MathTest\Math.Math.abs.39) // call Math.abs 1
@MathTest\Math.Math.abs.39 // call Math.abs // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_40 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_40)
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
@Math.abs // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

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

// call Math.abs 1
(MathTest\Math.Math.abs.41) // call Math.abs 1
@MathTest\Math.Math.abs.41 // call Math.abs // push RP
D=A // d = RP
@R13
M=D // r13 = RP
@MICROCODE_CALL_MIDPOINT_42 // save to r14
D=A // d = &midpoint
@R14 // &r14
M=D // r14 = &midpoint
@R13 // &rp // restore RP
D=M // d = *rp
@MICROCODE_CALL
0;JMP
(MICROCODE_CALL_MIDPOINT_42)
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
@Math.abs // &func (parsed from call <label> <num_args>)
0;JMP // *func // jump to function (call target)

// pop argument 1
@ARG // pop argument 1 (&asm_segment)
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
A=M // *esp
M=D // esp = *(asm_segment+offset)
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

// lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_43
D;JLT
// JLT_FALSE_43
@0
D=A // d = false
@JLT_END_43
0;JMP
(JLT_TRUE_43)
@0
D=!A // d = -1 (true)
(JLT_END_43)
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
@MathTest\Math.IF_TRUE0
D;JNE // jump if not zero

// goto IF_FALSE0
@MathTest\Math.IF_FALSE0 // goto IF_FALSE0
0;JMP // unconditional jump

// label IF_TRUE0
(MathTest\Math.IF_TRUE0) // label IF_TRUE0

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

// pop argument 1
@ARG // pop argument 1 (&asm_segment)
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
(MathTest\Math.IF_FALSE0) // label IF_FALSE0

// label WHILE_EXP0
(MathTest\Math.WHILE_EXP0) // label WHILE_EXP0

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

// lt
@SP // &esp // lt
M=M-1 // &esp-- (&val2)
A=M // *val2
D=M // d = val2
@SP // &esp (&val2)
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
D=M-D // d = val1 - val2
@JLT_TRUE_44
D;JLT
// JLT_FALSE_44
@0
D=A // d = false
@JLT_END_44
0;JMP
(JLT_TRUE_44)
@0
D=!A // d = -1 (true)
(JLT_END_44)
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = lt result
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
@MathTest\Math.WHILE_END0
D;JNE // jump if not zero

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

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MathTest\Math.vm)
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
@EQ_TRUE_45
D;JEQ // jump if true
// EQ_FALSE_45
@0 // false
D=A // d = false
@EQ_END_45
0;JMP // unconditional jump
(EQ_TRUE_45)
@0 // 0
D=!A // d = -1 (true)
(EQ_END_45) // save eq result to stack
@SP // &esp (&val1)
A=M // *esp (*val1)
M=D // esp = eq result
@SP // &esp
M=M+1 // &esp++

// not
@SP // &esp // not
M=M-1 // &esp-- (&val1)
A=M // esp* (*val1)
M=!M // esp = !val1
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
@MathTest\Math.IF_TRUE1
D;JNE // jump if not zero

// goto IF_FALSE1
@MathTest\Math.IF_FALSE1 // goto IF_FALSE1
0;JMP // unconditional jump

// label IF_TRUE1
(MathTest\Math.IF_TRUE1) // label IF_TRUE1

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

// push static 0
@16 // push static 0 (&asm_segment) // static + src offset (../projects/12/MathTest\Math.vm)
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

// label IF_FALSE1
(MathTest\Math.IF_FALSE1) // label IF_FALSE1

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

// goto WHILE_EXP0
@MathTest\Math.WHILE_EXP0 // goto WHILE_EXP0
0;JMP // unconditional jump

// label WHILE_END0
(MathTest\Math.WHILE_END0) // label WHILE_END0

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

// if-goto IF_TRUE2
// compare val (if-goto conditional) with 0
@0 // if-goto IF_TRUE2
D=A // d = 0
@SP // &esp // compare val to 0
M=M-1 // &esp-- (&val)
A=M // *esp (*val)
D=M-D // d = val - 0 // leave esp here (pop equivalent)
@MathTest\Math.IF_TRUE2
D;JNE // jump if not zero

// goto IF_FALSE2
@MathTest\Math.IF_FALSE2 // goto IF_FALSE2
0;JMP // unconditional jump

// label IF_TRUE2
(MathTest\Math.IF_TRUE2) // label IF_TRUE2

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

// neg
@SP // &esp // neg
M=M-1 // &esp-- (&val1)
A=M // *esp (*val1)
M=-M // esp = -val1
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

// label IF_FALSE2
(MathTest\Math.IF_FALSE2) // label IF_FALSE2

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

// function Math.divide 0
(Math.divide) // function Math.divide 0

// push constant 0
@0 // push constant 0 // function Math.divide 0 (constant)
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

// function Math.sqrt 0
(Math.sqrt) // function Math.sqrt 0

// push constant 0
@0 // push constant 0 // function Math.sqrt 0 (constant)
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

// function Math.max 0
(Math.max) // function Math.max 0

// push constant 0
@0 // push constant 0 // function Math.max 0 (constant)
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

// function Math.min 0
(Math.min) // function Math.min 0

// push constant 0
@0 // push constant 0 // function Math.min 0 (constant)
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
