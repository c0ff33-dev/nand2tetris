# PLAN: ASSERT Directives for Jack Testing

## Problem

There is no way to write inline assertions in Jack source that are validated during emulated execution. The existing `.tst`/`.cmp` test scripts are external to the Jack source and require the Java toolchain. We want to embed `// ASSERT RAM[addr] = value` comments in Jack source that flow through the entire compilation pipeline and are evaluated at the correct point during interpretation.

## Proposed Syntax

```jack
let r[0] = 2 * 3;           // ASSERT RAM[8000] = 6
let r[1] = r[0] * (-30);    // ASSERT RAM[8001] = -180
```

The ASSERT comment is attached to a `let` statement. It is evaluated immediately after the `let`'s final write instruction executes in the interpreter. This restricts ASSERTs to the end of `let` statements, which simplifies threading them through the pipeline since every `let` compiles to a sequence ending with a deterministic `pop` instruction.

## Pipeline Overview

```
Jack source  →  tokenizer  →  analyzer  →  compiler  →  translator  →  interpreter
               (unchanged)   (unchanged)   (extract     (preserve      (detect &
                                            & emit)      in ASM)        evaluate)
```

Key insight: the **tokenizer and analyzer are untouched**. The compiler already has the original `.jack` filepath, so it can independently scan for ASSERT comments without needing them to survive tokenization.

## Detailed Design

### Stage 1: Extract ASSERTs from Jack Source (compiler.py)

New utility function `extract_asserts(jack_filepath)`:

1. Read the raw Jack file line by line
2. Track current function context (watch for `function`/`method`/`constructor` declarations)
3. Count `let` statements per function (in document order)
4. When a `let` line has `// ASSERT ...`, record `{(func_name, let_index): "ASSERT ..."}`
5. Return the dict

This mirrors how the compiler's AST walk encounters `letStatement` tags in document order — both the pre-scan and compiler see let statements in the same sequence, making the index-based mapping reliable.

Example for MathTest:
```python
{
    ("main", 1): "ASSERT RAM[8000] = 6",    # let r[0] = 2 * 3
    ("main", 2): "ASSERT RAM[8001] = -180",  # let r[1] = r[0] * (-30)
    ...
}
```

### Stage 2: Emit ASSERTs as VM Comments (compiler.py)

In `main()`:
- Call `extract_asserts(filepath)` at the start
- Track a `let_count` per function (increment when `letStatement` tag is encountered in the AST walk)
- After compiling each `let` statement (at the `;` handler, ~line 1181), check if `(func_name, let_count)` has an associated ASSERT
- If so, call `store_pcode(pcode, "// ASSERT RAM[8000] = 6")`

VM output becomes:
```
push constant 2
push constant 3
call Math.multiply 2
pop that 0
// ASSERT RAM[8000] = 6
```

In `_compile()` (~line 1286): preserve `// ASSERT` lines when writing `_out.vm` files:
```python
if line.startswith("// ASSERT"):
    f.write(line)  # preserve ASSERT directives
elif line.startswith("//"):
    continue  # strip other comments as before
```

### Stage 3: Thread ASSERTs Through ASM (translator.py)

In `parse_asm()` (~line 535), when encountering a `// ASSERT ...` line:

Instead of `continue` (skip), attach the ASSERT as an inline comment on the last emitted ASM instruction:

```python
if cmd.startswith('// ASSERT'):
    # Attach to last emitted ASM instruction
    asm_lines = self.asm.rstrip('\n').rsplit('\n', 1)
    self.asm = asm_lines[0] + '\n' + asm_lines[1] + ' ' + cmd + '\n'
    continue
```

ASM output becomes:
```asm
// pop that 0
@SP
AM=M-1
D=M
@THAT
A=M
M=D // pop that 0 // ASSERT RAM[8000] = 6
```

The ASSERT ends up as an inline comment on the `M=D` instruction that writes the value to RAM — exactly the instruction after which the assertion should be checked.

### Stage 4: Evaluate ASSERTs During Execution (interpreter.py)

In `emulate()` ROM loading (~line 216): no changes needed — the existing logic already preserves inline comments in `debug_asm` while stripping them from `raw_asm`.

In the execution loop (~line 247), after each instruction executes:

```python
# Check for ASSERT after instruction execution
if '// ASSERT ' in debug_cmd:
    assert_text = debug_cmd.split('// ASSERT ')[1].strip()
    # Parse: "RAM[8000] = 6"
    match = re.match(r'RAM\[(\d+)\]\s*=\s*(-?\d+)', assert_text)
    if match:
        addr, expected = int(match.group(1)), int(match.group(2))
        actual = hw["RAM"][addr]
        if actual != expected:
            print("ASSERT FAILED: RAM[%d] = %d (expected %d) at PC=%d" % (addr, actual, expected, hw["PC"]-1))
        else:
            assert_pass_count += 1
```

At program end, print summary:
```
ASSERT: 14/14 passed
```

On failure, either halt immediately or continue and report all failures (configurable).

### Assertion Syntax Support

Initial support (minimum viable):
- `RAM[addr] = value` — check RAM at absolute address equals integer value

Future extensions (not in scope):
- `RAM[addr] != value` — inequality
- `D = value` — register checks
- `RAM[addr] > value` — comparison operators

## Files Changed

| File | Change | Size |
|------|--------|------|
| `compiler.py` | Add `extract_asserts()`, track let count, emit ASSERT comments, preserve in output | ~40 lines |
| `translator.py` | Detect `// ASSERT` lines, attach to last ASM instruction | ~8 lines |
| `interpreter.py` | Detect ASSERT in debug comments, parse & evaluate, report results | ~25 lines |
| `projects/12/MathTest/Main.jack` | Add ASSERT comments to existing let statements | ~14 lines modified |

**Not changed**: `tokenizer.py`, `analyzer.py`, `assembler.py`, `tester.py`

## Test Strategy

1. Add `// ASSERT RAM[80xx] = value` to `projects/12/MathTest/Main.jack` (14 let statements with known expected values already documented in comments)
2. Run full pipeline: `python interpreter.py` on MathTest
3. Verify all 14 assertions pass
4. Test a deliberate failure (wrong expected value) to confirm error reporting works
5. Verify existing tests still pass (ASSERTs are no-ops when not present)

## Risks & Mitigations

- **Let statement counting mismatch**: The pre-scan counts `let` in raw text; the compiler counts `letStatement` in AST. Both process in document order within each function, so they match. Mitigation: add a debug log comparing counts.
- **Multi-file classes**: `extract_asserts` only scans the file being compiled, not related files. ASSERTs would only be in test Main.jack files, so this is fine.
- **Strict match tests**: Existing reference `.vm` files don't have ASSERTs, so strict matching is unaffected. Only user-authored test files would have ASSERTs.
- **ASSERT on array let (`let r[0] = ...`)**: These compile to `pop that 0` (not `pop local N`). The ASSERT is position-based (after the `pop`), so it works regardless of the pop target.
