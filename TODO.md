# Translator ASM Optimization TODO

## Baseline

| File | ASM | HACK | cadet1620 Target |
|------|-----|------|------------------|
| SimpleAdd | 30 | 24 | 23 |
| BasicTest | 300 | 250 | 193 |
| PointerTest | 180 | 150 | 109 |
| StackTest | 505 | 402 | 161 |
| StaticTest | 132 | 110 | 67 |
| Pong | 74,073 | 74,222 | ~20,000 |

Goal: Pong under ~57K (FPGA). Stretch: approach cadet1620's ~20K.

## Phase 1: Instruction-Level Optimizations ✅

Targeted the highest-frequency VM commands to reduce per-instruction cost. These
are pure local rewrites — each optimization changes one code generation method
without affecting the rest of the translator.

- [x] 1a. Binary ops (add/sub/and/or): 10 → 5 instr via AM=M-1 trick
- [x] 1b. Unary ops (not/neg): 6 → 3 instr via A=M-1
- [x] 1c. if-goto: 8 → 5 instr, remove pointless @0/D=A/D=M-D
- [x] 1d. Push constant 0/1/-1: 7 → 4 instr via M=0/M=1/M=-1
- [x] 1e. General push tail: 7 → 6 instr via AM=M+1/A=A-1

### 1a. Binary ops — the `AM=M-1` trick

The Hack ALU supports dual-destination writes. `AM=M-1` simultaneously:
- decrements `M[SP]` (the stack pointer value in RAM[0])
- sets the `A` register to that decremented value (pointing at the top-of-stack)

This replaces a 3-instruction sequence (`M=M-1 / A=M`) that required a
redundant re-read of the stack pointer. The second operand is then one address
below (`A=A-1`), so the full binary op becomes:

```asm
@SP
AM=M-1      // SP--, A -> val2
D=M         // D = val2
A=A-1       // A -> val1 (result stays here, no SP++ needed)
M=D+M       // val1 = val2 + val1
```

Baseline used 10 instructions because it decremented SP twice and re-incremented
once. The new pattern decrements SP once (it now points at val1, which becomes
the result slot), eliminating both the second decrement and the final increment.

### 1b. Unary ops — in-place via `A=M-1`

`not` and `neg` operate on the top-of-stack without moving SP. `A=M-1` reads the
stack pointer and sets A to one below it (where the top value lives), avoiding
the old dec/operate/inc pattern:

```asm
@SP
A=M-1       // A -> top of stack (SP unchanged)
M=!M        // operate in place
```

### 1c. if-goto — eliminate dead code

The baseline `if-goto` loaded 0 into D via `@0 / D=A`, then computed `D=M-D`
(subtracting zero — a no-op), before testing D. The value is already in RAM at
`M[SP-1]`; we just load it and jump:

```asm
@SP
AM=M-1      // SP--, A -> val
D=M         // D = val
@label
D;JNE       // jump if nonzero
```

### 1d. Push constant 0/1/-1 — direct assignment

`push constant 0` is the most frequent VM instruction in compiled Jack code
(local variable initialization, boolean false, null pointers). The baseline
always loaded the constant through D (`@val / D=A / M=D`). For the three values
expressible in the Hack ALU's hardwired constants, we assign directly to M:

```asm
@SP
AM=M+1      // SP++
A=A-1       // A -> new slot
M=0         // direct (also M=1, M=-1)
```

This saves 3 instructions per occurrence — significant given `push constant 0`
alone accounts for thousands of instructions in Pong.

### 1e. General push tail — `AM=M+1` / `A=A-1`

The push epilogue (write D to stack, increment SP) was 4 instructions:

```asm
@SP / A=M / M=D / @SP / M=M+1    // old: 5 instr (two @SP reads)
```

`AM=M+1` increments SP and sets A to the new SP value in one instruction. Since
we want to write into the slot *below* the new SP, `A=A-1` backs up one:

```asm
@SP
AM=M+1      // SP++, A = new SP
A=A-1       // A -> slot
M=D         // write value
```

This eliminates the redundant second `@SP` fetch. Applied to both `push constant`
(non-special) and all `push segment` tails.

### Bugfix: assembler label parsing

During Phase 1 testing, inline ASM comments appended to labels (e.g.
`(Label) // comment`) exposed a latent bug in `assembler.py`. The original
parser used `instruction[1:-1]` which stripped the last character of the line
rather than finding the closing paren. Fixed to
`instruction.split(")")[0][1:]` which correctly extracts the label name
regardless of trailing content.

### Post-Phase 1 Metrics

| File | Baseline (hack) | Phase 1 | Δ |
|------|-----------------|---------|---|
| SimpleAdd | 24 | 17 | -7 |
| BasicTest | 250 | 212 | -38 |
| PointerTest | 150 | 127 | -23 |
| StackTest | 402 | 353 | -49 |
| StaticTest | 110 | 94 | -16 |
| FibonacciElement | 398 | 370 | -28 |
| NestedCall | 600 | 542 | -58 |
| Pong | 74,222 | 53,466 | -20,756 |

Phase 1 alone brought Pong from 74K to 53K (28% reduction), already under the
57K FPGA target. The largest contributor was 1d (push constant 0) given its
frequency in compiled output.

## Phase 2: Subroutine-Based Optimizations ✅

Phase 1 reduced per-instruction cost but each VM command was still fully inlined.
Phase 2 identifies repeated multi-instruction patterns and factors them into
shared subroutines — paying a fixed cost once and a small call-stub cost per use.
This required new translator infrastructure: `self.asm_subroutines` (a string
buffer for deferred code) and a halt loop before the subroutines in the output to
prevent fall-through execution.

