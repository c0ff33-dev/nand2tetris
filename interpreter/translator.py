"""
VM to HACK Assembly Translator
"""
import os

# TODO: common asm blocks should only be emitted once & reused

class Translator:
    def __init__(self, debug=False):
        self.debug = debug
        self.asm = ""
        self.static_dict = {}
        self.local_dict = {}
        self.offset_list = []
        self.guid = 0
        self.call_generated = False

    # 7-10 instructions per VM command
    def gen_push(self, cmd, vm_segment, asm_segment, value, vm_filepath):
        """
        push a new value onto the stack (either constant or segment+offset)
        also called from within _call()
        """
        self.asm += '\n// %s\n' % (cmd)

        # push an arbitrary value onto the stack
        if vm_segment == "constant":
            self.asm += "@%s // %s (constant)\n" % (value, cmd)
            self.asm += "D=A // d = constant\n"
            self.asm += "@SP // &esp\n"
            self.asm += "A=M // *esp\n" 
            self.asm += "M=D // esp = constant\n" 
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n" 
        else:
            # retrieve a value from segment+offset and push it onto the stack
            if vm_segment == "temp":
                # fixed 8 word segment at RAM[5-12]
                self.asm += "@5 // %s (&asm_segment)\n" % cmd
                self.asm += "D=A // d = &asm_segment\n" 
            elif vm_segment == "pointer":
                # fixed 2 word segment at RAM[3-4] (THIS/THAT)
                self.asm += "@3 // %s (&asm_segment)\n" % cmd 
                self.asm += "D=A // d = &asm_segment\n"
            elif vm_segment == "static":
                # fixed 240 word segment at RAM[16-255] (namespace per file)
                pos = self.static_dict[vm_filepath][0]
                offset = 16 + (self.offset_list[pos])
                self.asm += "@%s // %s (&asm_segment) // static + src offset (%s)\n" % (offset, cmd, vm_filepath)
                self.asm += "D=A // d = &asm_segment\n"
            else:
                # deref the virtual segment (local, argument, this, that)
                self.asm += "@%s // %s (&asm_segment)\n" % (asm_segment, cmd)
                self.asm += "D=M // d = *asm_segment\n"

            self.asm += "@%s // offset\n" % value
            self.asm += "A=D+A // &(asm_segment+offset)\n"
            self.asm += "D=M // d = *(asm_segment+offset)\n" 
            self.asm += "@SP // &esp\n"
            self.asm += "A=M // *esp\n"
            self.asm += "M=D // esp = *(asm_segment+offset)\n"
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n"

    # 13 instructions per VM command
    def gen_pop(self, cmd, vm_segment, asm_segment, value, vm_filepath):
        """
        pop a value from the stack into a segment+offset
        also called from within gen_return()
        """
        self.asm += '\n// %s\n' % (cmd)

        # pop a value from the stack and store it in segment+offset
        # (copy from src to dst and dec esp)

        # resolve segment base address
        if vm_segment == "temp":
            # fixed 8 word segment at RAM[5-12]
            self.asm += "@5 // %s (&temp)\n" % cmd
            self.asm += "D=A // d = &temp\n"
        elif vm_segment == "pointer":
            # fixed 2 word segment at RAM[3-4] (THIS/THAT)
            self.asm += "@3 // %s (&pointer)\n" % cmd
            self.asm += "D=A // d = &pointer\n"
        elif vm_segment == "static":
            # fixed 240 word segment at RAM[16-255] (namespace per file)
            pos = self.static_dict[vm_filepath][0]
            offset = 16 + (self.offset_list[pos])
            self.asm += "@%s // %s // static + src segment offset (%s)\n" % (offset, cmd, vm_filepath)
            self.asm += "D=A // d = &(static+offset)\n"
        else:
            # resolve the base address of the remaining segments (local, argument, this, that)
            self.asm += "@%s // %s (&asm_segment)\n" % (asm_segment, cmd)
            self.asm += "D=M // d = *asm_segment\n"

        self.asm += "@%s // retrieve &dst (segment+offset) and store at R13\n" % value
        self.asm += "D=D+A // d = &dst (asm_segment+offset)\n"
        self.asm += "@R13 // &r13\n"
        self.asm += "M=D // r13 = &dst\n"

        # implicitly free the top slot on the stack
        self.asm += "@SP // &esp // retrieve &src from top of the stack\n"
        self.asm += "M=M-1 // &esp-- (&src)\n"
        self.asm += "A=M // *src\n"
        self.asm += "D=M // d = src\n"

        # the extra level of indirection for local/argument/this/that is already handled above
        self.asm += "@R13 // &r13 // retrieve &dst from r13 and complete the pop\n"
        self.asm += "A=M // *r13 (*dst)\n"
        self.asm += "M=D // dst = src (pop)\n"

    # 10 instructions per VM command
    def gen_add(self, cmd):
        """
        pop 2 values from the stack and push the result of their sum
        """
        self.asm += '\n// %s\n' % (cmd)

        # add two values, push result, dec/inc esp
        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp\n" 
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=D+M // esp = val2 + val1\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # 10 instructions per VM command
    def gen_sub(self, cmd):
        """
        pop 2 values from the stack and push the result of their difference
        """
        self.asm += '\n// %s\n' % (cmd)

        # eval two values, push result, dec esp
        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp (&val2)\n"
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=M-D // esp = val1 - val2\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # ~21 instructions per VM command
    def gen_eq(self, cmd):
        """
        pop 2 values from the stack and push -1 if they are the same or 0 if not
        """
        guid = self.gen_guid()
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s // &esp \n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp (&val2)\n"
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "D=M-D // d = val1 - val2\n"

        self.asm += "@EQ_TRUE_%s\n" % guid
        self.asm += "D;JEQ // jump if true\n"
        self.asm += "// EQ_FALSE_%s\n" % guid
        self.asm += "@0 // false\n"
        self.asm += "D=A // d = false\n"
        self.asm += "@EQ_END_%s\n" % guid
        self.asm += "0;JMP // unconditional jump\n"

        self.asm += "(EQ_TRUE_%s)\n" % guid
        self.asm += "@0 // 0\n"
        self.asm += "D=!A // d = -1 (true)\n"

        self.asm += "(EQ_END_%s) // save eq result to stack\n" % guid
        self.asm += "@SP // &esp (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=D // esp = eq result\n"

        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    def gen_guid(self):
        """
        generate a unique numeric GUID for labels
        """
        self.guid += 1
        return self.guid

    # ~21 instructions per VM command
    def gen_lt(self, cmd):
        """
        pop 2 values from the stack and push -1 if val1 < val2 or 0 if not
        """
        guid = self.gen_guid()
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp (&val2)\n"
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "D=M-D // d = val1 - val2\n"

        self.asm += "@JLT_TRUE_%s\n" % guid
        self.asm += "D;JLT\n"
        self.asm += "// JLT_FALSE_%s\n" % guid
        self.asm += "@0\n"
        self.asm += "D=A // d = false\n"
        self.asm += "@JLT_END_%s\n" % guid
        self.asm += "0;JMP\n"

        self.asm += "(JLT_TRUE_%s)\n" % guid
        self.asm += "@0\n"
        self.asm += "D=!A // d = -1 (true)\n"

        self.asm += "(JLT_END_%s)\n" % guid
        self.asm += "@SP // &esp (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=D // esp = lt result\n"

        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # ~21 instructions per VM command
    def gen_gt(self, cmd):
        """
        pop 2 values from the stack and push -1 if val1 > val2 or 0 if not
        """
        guid = self.gen_guid()
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp (&val2)\n"
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "D=M-D // d = val1 - val2\n"

        self.asm += "@JGT_TRUE_%s\n" % guid
        self.asm += "D;JGT\n"
        self.asm += "// JGT_FALSE_%s\n" % guid
        self.asm += "@0\n"
        self.asm += "D=A // d = false\n"
        self.asm += "@JGT_END_%s\n" % guid
        self.asm += "0;JMP\n"

        self.asm += "(JGT_TRUE_%s)\n" % guid
        self.asm += "@0\n"
        self.asm += "D=!A // d = -1 (true)\n"

        self.asm += "(JGT_END_%s)\n" % guid
        self.asm += "@SP // &esp (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=D // esp = gt result\n"

        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # 10 instructions per VM command
    def gen_and(self, cmd):
        """
        pop 2 values from the stack, push the AND result
        """
        self.asm += '\n// %s\n' % (cmd)

        # eval two values, push result, dec esp
        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *esp (*val2)\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp (&val2)\n"
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp = val1\n"
        self.asm += "M=D&M // esp = val2 & val1\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # 10 instructions per VM command
    def gen_or(self, cmd):
        """
        pop 2 values from the stack, push the OR result
        """
        self.asm += '\n// %s\n' % (cmd)

        # eval two values, push result, dec esp
        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val2)\n"
        self.asm += "A=M // *esp (*val2)\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "@SP // &esp (&val2)\n"
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=M|D // esp = val1 | val2\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # ~6 instructions per VM command
    def gen_not(self, cmd):
        """
        pop a value from the stack, push the NOT result
        """
        self.asm += '\n// %s\n' % (cmd)

        # eval one value, push result
        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // esp* (*val1)\n"
        self.asm += "M=!M // esp = !val1\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # ~6 instructions per VM command
    def gen_neg(self, cmd):
        """
        pop 2 values from the stack, push the MINUS result
        """
        self.asm += '\n// %s\n' % (cmd)

        # eval one value, push result
        self.asm += "@SP // &esp // %s\n" % cmd
        self.asm += "M=M-1 // &esp-- (&val1)\n"
        self.asm += "A=M // *esp (*val1)\n"
        self.asm += "M=-M // esp = -val1\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+1 // &esp++\n"

    # ~0 instructions per VM command
    def gen_label(self, cmd, src):
        """
        translate labels

        label = src.label
        function = src.func.label
        call = src.func.guid
        """
        self.asm += '\n// %s\n' % (cmd)
        asm_label = cmd.split(" ")[1]

        if cmd.startswith('function'):
            self.asm += "(%s) // %s\n" % (asm_label, cmd)
        elif cmd.startswith('call'):
            guid = self.gen_guid()
            self.asm += "(%s.%s.%s) // %s\n" % (src, asm_label, guid, cmd)
            asm_label = "%s.%s.%s" % (src, asm_label, guid)
        elif cmd.startswith('label'):
            self.asm += "(%s.%s) // %s\n" % (src, asm_label, cmd)
            asm_label = "%s.%s" % (src, asm_label)
        else:
            raise RuntimeError("Translator: Unexpected command %s")
        
        return asm_label

    # ~2 instructions per VM command
    def gen_goto(self, cmd, src):
        """
        unconditional jump
        """
        asm_label = cmd.split(" ")[1]
        asm_label = "%s.%s" % (src, asm_label)

        self.asm += '\n// %s\n' % (cmd)
        self.asm += "@%s // %s\n" % (asm_label, cmd)
        self.asm += "0;JMP // unconditional jump\n"

    # ~8 instructions per VM command
    def gen_if_goto(self, cmd, src):
        """
        pop a value off the stack and jump if true
        """
        asm_label = cmd.split(" ")[1]
        asm_label = "%s.%s" % (src, asm_label)

        self.asm += '\n// %s\n' % (cmd)

        self.asm += "// compare val (if-goto conditional) with 0\n"
        self.asm += "@0 // %s\n" % cmd
        self.asm += "D=A // d = 0\n"
        self.asm += "@SP // &esp // compare val to 0\n"
        self.asm += "M=M-1 // &esp-- (&val)\n"
        self.asm += "A=M // *esp (*val)\n"
        self.asm += "D=M-D // d = val - 0 // leave esp here (pop equivalent)\n"

        self.asm += "@%s\n" % asm_label
        self.asm += "D;JNE // jump if not zero\n"

    # TODO: optimize asm by using R13-15 instead of stack for storage (you are here)
    # ~63 instructions per VM command + 7 per local + 7 per arg
    def gen_call(self, cmd, src):
        """
        save the caller stack frame and initialize the callee ARG/LCL segments
        """
        # TODO: this is fragile / maybe there is a better way to set RP?
        prologue_size = 41  # realign stack frame (base = number of instructions in this func, excl push/label())

        num_args = int(cmd.split(" ")[2])
        func_label = cmd.split(" ")[1]  # Module.funcName (entry point)
        asm_label = self.gen_label(cmd, src)

        # stack frame before call = <args>...<SP>
        # stack frame after call = <args>...<RP><LCL><ARG><THIS><THAT><locals>...<SP>

        if num_args == 0:
            # TODO: the init'd return value doesn't matter so this could be inlined to just inc esp by num_locals?
            self.gen_push("push constant 9999 // call %s // if no args, create a space on the stack for "
                          "the return" % func_label, "constant", "constant", 9999, "")
            prologue_size += 7  # 7 instructions per push()
            num_args = 1
            self.asm += "@%s // push RP\n" % asm_label # return point (RP)
        else:
            self.asm += "@%s // call %s // push RP\n" % (asm_label, func_label)
        
        # save RP before A is manipulated again
        self.asm += "D=A // d = RP\n"
        self.asm += "@R13\n"
        self.asm += "M=D // r13 = RP\n"

        # dynamic addresses need to be saved in registers to be ref'd in microcode
        guid = self.gen_guid()
        self.asm += "@MICROCODE_CALL_MIDPOINT_%s // save to r14\n" % guid
        self.asm += "D=A // d = &midpoint\n"
        self.asm += "@R14 // &r14\n"
        self.asm += "M=D // r14 = &midpoint\n"

        self.asm += "@R13 // &rp // restore RP\n"
        self.asm += "D=M // d = *rp\n"

        if self.call_generated:
            self.asm += "@MICROCODE_CALL\n"
            self.asm += "0;JMP\n"
        else:
            # generate the static call microcode (once)
            self.call_generated = True
            prologue_size += 34

            self.asm += "(MICROCODE_CALL)\n"
            self.asm += "@SP // &esp // save RP to the stack\n"
            self.asm += "A=M // *esp\n"
            self.asm += "M=D // esp = RP\n"
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n"

            self.asm += "@LCL // &lcl[0] // save LCL to the stack\n"
            self.asm += "D=M // d = *lcl[0]\n"
            self.asm += "@SP // &esp\n"
            self.asm += "A=M // *esp\n"
            self.asm += "M=D // esp = lcl[0]\n"
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n"

            self.asm += "@ARG // &arg // save ARG to the stack\n"
            self.asm += "D=M // d = *arg\n"
            self.asm += "@SP // &esp\n"
            self.asm += "A=M // *esp\n"
            self.asm += "M=D // esp = arg\n"
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n"

            self.asm += "@THIS // &this // save THIS to the stack\n"
            self.asm += "D=M // d = *this\n"
            self.asm += "@SP // &esp\n"
            self.asm += "A=M // *esp\n"
            self.asm += "M=D // esp = this\n"
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n"

            self.asm += "@THAT // &that // save THAT to the stack\n"
            self.asm += "D=M // d = *that\n"
            self.asm += "@SP // &esp\n"
            self.asm += "A=M // *esp\n"
            self.asm += "M=D // esp = that\n"
            self.asm += "@SP // &esp\n"
            self.asm += "M=M+1 // &esp++\n"

            self.asm += "@R14 // &midpoint\n"
            self.asm += "A=M // *midpoint\n"
            self.asm += "0;JMP // return to dynamic call code\n"

        # TODO: inline remaining code as asm + pull dynamic values from R13-15
        self.asm += "(MICROCODE_CALL_MIDPOINT_%s)\n" % guid
        
        # num_locals can be computed in advance but push() writes to asm
        current_function = cmd.split(" ")[1]
        if current_function in self.local_dict:
            num_locals = self.local_dict[current_function]
            for i in range(0, num_locals):
                # VM spec requires local segment to be initialized to 0
                # JACK spec does not require static/field/local to be initialized, only args
                # the decompiled VM code however definitely assumes local init to 0
                self.gen_push("push constant 0 // local(%s) init" % i, "constant", "constant", 0, "")
                prologue_size += 7  # 7 instructions per push()
        else:
            num_locals = 0

        # TODO: can this be refactored to push the correct value above rather than double handling?
        self.asm += "@%s // increment RP (SP-5+num_locals) by prologue_size\n" % (5+num_locals)
        self.asm += "D=A // d = 5+num_locals\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M-D // &esp = &esp-(5+num_locals) (&rp)\n"
        self.asm += "@%s // prologue_size\n" % prologue_size
        self.asm += "D=A // d = prologue_size\n"
        self.asm += "@SP // &esp (&rp)\n"
        self.asm += "A=M // *esp (*rp)\n"
        self.asm += "M=M+D // rp = rp+prologue_size\n"
        self.asm += "@%s // 5+num_locals\n" % (5+num_locals)
        self.asm += "D=A // d = 5+num_locals\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=M+D // *esp = *esp+(5+num_locals)\n"

        self.asm += "@%s // (5+num_locals) // initialize ARG segment for callee\n" % (5+num_locals)
        self.asm += "D=A // d = (5+num_locals)\n"
        self.asm += "@SP // &esp\n"
        self.asm += "D=M-D // d = *esp-(5+num_locals) (*RP) \n"
        self.asm += "@%s // parse num_args from call <label> <num_args>\n" % num_args
        self.asm += "D=D-A // d = rp-num_args (&arg1)\n"
        self.asm += "@ARG // &arg\n"
        self.asm += "M=D // *arg = &arg1\n"

        self.asm += "@%s // (num_locals) // initialize callee LCL (same as SP if none) \n" % num_locals
        self.asm += "D=A // d = num_locals\n"
        self.asm += "@SP // (&esp currently at bottom of stack frame)\n"
        self.asm += "D=M-D // d = *esp-num_locals (&lcl[0])\n"
        self.asm += "@LCL // &lcl[0]\n"
        self.asm += "M=D // &lcl[0] = &lcl[0]\n"

        self.asm += "@%s // &func (parsed from call <label> <num_args>)\n" % func_label
        self.asm += "0;JMP // *func // jump to function (call target)\n"

    # ~0 instructions per VM command
    def gen_function(self, cmd, src):
        """
        define a function label (entry point)
        """
        _ = self.gen_label(cmd, src)

    # ~40 instructions per VM command + 13 for the pop
    def gen_return(self, cmd, vm_filepath):
        """
        restore caller stack, pop result & jump to RP
        """
        # stack frame before return = <args>...<RP><LCL><ARG><THIS><THAT><locals>...<result><SP>
        # stack frame after return = <result><SP> // ...<RP><LCL><ARG><THIS><THAT><locals>

        self.asm += '\n// %s\n' % (cmd)
        self.gen_pop("pop argument 0 // return // move result to &arg[0] (soon to be last stack "
                     "item)", "argument", "ARG", 0, vm_filepath)

        self.asm += "@ARG // &arg[0] // return: discard the callee stack leaving result in &arg[0] and esp at &arg[1]\n"
        self.asm += "D=M+1 // d = *arg[1]\n"
        self.asm += "@SP // &esp\n"
        self.asm += "M=D // *esp = arg[1]\n"

        self.asm += "@LCL // &lcl[0] // return: restore caller stack (THAT)\n"
        self.asm += "A=M-1 // &that\n"
        self.asm += "D=M // d = *that\n"
        self.asm += "@THAT\n"
        self.asm += "M=D // *that = *that\n"

        self.asm += "@2 // return: restore caller stack (THIS)\n"
        self.asm += "D=A // d=2\n"
        self.asm += "@LCL // &lcl\n"
        self.asm += "A=M-D // &this\n"
        self.asm += "D=M // d = *this\n"
        self.asm += "@THIS\n"
        self.asm += "M=D // *this = *this\n"

        self.asm += "@3 // return: restore caller stack (ARG)\n"
        self.asm += "D=A // d=3\n"
        self.asm += "@LCL // &lcl \n"
        self.asm += "A=M-D // &lcl-3 (&arg)\n"
        self.asm += "D=M // d = *arg\n"
        self.asm += "@ARG\n"
        self.asm += "M=D // *arg = *arg\n"

        self.asm += "@LCL // &lcl // before restoring LCL, save it to R13\n"
        self.asm += "D=M // d = *lcl\n"
        self.asm += "@R13 // &r13\n"
        self.asm += "M=D // *r13 = lcl\n"

        self.asm += "@4 // return: restore caller stack (LCL)\n"
        self.asm += "D=A // d=4\n"
        self.asm += "@LCL // &lcl\n"
        self.asm += "A=M-D // &lcl-4\n"
        self.asm += "D=M // d = *lcl-4\n"
        self.asm += "@LCL\n"
        self.asm += "M=D // *lcl = *lcl-4\n"

        self.asm += "@5 // return: unconditional jump to LCL-5 (RP)\n"
        self.asm += "D=A // d=5\n"
        self.asm += "@R13 // &r13 (old_lcl)\n"
        self.asm += "A=M-D // &old_lcl-5 (&lcl)\n"
        self.asm += "A=M // d = *lcl-5 (*lcl)\n"
        self.asm += "0;JMP // return (jump to RP)\n"

    def parse_asm(self, vm_filepath):
        """
        translate the vm commands into a single asm file
        """
        src = vm_filepath.split(os.path.sep)[-1].split('.vm')[0]

        with open(vm_filepath) as vm_file:
            vm_contents = vm_file.readlines()

        stored_comment = ""
        for cmd in vm_contents:
            # cleanup test file
            cmd = cmd.strip()
            if cmd.startswith(r'//'):
                continue
            elif cmd == "":
                continue

            # parse command
            parsed_cmd = cmd.split(" ")
            if len(parsed_cmd) >= 3:
                vm_segment = parsed_cmd[1]
                value = parsed_cmd[2]
            else:
                vm_segment = None
                value = None

            # map asm to HACK globals
            if vm_segment == "local":
                asm_segment = "LCL"
            elif vm_segment == "constant":
                asm_segment = value
            elif vm_segment == "this":
                asm_segment = "THIS"
            elif vm_segment == "that":
                asm_segment = "THAT"
            elif vm_segment == "argument":
                asm_segment = "ARG"
            elif vm_segment == "temp":
                asm_segment = "TEMP"
            else:
                asm_segment = None

            if self.debug:
                print(cmd, stored_comment)

            # parse commands
            if cmd.startswith("push"):
                self.gen_push(cmd, vm_segment, asm_segment, value, vm_filepath)
            elif cmd.startswith("pop"):
                self.gen_pop(cmd, vm_segment, asm_segment, value, vm_filepath)
            elif cmd.startswith("add"):
                self.gen_add(cmd)
            elif cmd.startswith("sub"):
                self.gen_sub(cmd)
            elif cmd.startswith("eq"):
                self.gen_eq(cmd)
            elif cmd.startswith("lt"):
                self.gen_lt(cmd)
            elif cmd.startswith("gt"):
                self.gen_gt(cmd)
            elif cmd.startswith("and"):
                self.gen_and(cmd)
            elif cmd.startswith("or"):
                self.gen_or(cmd)
            elif cmd.startswith("not"):
                self.gen_not(cmd)
            elif cmd.startswith("neg"):
                self.gen_neg(cmd)
            elif cmd.startswith("label"):
                _ = self.gen_label(cmd, src)
            elif cmd.startswith("goto"):
                self.gen_goto(cmd, src)
            elif cmd.startswith("if-goto"):
                self.gen_if_goto(cmd, src)
            elif cmd.startswith("function"):
                stored_comment = " // %s" % cmd  # function only creates a label which gets parsed out
                self.gen_function(cmd, src)
            elif cmd.startswith("return"):
                self.gen_return(cmd, vm_filepath)
            elif cmd.startswith("call"):
                self.gen_call(cmd, src)
            else:
                raise RuntimeError("Translator: Unexpected command %s")

            if stored_comment:
                # append stored_comment to the next command
                # but not the one that set it or labels as they get parsed out as well
                if not any(cmd.startswith(x) for x in ["function", "label"]):
                    if self.asm[-1] == "\n":
                        self.asm = self.asm[:-1]  # trim the carriage return
                        insert_pos = self.asm.rfind(cmd) + len(cmd)  # seek pos where VM command ends
                        self.asm = self.asm[:insert_pos] + stored_comment + self.asm[insert_pos:]  # insert comment
                        stored_comment = ""
                    else:
                        raise RuntimeError(r"Translator: Could not append stored_comment, ASM did not end with \n")

    def parse_static(self, vm_filepath):
        with open(vm_filepath) as vm_file:
            vm_content = vm_file.readlines()

        for cmd in vm_content:
            # cleanup test file
            cmd = cmd.strip()
            if cmd.startswith(r'//'):
                continue
            elif cmd == "":
                continue

            # parse command
            parsed_cmd = cmd.split(" ")
            value = None
            if len(parsed_cmd) >= 3:
                # exclude commands that don't have a value to parse
                if not any(x in parsed_cmd[0] for x in ["goto", "lt", "label", "add"]):
                    try:
                        value = int(parsed_cmd[2])
                    except ValueError:
                        raise RuntimeError("Translator: No value to parse, add to exclude or fix code: %s" % cmd)

            # update local dictionary
            if cmd.startswith("function"):
                current_function = parsed_cmd[1]
                self.local_dict[current_function] = value

            # update static dictionary
            if cmd.startswith("pop static") or cmd.startswith("push static"):
                if vm_filepath in self.static_dict:
                    if value > self.static_dict[vm_filepath][1]:
                        # if new max > max, update max
                        self.static_dict[vm_filepath][1] = value
                else:
                    # if first occurrence add to dict
                    self.static_dict[vm_filepath] = [len(self.static_dict), value]

        if vm_filepath in self.static_dict:
            self.static_dict[vm_filepath][1] += 1  # inc by 1 as it starts at zero

    # TODO: don't bother translating common libs (i.e. symlinks, when implemented)
    def translate(self, vm_dir, vm_bootstrap_paths=()):
        """
        translate vm files/dirs into asm
        """
        # walk the VM program directories
        vm_dir_filelist = []

        # TODO: this should probably be a glob pattern w/ logic to preserve order where it matters (sys.vm)
        # TODO: _out.vm files not processed (relevant if diverging from course compiler implementation later)
        # spec dictates that Sys.init() is first function to run on boot which then calls Main.main()
        # so functionally anything after sys.vm doesn't matter other than changing compilation order
        vm_filelist = [
            os.path.join(vm_dir, 'Sys.vm'),
            os.path.join(vm_dir, 'Main.vm'),
            os.path.join(vm_dir, vm_dir.split(os.path.sep)[-1]+'.vm'),
            os.path.join(vm_dir, 'Class1.vm'),
            os.path.join(vm_dir, 'Class2.vm'),
            os.path.join(vm_dir, 'Array.vm'),
            os.path.join(vm_dir, 'Ball.vm'),
            os.path.join(vm_dir, 'Bat.vm'),
            os.path.join(vm_dir, 'Keyboard.vm'),
            os.path.join(vm_dir, 'Math.vm'),
            os.path.join(vm_dir, 'Memory.vm'),
            os.path.join(vm_dir, 'Output.vm'),
            os.path.join(vm_dir, 'PongGame.vm'),
            os.path.join(vm_dir, 'Screen.vm'),
            os.path.join(vm_dir, 'SquareGame.vm'),
            os.path.join(vm_dir, 'String.vm'),
        ]

        for vm_filepath in vm_filelist:
            if os.path.exists(vm_filepath):
                self.parse_static(vm_filepath)

        # initialize offset array
        for i in range(0, len(self.static_dict)):
            # TODO: why is this a seperate structure from static_dict?
            self.offset_list.append(-1)

        # drop the size of each offset into array position
        for i, key in enumerate(self.static_dict):
            self.offset_list[i] = self.static_dict[key][1]

        # add each element to the previous one
        new_value = 0
        for i in range(0, len(self.offset_list)):
            old_value = self.offset_list[i]
            self.offset_list[i] = new_value
            new_value = old_value + new_value

        for vm_filepath in vm_filelist:
            if os.path.exists(vm_filepath):
                if self.debug:
                    print(vm_filepath)
                self.parse_asm(vm_filepath)
                vm_dir_filelist.append(vm_filepath)

            # write asm_file
            asm_path = os.path.join(vm_dir, vm_dir.split(os.path.sep)[-1]+'.asm')
            with open(asm_path, 'w') as asm_file:
                if any(bootstrap_path in asm_path for bootstrap_path in vm_bootstrap_paths):
                    # test scripts do not conform to spec (256)
                    bootstrap = "@261 // bootstrap: initialize SP as 261\n"
                    bootstrap += "D=A\n"
                    bootstrap += "@0\n"
                    bootstrap += "M=D\n"
                    asm_file.write(bootstrap+self.asm)
                else:
                    asm_file.write(self.asm)

        print("Translated VM file(s) in directory: %s" % vm_dir)
        for vm_filepath in vm_dir_filelist:
            print("\t%s" % vm_filepath)


