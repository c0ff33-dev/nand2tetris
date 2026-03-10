# Session handoff context

## User goal

Debug a regression in the PortMaster/Knulli/Batocera Pong package for RG35XX Plus class devices.

The user provided this known-good reference point:

- Working commit for the older non-runtime / non-accelerated version: `6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16`
- Reference implementation repo: `../pygame-ce-runtime`

The user explicitly said not to pursue a rebuild around `pygame-ce`.

## Device symptom reported by user

The most concrete failure log provided in chat was:

```text
successful bind mount from /userdata/roms/ports/Pong/conf to /userdata/system/.config/nand2tetris-pong/Pong
pygame 2.6.1 (SDL 2.28.4, Python 3.12.8)
Hello from the pygame community. https://www.pygame.org/contribute.html
Pong Launcher: Using compiled backend
Pong Launcher: Loaded /userdata/roms/ports/Pong/Pong.asm (26809 instructions)
Traceback (most recent call last):
  File "/userdata/roms/ports/Pong/pong.pygame", line 126, in <module>
    raise SystemExit(main())
                     ^^^^^^
  File "/userdata/roms/ports/Pong/pong_launcher.py", line 265, in main
    pygame.mouse.set_visible(False)
pygame.error: video system not initialized
```

## What was verified locally

- `interpreter/emulator/pong/pong_launcher.py` is effectively unchanged in the relevant area versus `6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16`
- The large drift since that commit is in packaging/runtime/launcher wrapper code, not in the core Pong launcher logic
- `git status --short` was empty before writing this handoff file, so there were no unresolved code edits left in the tree at handoff time

## Relevant diffs versus the known-good commit

Comparing `6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16..HEAD` under `interpreter/emulator/pong` showed the main changes are:

- `interpreter/emulator/pong/Pong.sh` added
- `interpreter/emulator/pong/pong.pygame` rewritten to mount and re-exec into a bundled runtime
- `interpreter/emulator/pong/build_package.py` expanded to bundle runtime and accelerator files
- `interpreter/emulator/pong/runtime_builder/` added

The `pong_launcher.py` diff itself was empty in the areas investigated.

## Important code paths and findings

### 1. Core launcher

File:

- `interpreter/emulator/pong/pong_launcher.py`

Relevant behavior:

- imports `AcceleratedEngine` when available
- prints `Pong Launcher: Using compiled backend` when acceleration is active
- does `engine.load(...)`
- then calls `pygame.init()`
- then calls `pygame.mouse.set_visible(False)`
- then later calls `pygame.display.set_mode(...)`

I briefly reapplied the obvious ordering fix of moving `pygame.mouse.set_visible(False)` after `pygame.display.set_mode(...)`, but the user reported it made no difference on device and reverted it.

Takeaway: the ordering issue is real according to Pygame docs, but it did not resolve the device behavior in practice.

### 2. PortMaster shell launcher

File:

- `interpreter/emulator/pong/Pong.sh`

Important details:

- binds config directory into `$HOME/.config/nand2tetris-pong/Pong`
- exports `SDL_GAMECONTROLLERCONFIG`
- exports `SDL_VIDEODRIVER="${SDL_VIDEODRIVER:-mali}"`
- mounts a bundled runtime squashfs if present
- activates the runtime and sets:
  - `NAND2TETRIS_PONG_RUNTIME_ACTIVE=1`
  - `PATH`
  - `PYTHONHOME`
  - `PYTHONPATH`
  - `PYTHONPYCACHEPREFIX`
  - `VIRTUAL_ENV`
- then executes `pong.pygame`

### 3. Python wrapper / re-exec layer

File:

- `interpreter/emulator/pong/pong.pygame`

Important details:

- if runtime is present and not already active, re-execs into `runtime/bin/python`
- can also mount `.squashfs` runtime images itself
- sets `PYTHONHOME`, `PYTHONPATH`, `PYTHONPYCACHEPREFIX`, `VIRTUAL_ENV`
- eventually imports `from pong_launcher import main`

This file is a major behavioral change compared with the known-good commit, where `pong.pygame` was a simple `sys.path` bootstrapper.

### 4. Bundled runtime builder

Files:

- `interpreter/emulator/pong/runtime_builder/build-config`
- `interpreter/emulator/pong/runtime_builder/build-runtime.sh`

Important details:

- `PYTHON_VERSION=3.12.8`
- `PYGAME_VERSION=2.6.1`
- runtime builder installs plain `pygame==${PYGAME_VERSION}`
- runtime builder also builds and stages the accelerator shared object and helper files

This matches the device log line:

```text
pygame 2.6.1 (SDL 2.28.4, Python 3.12.8)
```

## Comparison with `../pygame-ce-runtime`

Useful reference files:

- `../pygame-ce-runtime/example/MyGame.sh`
- `../pygame-ce-runtime/build-runtime.sh`

Useful conclusions from the comparison:

- The reference shell script also exports `SDL_VIDEODRIVER=mali`
- So the `mali` default in `Pong.sh` was copied from the reference and is not a unique invention in this repo
- The reference runtime builds `pygame-ce`, while this repo intentionally switched to plain `pygame`
- The user explicitly does not want the next model to "rebuild this whole thing on pygame-ce"

## Web research summary

The web research was mixed quality, but one point was consistent and probably true:

- `pygame.mouse.set_visible(False)` is normally expected to run after the display subsystem is initialized and after a display mode exists

However, because the user tried the one-line ordering fix and reported "no change", that should not be treated as the main next step anymore.

## Commands that were useful during this session

Known-good comparison:

```sh
git --no-pager diff --stat 6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16..HEAD -- interpreter/emulator/pong
git --no-pager diff 6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16..HEAD -- interpreter/emulator/pong/pong_launcher.py
git --no-pager diff 6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16..HEAD -- interpreter/emulator/pong/pong.pygame
git --no-pager diff 6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16..HEAD -- interpreter/emulator/pong/build_package.py
git --no-pager show 6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16:interpreter/emulator/pong/pong_launcher.py
git --no-pager show 6b7a9fe8b5ff7f6eeec66bb02cb9eeecefd55c16:interpreter/emulator/pong/pong.pygame
```

Reference runtime comparison:

```sh
diff -u /home/veris/src/pygame-ce-runtime/example/MyGame.sh /home/veris/src/nand2tetris/interpreter/emulator/pong/Pong.sh
diff -u /home/veris/src/pygame-ce-runtime/build-runtime.sh /home/veris/src/nand2tetris/interpreter/emulator/pong/runtime_builder/build-runtime.sh
```

Useful searches:

```sh
rg -n "SDL_VIDEODRIVER|NAND2TETRIS_PONG_RUNTIME_ACTIVE|pong_launcher|pong\\.pygame|Pong\\.sh|accelerated_engine|fpga_backend_ext" /home/veris/src/pygame-ce-runtime
rg -n "Using compiled backend|ACCEL_AVAILABLE|AcceleratedEngine|set_visible\\(|display\\.set_mode\\(|SDL_VIDEODRIVER|NAND2TETRIS_PONG_RUNTIME_ACTIVE" /home/veris/src/nand2tetris/interpreter
```

## Final state at handoff

- User reported the one-line `set_visible` reorder had no effect and reverted it
- No code changes from this debugging session remain in the repo, aside from this handoff file
- The problem is still unresolved
