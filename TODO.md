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

## Phase 3: Call Optimization ✅

Replaced the monolithic gen_call (53+ instructions per call site, fragile
prologue_size counter, per-call local init) with a 3-level call architecture.

- [x] 3a. Rewrite gen_call: 3-level call optimization
- [x] 3b. Clean up RP calculation (remove fragile prologue_size)
- [x] 3c. Optimize local init (push constant 0 → M=0/A=A+1 chain in gen_function)

### 3a. Three-level call architecture

**Level 1 — Call site** (4 instr + 1 label):
```asm
@RET_CALL_N      // return address (actual return point, no fixup)
D=A
@CALL_func_nArgs // jump to per-signature block
0;JMP
(RET_CALL_N)     // return lands here
```

**Level 2 — Per-signature block** (10 instr, emitted once per unique func+nArgs):
```asm
(CALL_func_nArgs)
@R13 / M=D          // R13 = retAddr
@func / D=A / @R14 / M=D  // R14 = func addr
@nArgs / D=A        // D = nArgs
@CALL_SUB / 0;JMP
```

**Level 3 — CALL_SUB** (44 instr, emitted once):
Pushes retAddr (from R13), LCL, ARG, THIS, THAT onto stack using `AM=M+1` for
the 4 subsequent pushes. Computes `ARG = SP - nArgs - 5` (nArgs from R15) and
`LCL = SP`. Jumps to function via R14.

### 3b. Return address is a label, not a computation

The old design placed a label at the START of the call code and used
`prologue_size` to adjust the return address forward past all the setup
instructions. This counter had to be manually updated whenever instruction
counts changed — a constant source of bugs.

The new design places `(RET_CALL_N)` at the ACTUAL return point (immediately
after the jump). `@RET_CALL_N / D=A` loads the correct return address directly.
No fixup, no counter, no fragility.

### 3c. Local init moved to gen_function

Previously, gen_call initialized callee locals by emitting `push constant 0`
for each local — at EVERY call site. A function with 5 locals called 10 times
meant 50 × 4 = 200 instructions of local init code.

Now gen_function emits local init once at the function entry point using an
`A=A+1` chain:
```asm
@SP / A=M / M=0 / (A=A+1 / M=0)×(N-1) / D=A+1 / @SP / M=D
```

Cost: 2N+4 instructions emitted once, vs 4N per call site.

### Eliminated: dummy push for 0-arg calls

The old gen_call pushed `constant 9999` for 0-arg calls to create a return
value slot. This is unnecessary: RETURN_SUB saves `retAddr` to R14 before
overwriting `ARG[0]`. When nArgs=0, `ARG` points to the `retAddr` slot, but
the value is already captured. Removing this saves 6 instructions per 0-arg
call site.

### Eliminated: MICROCODE_CALL, prologue_size, local_dict

- `MICROCODE_CALL` (34-instr inline block): replaced by `CALL_SUB` subroutine
- `prologue_size` counter: eliminated entirely
- `local_dict` pre-scan: no longer needed (gen_function reads num_locals from cmd)

### Post-Phase 3 Metrics

| File | Phase 2b | Phase 3 | Δ |
|------|----------|---------|---|
| SimpleAdd | 17 | 17 | 0 |
| BasicTest | 212 | 212 | 0 |
| PointerTest | 127 | 127 | 0 |
| StackTest | 250 | 250 | 0 |
| StaticTest | 94 | 94 | 0 |
| FibonacciElement | 311 | 220 | -91 |
| NestedCall | 484 | 428 | -56 |
| Pong | 46,418 | 33,006 | -13,412 |

Files without function calls (project 07 tests) are unaffected. Pong dropped
29% from Phase 2b — the largest single-phase improvement.

## Phase 4: Push/Pop Segment Optimizations ✅

Specialized push/pop code paths for segments where the target address is known
at compile time (temp, pointer, static) or where small offsets (0, 1) enable
direct dereferencing without address computation.

- [x] 4a. Push temp/pointer/static: direct addressing (9 → 6 instr)
- [x] 4b. Pop temp/pointer/static: direct addressing (13 → 5 instr)
- [x] 4c. Push segment offset 0/1: skip @offset/A=D+A (9 → 7 instr)
- [x] 4d. Pop segment offset 0/1: skip R13 save (13 → 6 instr)

### 4a-b. Direct addressing for temp/pointer/static

For `temp`, `pointer`, and `static` segments, the RAM address is fully
determined at compile time:
- `temp i` → `RAM[5+i]`
- `pointer i` → `RAM[3+i]`
- `static i` → `RAM[16 + file_offset + i]`

Push reduces from 9 to 6 instructions — eliminates `D=A / @offset / A=D+A`:
```asm
@{addr}    // compile-time address
D=M
@SP / AM=M+1 / A=A-1 / M=D
```

Pop reduces from 13 to 5 instructions — eliminates R13 save entirely:
```asm
@SP / AM=M-1 / D=M
@{addr}
M=D
```

### 4c-d. Offset 0/1 for virtual segments

For `local`, `argument`, `this`, `that` with offset 0 or 1, avoid the
`@offset / A=D+A` address computation:

Push offset 0: `@segment / A=M / D=M` (3 instr head vs 5)
Push offset 1: `@segment / A=M+1 / D=M` (3 instr head vs 5)

Pop offset 0: `@SP / AM=M-1 / D=M / @segment / A=M / M=D` (6 instr total)
Pop offset 1: `@SP / AM=M-1 / D=M / @segment / A=M+1 / M=D` (6 instr total)

The `A=M+1` trick works because the Hack ALU can compute `M+1` as a comp value
and store to `A` — reading the segment pointer and incrementing in one
instruction.

### Post-Phase 4 Metrics

| File | Phase 3 | Phase 4 | Δ |
|------|---------|---------|---|
| SimpleAdd | 17 | 17 | 0 |
| BasicTest | 212 | 183 | -29 |
| PointerTest | 127 | 105 | -22 |
| StackTest | 250 | 250 | 0 |
| StaticTest | 94 | 61 | -33 |
| FibonacciElement | 220 | 212 | -8 |
| NestedCall | 428 | 351 | -77 |
| Pong | 33,006 | 26,845 | -6,161 |

### Cumulative Progress (Baseline → Phase 4)

| File | Baseline | Phase 4 | Δ | % |
|------|----------|---------|---|---|
| SimpleAdd | 24 | 17 | -7 | -29% |
| BasicTest | 250 | 183 | -67 | -27% |
| PointerTest | 150 | 105 | -45 | -30% |
| StackTest | 402 | 250 | -152 | -38% |
| StaticTest | 110 | 61 | -49 | -45% |
| FibonacciElement | 398 | 212 | -186 | -47% |
| NestedCall | 600 | 351 | -249 | -42% |
| Pong | 74,222 | 26,845 | -47,377 | -64% |

Pong reduced from 74,222 → 26,845 hack instructions (64% total reduction).
Approaching cadet1620's ~20K stretch goal.