if __name__ == "__main__":
    # regular VM programs
    # projects 1-12 accounted for, included in interpreter
    _vm_dirpaths = [
        r'../projects/07/MemoryAccess/BasicTest',
        r'../projects/07/MemoryAccess/PointerTest',
        r'../projects/07/MemoryAccess/StaticTest',
        r'../projects/07/StackArithmetic/SimpleAdd',
        r'../projects/07/StackArithmetic/StackTest',
        r'../projects/08/ProgramFlow/BasicLoop',
        r'../projects/08/ProgramFlow/FibonacciSeries',
        # r'../projects/08/FunctionCalls/FibonacciElement',  # requires non-spec bootstrap (vm_bootstrap_paths)
        # r'../projects/08/FunctionCalls/NestedCall',  # requires non-spec bootstrap (vm_bootstrap_paths)
        r'../projects/08/FunctionCalls/SimpleFunction',
        # r'../projects/08/FunctionCalls/StaticsTest'  # requires non-spec bootstrap (vm_bootstrap_paths)
        r"../projects/09/Average",
        r"../projects/09/Fraction",
        r"../projects/09/HelloWorld",
        r"../projects/09/List",
        r"../projects/09/Square",
        r"../projects/10/ArrayTest",
        # r"../projects/10/ExpressionLessSquare",  # nonsense code that shouldn't compile or run
        r"../projects/10/Square",
        r"../projects/11/Average",
        r"../projects/11/ComplexArrays",
        r"../projects/11/ConvertToBin",
        r"../projects/11/Pong",
        r"../projects/11/Seven",
        r"../projects/11/Square",

        # TODO: Project 12
        r"../projects/12/SysTest",
        r"../projects/12/ArrayTest",
        r"../projects/12/KeyboardTest",
        r"../projects/12/StringTest",
        # r"../projects/12/MemoryTest"
    ]

    # VM programs that require non-spec bootstrap to pass tests
    _vm_bootstrap_paths = [
        r'../projects/08/FunctionCalls/FibonacciElement',
        r'../projects/08/FunctionCalls/NestedCall',
        r'../projects/08/FunctionCalls/StaticsTest'
    ]

    _vm_dirpaths = _vm_dirpaths + _vm_bootstrap_paths

    for _vm_dir in _vm_dirpaths:
        t = Translator(debug=False)
        t.translate(_vm_dir, _vm_bootstrap_paths)