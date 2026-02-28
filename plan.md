# Implementation Plan — Remaining TODOs

## Summary

8 TODO items found across `interpreter/`. Grouped into logical work items ranging from small cleanups to medium-sized refactors.

When commencing work on this plan create one commit per task after implementation is complete and tests are passing.

---

## 1. Translator: Replace hardcoded VM file list with glob pattern

**File:** `translator.py:671`  
**Current:** A hardcoded list of ~17 known `.vm` filenames is iterated for each directory.  
**Goal:** Use a glob pattern (`*.vm`) to discover files dynamically, with logic to ensure `Sys.vm` is always first (spec requirement) and `*_out.vm` files are excluded.  
**Approach:** `glob.glob(os.path.join(vm_dir, '*.vm'))`, filter out `_out.vm`, sort with `Sys.vm` first.  
**Risk:** Low — ordering only matters for `Sys.vm` being first. Existing tests cover correctness.

## 2. Compiler: Clean up `compile_call` signature (`num_params` / `num_args`)

**File:** `compiler.py:441`  
**Current:** `compile_call` accepts `num_args` as a parameter, but immediately overwrites it (line 453: `num_args = 0`) by recomputing from `sys_func` or `class_dict`. The parameter is dead code.  
**Goal:** Remove the `num_args` parameter from the function signature and all call sites.  
**Approach:** Remove the parameter, update all callers. Grep for `compile_call(` to find call sites.  
**Risk:** Low — parameter is provably unused (overwritten before any read).

## 3. Compiler: Dynamic line counting for strict matches

**File:** `compiler.py:1352`  
**Current:** `strict_matches` is a dict mapping filepath → expected line count (hardcoded). Line counts must be updated manually when course reference files change.  
**Goal:** Dynamically count lines in the reference `.vm` files instead of using hardcoded counts.  
**Approach:** Replace the hardcoded line counts with `sum(1 for line in open(match))` or equivalent at comparison time.

## 4. Assembler: Add FPGA symbols

**File:** `interpreter.py:189`  
**Current:** FPGA I/O symbols (`LED`, `BUT`, `UART_TX`, etc.) are defined only in the interpreter's `address_labels` dict. The assembler (`assembler.py`) has its own `address_labels` dict that lacks these.  
**Goal:** Add the FPGA symbols to the assembler's `address_labels` so `.asm` files referencing them assemble correctly without the interpreter.  
**Approach:** Add the same symbol block to `assembler.py:14`'s dict.

## 5. Interpreter: Use symlinks for OS libraries

**File:** `interpreter.py:462`  
**Current:** Core OS library `.vm` files (Sys, Math, Memory, Screen, etc.) are copied into each project test directory (e.g., `12/SysTest/`).  
**Goal:** Remove the copied `.vm` files on disk and replace them with filesystem symlinks pointing to the canonical source in `projects/12/`.  
**Scope:** Only core OS libs where e.g. `Sys.jack` is linked from `12/SysTest` and similar test directories.  
**Approach:** Identify all duplicate OS lib files across project dirs, delete copies, create relative symlinks to the canonical versions.

## 6. Interpreter: Add breakpoints to CLI args

**File:** `interpreter.py:472`  
**Current:** `breakpoints = []` is hardcoded. The only way to set breakpoints is to edit source.  
**Goal:** Accept breakpoints as CLI arguments (e.g., `--break 42,100` or `--break 42 --break 100`).  
**Approach:** Use `argparse` or manual `sys.argv` parsing to populate the breakpoints list.

## 7. Interpreter: Implement stack display in debug TUI

**File:** `interpreter.py:55`  
**Current:** The debug TUI shows `[TODO]` where the stack panel should be.  
**Goal:** Display the current stack contents (RAM[0..SP-1]) in the Stack panel.  
**Approach:** Read `hw["RAM"][256:hw["RAM"][0]]` (stack segment) and format for rich display.

## 8. Interpreter: Separate interpreter from test harness

**File:** `interpreter.py:648`  
**Current:** `interpreter.py` serves dual roles — it's both the interactive CPU emulator/debugger AND the test orchestration harness.  
**Goal:** Split into two modules: one for the interactive debugger, one for the test runner.  
**Approach:** Extract the test harness logic (compilation, translation, assembly, test comparison) into a separate `runner.py` or `test_runner.py`. Keep the debugger in `interpreter.py`. This is the largest refactor.
