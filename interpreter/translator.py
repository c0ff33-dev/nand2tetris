"""
VM to HACK Assembly Translator
"""
import os
import glob as _glob

class Translator:
    def __init__(self, debug=False):
        self.debug = debug
        self.asm = ""
        self.static_dict = {}
        self.offset_list = []
        self.guid = 0
        self.eq_sub_emitted = False
        self.lt_sub_emitted = False
        self.gt_sub_emitted = False
        self.return_sub_emitted = False
        self.call_sub_emitted = False
        self.call_sigs_emitted = set()
        self.asm_subroutines = ""

    # 4-9 instructions per VM command (depends on segment/offset)
    def gen_push(self, cmd, vm_segment, asm_segment, value, vm_filepath):
        """
        push a new value onto the stack (either constant or segment+offset)
        """
        self.asm += '\n// %s\n' % (cmd)

        # push an arbitrary value onto the stack
        if vm_segment == "constant":
            int_value = int(value)
            if int_value in (0, 1, -1):
                # special case: M=0, M=1, M=-1 avoid loading through D
                self.asm += "@SP // %s\n" % cmd
                self.asm += "AM=M+1 // SP++\n"
                self.asm += "A=A-1 // A -> slot\n"
                self.asm += "M=%s // direct assign\n" % int_value
            else:
                self.asm += "@%s // %s (constant)\n" % (value, cmd)
                self.asm += "D=A // d = constant\n"
                self.asm += "@SP // &esp\n"
                self.asm += "AM=M+1 // SP++\n"
                self.asm += "A=A-1 // A -> slot\n"
                self.asm += "M=D // slot = constant\n"
        elif vm_segment in ("temp", "pointer"):
            # direct addressing: address known at compile time
            base = 5 if vm_segment == "temp" else 3
            addr = base + int(value)
            self.asm += "@%s // %s\n" % (addr, cmd)
            self.asm += "D=M\n"
            self.asm += "@SP\n"
            self.asm += "AM=M+1\n"
            self.asm += "A=A-1\n"
            self.asm += "M=D\n"
        elif vm_segment == "static":
            # direct addressing: address known at compile time
            pos = self.static_dict[vm_filepath][0]
            addr = 16 + self.offset_list[pos] + int(value)
            self.asm += "@%s // %s (static %s)\n" % (addr, cmd, vm_filepath)
            self.asm += "D=M\n"
            self.asm += "@SP\n"
            self.asm += "AM=M+1\n"
            self.asm += "A=A-1\n"
            self.asm += "M=D\n"
        else:
            # virtual segments (local, argument, this, that)
            int_offset = int(value)
            if int_offset == 0:
                self.asm += "@%s // %s\n" % (asm_segment, cmd)
                self.asm += "A=M\n"
                self.asm += "D=M\n"
            elif int_offset == 1:
                self.asm += "@%s // %s\n" % (asm_segment, cmd)
                self.asm += "A=M+1\n"
                self.asm += "D=M\n"
            else:
                self.asm += "@%s // %s (&asm_segment)\n" % (asm_segment, cmd)
                self.asm += "D=M // d = *asm_segment\n"
                self.asm += "@%s // offset\n" % value
                self.asm += "A=D+A // &(asm_segment+offset)\n"
                self.asm += "D=M // d = *(asm_segment+offset)\n"
            # push tail
            self.asm += "@SP\n"
            self.asm += "AM=M+1\n"
            self.asm += "A=A-1\n"
            self.asm += "M=D\n"

    # 5-13 instructions per VM command (depends on segment/offset)
    def gen_pop(self, cmd, vm_segment, asm_segment, value, vm_filepath):
        """
        pop a value from the stack into a segment+offset
        """
        self.asm += '\n// %s\n' % (cmd)

        int_offset = int(value)

        if vm_segment in ("temp", "pointer"):
            # direct addressing: address known at compile time
            base = 5 if vm_segment == "temp" else 3
            addr = base + int_offset
            self.asm += "@SP // %s\n" % cmd
            self.asm += "AM=M-1\n"
            self.asm += "D=M\n"
            self.asm += "@%s\n" % addr
            self.asm += "M=D\n"
        elif vm_segment == "static":
            # direct addressing: address known at compile time
            pos = self.static_dict[vm_filepath][0]
            addr = 16 + self.offset_list[pos] + int_offset
            self.asm += "@SP // %s\n" % cmd
            self.asm += "AM=M-1\n"
            self.asm += "D=M\n"
            self.asm += "@%s\n" % addr
            self.asm += "M=D\n"
        elif int_offset <= 1:
            # virtual segments offset 0/1: direct deref without R13
            self.asm += "@SP // %s\n" % cmd
            self.asm += "AM=M-1\n"
            self.asm += "D=M\n"
            self.asm += "@%s\n" % asm_segment
            if int_offset == 0:
                self.asm += "A=M\n"
            else:
                self.asm += "A=M+1\n"
            self.asm += "M=D\n"
        else:
            # general case: compute address, save to R13, pop, write
            self.asm += "@%s // %s (&asm_segment)\n" % (asm_segment, cmd)
            self.asm += "D=M\n"
            self.asm += "@%s\n" % value
            self.asm += "D=D+A\n"
            self.asm += "@R13\n"
            self.asm += "M=D // R13 = dst addr\n"
            self.asm += "@SP\n"
            self.asm += "M=M-1\n"
            self.asm += "A=M\n"
            self.asm += "D=M\n"
            self.asm += "@R13\n"
            self.asm += "A=M\n"
            self.asm += "M=D\n"

    # 5 instructions per VM command
    def gen_add(self, cmd):
        """
        pop 2 values from the stack and push the result of their sum
        """
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "AM=M-1 // SP--, A -> val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "A=A-1 // A -> val1\n"
        self.asm += "M=D+M // val1 = val2 + val1\n"

    # 5 instructions per VM command
    def gen_sub(self, cmd):
        """
        pop 2 values from the stack and push the result of their difference
        """
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "AM=M-1 // SP--, A -> val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "A=A-1 // A -> val1\n"
        self.asm += "M=M-D // val1 = val1 - val2\n"

    # 4 instructions per VM command (+ 16 instruction subroutine emitted once per type)
    def _gen_comparison_sub(self, label, jump_skip):
        """emit a shared comparison subroutine (once per type), deferred to end of output"""
        self.asm_subroutines += "(%s_SUB)\n" % label
        self.asm_subroutines += "@R15\n"
        self.asm_subroutines += "M=D // save return addr\n"
        self.asm_subroutines += "@SP\n"
        self.asm_subroutines += "AM=M-1 // SP--, A -> val2\n"
        self.asm_subroutines += "D=M // D = val2\n"
        self.asm_subroutines += "A=A-1 // A -> val1 (result slot)\n"
        self.asm_subroutines += "D=M-D // D = val1 - val2\n"
        self.asm_subroutines += "M=0 // assume false\n"
        self.asm_subroutines += "@%s_END\n" % label
        self.asm_subroutines += "D;%s // skip if false\n" % jump_skip
        self.asm_subroutines += "@SP\n"
        self.asm_subroutines += "A=M-1 // A -> result slot\n"
        self.asm_subroutines += "M=-1 // true\n"
        self.asm_subroutines += "(%s_END)\n" % label
        self.asm_subroutines += "@R15\n"
        self.asm_subroutines += "A=M\n"
        self.asm_subroutines += "0;JMP // sub return\n"

    def _gen_comparison_call(self, cmd, label):
        """emit a 4-instruction call to a comparison subroutine"""
        guid = self.gen_guid()
        self.asm += '\n// %s\n' % (cmd)
        self.asm += "@RET_%s_%s\n" % (label, guid)
        self.asm += "D=A\n"
        self.asm += "@%s_SUB\n" % label
        self.asm += "0;JMP\n"
        self.asm += "(RET_%s_%s)\n" % (label, guid)

    def gen_eq(self, cmd):
        """
        pop 2 values from the stack and push -1 if they are the same or 0 if not
        """
        self._gen_comparison_call(cmd, "EQ")
        if not self.eq_sub_emitted:
            self.eq_sub_emitted = True
            self._gen_comparison_sub("EQ", "JNE")

    def gen_guid(self):
        """
        generate a unique numeric GUID for labels
        """
        self.guid += 1
        return self.guid

    def gen_lt(self, cmd):
        """
        pop 2 values from the stack and push -1 if val1 < val2 or 0 if not
        """
        self._gen_comparison_call(cmd, "LT")
        if not self.lt_sub_emitted:
            self.lt_sub_emitted = True
            self._gen_comparison_sub("LT", "JGE")

    def gen_gt(self, cmd):
        """
        pop 2 values from the stack and push -1 if val1 > val2 or 0 if not
        """
        self._gen_comparison_call(cmd, "GT")
        if not self.gt_sub_emitted:
            self.gt_sub_emitted = True
            self._gen_comparison_sub("GT", "JLE")

    # 5 instructions per VM command
    def gen_and(self, cmd):
        """
        pop 2 values from the stack, push the AND result
        """
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "AM=M-1 // SP--, A -> val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "A=A-1 // A -> val1\n"
        self.asm += "M=D&M // val1 = val2 & val1\n"

    # 5 instructions per VM command
    def gen_or(self, cmd):
        """
        pop 2 values from the stack, push the OR result
        """
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "AM=M-1 // SP--, A -> val2\n"
        self.asm += "D=M // d = val2\n"
        self.asm += "A=A-1 // A -> val1\n"
        self.asm += "M=M|D // val1 = val1 | val2\n"

    # 3 instructions per VM command
    def gen_not(self, cmd):
        """
        NOT the top value on the stack in place
        """
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "A=M-1 // A -> top of stack\n"
        self.asm += "M=!M // not in place\n"

    # 3 instructions per VM command
    def gen_neg(self, cmd):
        """
        negate the top value on the stack in place
        """
        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "A=M-1 // A -> top of stack\n"
        self.asm += "M=-M // neg in place\n"

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
            self.asm += "(%s$%s) // %s\n" % (src, asm_label, cmd)
            asm_label = "%s$%s" % (src, asm_label)
        else:
            raise RuntimeError("Translator: Unexpected command %s")
        
        return asm_label

    # ~2 instructions per VM command
    def gen_goto(self, cmd, src):
        """
        unconditional jump
        """
        asm_label = cmd.split(" ")[1]
        asm_label = "%s$%s" % (src, asm_label)

        self.asm += '\n// %s\n' % (cmd)
        self.asm += "@%s // %s\n" % (asm_label, cmd)
        self.asm += "0;JMP // unconditional jump\n"

    # 5 instructions per VM command
    def gen_if_goto(self, cmd, src):
        """
        pop a value off the stack and jump if true
        """
        asm_label = cmd.split(" ")[1]
        asm_label = "%s$%s" % (src, asm_label)

        self.asm += '\n// %s\n' % (cmd)

        self.asm += "@SP // %s\n" % cmd
        self.asm += "AM=M-1 // SP--, A -> val\n"
        self.asm += "D=M // d = val\n"
        self.asm += "@%s\n" % asm_label
        self.asm += "D;JNE // jump if not zero\n"

    # 4 instructions per call site
    def gen_call(self, cmd, src):
        """
        emit a 4-instruction call stub that jumps to a per-signature block
        per-signature block (10 instr) and CALL_SUB (44 instr) emitted once each
        """
        num_args = int(cmd.split(" ")[2])
        func_label = cmd.split(" ")[1]

        # unique return label placed at actual return point (no prologue_size fixup)
        guid = self.gen_guid()
        ret_label = "RET_CALL_%s" % guid
        sig_label = "CALL_%s_%s" % (func_label, num_args)

        # call site: 4 instructions + 1 label
        self.asm += '\n// %s\n' % cmd
        self.asm += "@%s\n" % ret_label
        self.asm += "D=A\n"
        self.asm += "@%s\n" % sig_label
        self.asm += "0;JMP\n"
        self.asm += "(%s)\n" % ret_label

        # per-signature block (once per unique func+nArgs)
        sig_key = (func_label, num_args)
        if sig_key not in self.call_sigs_emitted:
            self.call_sigs_emitted.add(sig_key)
            sig = "(%s)\n" % sig_label
            sig += "@R13\n"
            sig += "M=D // R13 = retAddr\n"
            sig += "@%s\n" % func_label
            sig += "D=A\n"
            sig += "@R14\n"
            sig += "M=D // R14 = func addr\n"
            sig += "@%s\n" % num_args
            sig += "D=A // D = nArgs\n"
            sig += "@CALL_SUB\n"
            sig += "0;JMP\n"
            self.asm_subroutines += sig

        # CALL_SUB (once)
        if not self.call_sub_emitted:
            self.call_sub_emitted = True
            sub = "(CALL_SUB)\n"
            # save nArgs for ARG calculation
            sub += "@R15\n"
            sub += "M=D // R15 = nArgs\n"
            # push retAddr (from R13)
            sub += "@R13\n"
            sub += "D=M\n"
            sub += "@SP\n"
            sub += "A=M\n"
            sub += "M=D // push retAddr\n"
            # push LCL
            sub += "@LCL\n"
            sub += "D=M\n"
            sub += "@SP\n"
            sub += "AM=M+1\n"
            sub += "M=D // push LCL\n"
            # push ARG
            sub += "@ARG\n"
            sub += "D=M\n"
            sub += "@SP\n"
            sub += "AM=M+1\n"
            sub += "M=D // push ARG\n"
            # push THIS
            sub += "@THIS\n"
            sub += "D=M\n"
            sub += "@SP\n"
            sub += "AM=M+1\n"
            sub += "M=D // push THIS\n"
            # push THAT
            sub += "@THAT\n"
            sub += "D=M\n"
            sub += "@SP\n"
            sub += "AM=M+1\n"
            sub += "M=D // push THAT\n"
            # SP++ (final increment for retAddr push)
            sub += "@SP\n"
            sub += "M=M+1\n"
            # ARG = SP - nArgs - 5
            sub += "@R15\n"
            sub += "D=M // D = nArgs\n"
            sub += "@5\n"
            sub += "D=D+A // D = nArgs + 5\n"
            sub += "@SP\n"
            sub += "D=M-D // D = SP - nArgs - 5\n"
            sub += "@ARG\n"
            sub += "M=D // ARG = SP - nArgs - 5\n"
            # LCL = SP
            sub += "@SP\n"
            sub += "D=M\n"
            sub += "@LCL\n"
            sub += "M=D // LCL = SP\n"
            # jump to function (from R14)
            sub += "@R14\n"
            sub += "A=M\n"
            sub += "0;JMP\n"
            self.asm_subroutines += sub

    # ~0 instructions per VM command (+ local init)
    def gen_function(self, cmd, src):
        """
        emit function entry label and initialize local variables to 0
        """
        _ = self.gen_label(cmd, src)
        num_locals = int(cmd.split(" ")[2])
        if num_locals > 0:
            self.asm += "@SP\n"
            self.asm += "A=M\n"
            self.asm += "M=0\n"
            for i in range(1, num_locals):
                self.asm += "A=A+1\n"
                self.asm += "M=0\n"
            self.asm += "D=A+1\n"
            self.asm += "@SP\n"
            self.asm += "M=D\n"

    # ~40 instructions per VM command + 13 for the pop
    def gen_return(self, cmd, vm_filepath):
        """
        restore caller stack, pop result & jump to RP
        first return emits full subroutine; subsequent returns are 2-instr jumps

        stack frame before return = <args>...<RP><LCL><ARG><THIS><THAT><locals>...<result><SP>
        stack frame after return = <result><SP> // ...<RP><LCL><ARG><THIS><THAT><locals>
        """
        self.asm += '\n// %s\n' % (cmd)

        if not self.return_sub_emitted:
            self.return_sub_emitted = True
            sub = "(RETURN_SUB)\n"
            # R13 = frame (old LCL)
            sub += "@LCL\n"
            sub += "D=M\n"
            sub += "@R13\n"
            sub += "M=D // R13 = frame\n"
            # R14 = retAddr = *(frame - 5)
            sub += "@5\n"
            sub += "A=D-A\n"
            sub += "D=M\n"
            sub += "@R14\n"
            sub += "M=D // R14 = retAddr\n"
            # *ARG = pop()
            sub += "@SP\n"
            sub += "AM=M-1\n"
            sub += "D=M\n"
            sub += "@ARG\n"
            sub += "A=M\n"
            sub += "M=D // ARG[0] = result\n"
            # SP = ARG + 1
            sub += "@ARG\n"
            sub += "D=M+1\n"
            sub += "@SP\n"
            sub += "M=D // SP = ARG + 1\n"
            # THAT = *(frame - 1), decrement R13
            sub += "@R13\n"
            sub += "AM=M-1\n"
            sub += "D=M\n"
            sub += "@THAT\n"
            sub += "M=D\n"
            # THIS = *(frame - 2)
            sub += "@R13\n"
            sub += "AM=M-1\n"
            sub += "D=M\n"
            sub += "@THIS\n"
            sub += "M=D\n"
            # ARG = *(frame - 3)
            sub += "@R13\n"
            sub += "AM=M-1\n"
            sub += "D=M\n"
            sub += "@ARG\n"
            sub += "M=D\n"
            # LCL = *(frame - 4)
            sub += "@R13\n"
            sub += "AM=M-1\n"
            sub += "D=M\n"
            sub += "@LCL\n"
            sub += "M=D\n"
            # goto retAddr
            sub += "@R14\n"
            sub += "A=M\n"
            sub += "0;JMP\n"
            self.asm_subroutines += sub

        self.asm += "@RETURN_SUB\n"
        self.asm += "0;JMP\n"

    def parse_asm(self, vm_filepath):
        """
        translate the vm commands into a single asm file
        """
        src = vm_filepath.split(os.path.sep)[-1].split('.vm')[0]
        current_function = src  # fallback; updated on each 'function' command

        with open(vm_filepath) as vm_file:
            vm_contents = vm_file.readlines()

        stored_comment = ""
        for cmd in vm_contents:
            # cleanup test file
            cmd = cmd.strip()
            if cmd.startswith('// ASSERT'):
                # attach ASSERT to last emitted ASM instruction
                # skip trailing return labels and their jumps to land on the call site
                lines = self.asm.rstrip('\n').split('\n')
                target = len(lines) - 1
                if lines[target].strip().startswith('(RET_'):
                    target -= 2  # skip label and 0;JMP to reach @CALL_* or @*_SUB
                lines[target] += ' ' + cmd
                self.asm = '\n'.join(lines) + '\n'
                continue
            elif cmd.startswith(r'//'):
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
                _ = self.gen_label(cmd, current_function)
            elif cmd.startswith("goto"):
                self.gen_goto(cmd, current_function)
            elif cmd.startswith("if-goto"):
                self.gen_if_goto(cmd, current_function)
            elif cmd.startswith("function"):
                current_function = cmd.split(" ")[1]
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
                        raise ValueError("Translator: No value to parse, add to exclude or fix code: %s" % cmd)

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

    def link_check(self, vm_filelist, has_jack, vm_dir):
        """
        pre-translation validation: walk call graph from Main.main to determine
        which files are live, check for undefined functions, and verify that
        all live classes with init() are called from Sys.init()
        """
        project = os.path.basename(vm_dir)
        defined = {}    # func_name -> vm_filepath
        called = {}     # func_name -> set of vm_filepaths that call it
        file_calls = {} # vm_filepath -> set of func_names called from that file
        sys_init_calls = set()

        for vm_filepath in vm_filelist:
            file_calls[vm_filepath] = set()

            with open(vm_filepath) as f:
                current_function = None
                for line in f:
                    line = line.strip()
                    if line.startswith('//') or line == '':
                        continue
                    if line.startswith('function '):
                        func_name = line.split(' ')[1]
                        defined[func_name] = vm_filepath
                        current_function = func_name
                    elif line.startswith('call '):
                        callee = line.split(' ')[1]
                        called.setdefault(callee, set()).add(vm_filepath)
                        file_calls[vm_filepath].add(callee)
                        if current_function == 'Sys.init':
                            sys_init_calls.add(callee)

        # walk call graph from Main.main to find all reachable files
        # Sys.vm is always live (entry point); start by tracing its calls
        live_files = set()
        sys_file = defined.get('Sys.init')
        if sys_file:
            live_files.add(sys_file)

        # seed with files directly called from Sys.init (Main.main, *.init, etc.)
        worklist = set()
        for callee in file_calls.get(sys_file, set()):
            if callee in defined:
                worklist.add(defined[callee])

        # BFS: for each live file, trace all call sites to find more live files
        while worklist:
            vm_filepath = worklist.pop()
            if vm_filepath in live_files:
                continue
            live_files.add(vm_filepath)
            for callee in file_calls.get(vm_filepath, set()):
                if callee in defined:
                    target = defined[callee]
                    if target not in live_files:
                        worklist.add(target)

        # dead files = not reachable from call graph
        dead_files = set()
        if has_jack and len(vm_filelist) > 1:
            for vm_filepath in vm_filelist:
                if vm_filepath not in live_files:
                    name = os.path.basename(vm_filepath)
                    dead_files.add(vm_filepath)
                    print("\tLink warning: %s: file %s has no refs and will be pruned from compilation" % (project, name))

        # check for undefined functions (skip if all callers are dead files)
        all_called = set(called.keys())
        all_defined = set(defined.keys())
        undefined = all_called - all_defined
        if undefined:
            for func in sorted(undefined):
                live_callers = called[func] - dead_files
                if live_callers:
                    callers = ', '.join(os.path.basename(f) for f in sorted(live_callers))
                    raise RuntimeError("\tLink error: %s: undefined function '%s' called from [%s]" % (project, func, callers))

        # check that <Class>.init() is called in Sys.init() for all live files
        if has_jack and 'Sys.init' in defined:
            for func_name, vm_filepath in defined.items():
                if func_name.endswith('.init') and func_name != 'Sys.init':
                    if vm_filepath not in dead_files and func_name not in sys_init_calls:
                        raise RuntimeError("\tLink error: %s: '%s' defines init() but not called in Sys.init()" % (project, func_name))

        return dead_files

    def translate(self, vm_dir, vm_bootstrap_paths=(), quiet=False):
        """
        translate vm files/dirs into asm
        """
        # walk the VM program directories
        vm_dir_filelist = []

        # discover .vm files; Sys.vm first, Main.vm second
        vm_filelist = _glob.glob(os.path.join(vm_dir, '*.vm'))

        def vm_sort_key(path):
            name = os.path.basename(path)
            if name == 'Sys.vm':
                return (0, name)
            elif name == 'Main.vm':
                return (1, name)
            else:
                return (2, name)

        vm_filelist.sort(key=vm_sort_key)

        # detect Jack files in the directory (Jack programs need SP=256 bootstrap)
        has_jack = any(f.endswith('.jack') for f in os.listdir(vm_dir) if os.path.isfile(os.path.join(vm_dir, f)))

        # pre-translation link checks
        dead_files = set()
        if len(vm_filelist) > 1:
            dead_files = self.link_check(vm_filelist, has_jack, vm_dir)

        # cull dead files from translation
        if dead_files:
            vm_filelist = [f for f in vm_filelist if f not in dead_files]

        for vm_filepath in vm_filelist:
            self.parse_static(vm_filepath)

        # initialize offset array
        for i in range(0, len(self.static_dict)):
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
            if self.debug:
                print(vm_filepath)
            self.parse_asm(vm_filepath)
            vm_dir_filelist.append(vm_filepath)

            # write asm_file
            file_base = vm_dir.split(os.path.sep)[-1] or "out"
            asm_path = os.path.join(vm_dir, file_base+'.asm')
            with open(asm_path, 'w') as asm_file:
                # halt loop prevents fall-through into subroutines
                halt = ""
                if self.asm_subroutines:
                    halt = "\n// halt\n(END_PROGRAM)\n@END_PROGRAM\n0;JMP\n"
                if any(bootstrap_path in asm_path for bootstrap_path in vm_bootstrap_paths):
                    # test scripts do not conform to spec (256)
                    bootstrap = "@261 // bootstrap: initialize SP as 261\n"
                    bootstrap += "D=A\n"
                    bootstrap += "@0\n"
                    bootstrap += "M=D\n"
                    asm_file.write(bootstrap+self.asm+halt+self.asm_subroutines)
                elif has_jack:
                    # Jack programs: initialize SP to spec (256)
                    bootstrap = "@256 // bootstrap: initialize SP as 256\n"
                    bootstrap += "D=A\n"
                    bootstrap += "@0\n"
                    bootstrap += "M=D\n"
                    asm_file.write(bootstrap+self.asm+halt+self.asm_subroutines)
                else:
                    asm_file.write(self.asm+halt+self.asm_subroutines)

        if not quiet:
            print("Translated VM file(s) in directory: %s" % vm_dir)
            for vm_filepath in vm_dir_filelist:
                print("\t%s" % vm_filepath)


if __name__ == "__main__":
    import sys

    if len(sys.argv) > 1:
        t = Translator(debug=False)
        t.translate(sys.argv[1], quiet=True)
    else:
        from inputs import vm_dirpaths as _vm_dirpaths, vm_bootstrap_paths as _vm_bootstrap_paths

        _vm_dirpaths = _vm_dirpaths + _vm_bootstrap_paths

        for _vm_dir in _vm_dirpaths:
            t = Translator(debug=False)
            t.translate(_vm_dir, _vm_bootstrap_paths)