- [x] 2a. Comparison subroutines (eq/lt/gt): emit once, 4-instr call stub
- [x] 2b. Return subroutine: all returns jump to single instance

### 2a. Comparison subroutines (eq/lt/gt)

The baseline inlined ~21 instructions for each `eq`, `lt`, or `gt` command: pop
two values, compare, branch to true/false, push result, increment SP. Since the
logic is identical except for the jump condition (JEQ/JLT/JGT), each type is
factored into a single shared subroutine (~16 instructions) emitted once at the
end of the output file.

Call sites become 4 instructions + 1 label (labels are free — resolved at
assembly time):

```asm
@RET_EQ_42       // load return address
D=A
@EQ_SUB          // jump to subroutine
0;JMP
(RET_EQ_42)      // return lands here
```

The subroutine uses R15 to stash the return address (no conflict with R13/R14
used by the return subroutine). It performs the comparison, writes -1 (true) or
0 (false) to the result slot, and returns via `@R15 / A=M / 0;JMP`.

The "skip if false" pattern within the subroutine uses the *inverse* jump
condition (JNE for eq, JGE for lt, JLE for gt) to skip past the true-assignment,
which is more compact than the baseline's two-branch structure.

Subroutines are emitted on first use per type (tracked by `eq_sub_emitted` etc.)
and appended to `self.asm_subroutines`, which is written after a halt loop at the
end of the ASM output file.

**Impact**: Dramatic for comparison-heavy code. StackTest (which exercises all
comparison ops) dropped 103 instructions. Pong saved 2,704. Files with no
comparisons (SimpleAdd, BasicTest) saw zero change. FibonacciElement grew by 1
instruction because the subroutine overhead exceeds inline cost when there's only
a single comparison.

### 2b. Return subroutine

Every `return` command in the baseline emitted ~36 instructions inline: save the
frame pointer, extract the return address, pop the result to ARG[0], restore
SP/THAT/THIS/ARG/LCL, and jump back. Since this sequence is identical for every
function return, it's factored into a single `RETURN_SUB` subroutine.

Each `return` call site becomes just 2 instructions:

```asm
@RETURN_SUB
0;JMP
```

The subroutine uses R13 for the frame pointer (walks backward through the saved
segment pointers via `AM=M-1`) and R14 for the return address. These don't
conflict with R15 (used by comparison subroutines) or with `gen_pop`'s use of
R13 (gen_pop is inline-only; by the time RETURN_SUB runs, no gen_pop is in
flight).

**Impact**: Proportional to the number of functions. Pong (with hundreds of
function returns) saved 4,344 instructions. Simple test files with 0-1 returns
saw no change.

### Post-Phase 2a Metrics

| File | Phase 1 | Phase 2a | Δ |
|------|---------|----------|---|
| SimpleAdd | 17 | 17 | 0 |
| BasicTest | 212 | 212 | 0 |
| PointerTest | 127 | 127 | 0 |
| StackTest | 353 | 250 | -103 |
| StaticTest | 94 | 94 | 0 |
| FibonacciElement | 370 | 371 | +1 |
| NestedCall | 542 | 542 | 0 |
| Pong | 53,466 | 50,762 | -2,704 |

### Post-Phase 2b Metrics

| File | Phase 2a | Phase 2b | Δ |
|------|----------|----------|---|
| SimpleAdd | 17 | 17 | 0 |
| BasicTest | 212 | 212 | 0 |
| PointerTest | 127 | 127 | 0 |
| StackTest | 250 | 250 | 0 |
| StaticTest | 94 | 94 | 0 |
| FibonacciElement | 371 | 311 | -60 |
| NestedCall | 542 | 484 | -58 |
| Pong | 50,762 | 46,418 | -4,344 |

### Cumulative Progress (Baseline → Phase 2b)

| File | Baseline | Phase 2b | Δ | % |
|------|----------|----------|---|---|
| SimpleAdd | 24 | 17 | -7 | -29% |
| BasicTest | 250 | 212 | -38 | -15% |
| PointerTest | 150 | 127 | -23 | -15% |
| StackTest | 402 | 250 | -152 | -38% |
| StaticTest | 110 | 94 | -16 | -15% |
| FibonacciElement | 398 | 311 | -87 | -22% |
| NestedCall | 600 | 484 | -116 | -19% |
| Pong | 74,222 | 46,418 | -27,804 | -37% |

Pong reduced from 74,222 → 46,418 hack instructions (37% total reduction).
Well under the 57K FPGA target. Approaching the ~20K stretch goal requires the
call/push/pop optimizations in Phases 3-4.

## Phase 3: Call Optimization (cadet1620 multi-level)

- [ ] 3a. Rewrite gen_call: 3-level call optimization
- [ ] 3b. Clean up RP calculation (remove fragile prologue_size)
- [ ] 3c. Optimize local init (push constant 0 → M=0/SP++)

## Phase 4: Push/Pop Segment Optimizations

- [ ] 4a. Pop segment offset 0: 13 → 5 instr (direct addressing)
- [ ] 4b. Pop segment offset 1: 13 → 6 instr (A=M+1)
- [ ] 4c. Push segment offset 0/1: 9 → 7 instr
- [ ] 4d. Pop temp/pointer: direct addressing (13 → 4 instr)
- [ ] 4e. Push temp/pointer: direct addressing (9 → 6 instr)
