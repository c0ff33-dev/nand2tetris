# ARM Pong runtime build plan

## Problem

Adopt the overall `../pygame-ce-runtime` pattern for `interpreter/emulator/pong`, but switch from `pygame-ce` to `pygame`, keep the package handheld-friendly, and add support for the optional Cython-backed accelerated engine path. The target is an ARM device, so the runtime and accelerator should be built inside an ARM container and then staged as a deployable Pong package.

## Reference findings

- `../pygame-ce-runtime/docker-compose.yml` uses `python:3.12.8-bookworm`, pins `platform: linux/arm64`, bind-mounts the project at `/local`, loads `build-config`, and runs `/local/build-runtime.sh`.
- `../pygame-ce-runtime/build-runtime.sh` installs native SDL and Python build dependencies, creates `/runtime` with `python -m venv --copies`, installs `pygame-ce`, optionally installs extra Python requirements, copies `libpython` plus the Python stdlib into `/runtime`, and emits a SquashFS artifact.
- The example package mounts that SquashFS at launch time, activates the venv, sets `PYTHONHOME` and `PYTHONPATH`, and runs the game with the runtime's Python.
- `interpreter/emulator/pong/build_package.py` currently stages only `pong.pygame`, `pong_launcher.py`, `Pong.asm`, and `engine/{__init__.py,engine.py}`.
- `README.md` already documents that the staged Pong package is pure-Python only and does not include accelerator files.
- `interpreter/emulator/pong/pong_launcher.py` already supports the accelerated path through `engine.accelerated_engine` and still exposes `--no-cython` for explicit fallback.
- The accelerated path depends on `engine/__init__.py`, `engine/engine.py`, `engine/accelerated_engine.py`, `engine/accelerator_common.py`, and a built `engine/fpga_backend_ext*.so` that matches the runtime Python ABI.

## Proposed adaptation

### 1. Add a Pong-specific runtime builder

Create a build area under `interpreter/emulator/pong/` that mirrors the sibling runtime project structure while staying scoped to Pong, for example:

- `interpreter/emulator/pong/runtime_builder/docker-compose.yml`
- `interpreter/emulator/pong/runtime_builder/build-config`
- `interpreter/emulator/pong/runtime_builder/build-runtime.sh`
- `interpreter/emulator/pong/runtime_builder/build/requirements.txt`
- optional hook scripts such as `build/pre-install.sh` and `build/post-install.sh`

Keep generated artifacts under `interpreter/build/` so tracked source stays clean.

### 2. Build a portable ARM64 `pygame` runtime

Adapt the sibling `build-runtime.sh` flow instead of inventing a new one:

1. Start from the same Debian-based Python image and keep `platform: linux/arm64`.
2. Install the native packages needed to build and run regular `pygame`. Start from the sibling dependency list:
   - `build-essential`
   - `git`
   - `rsync`
   - `squashfs-tools`
   - `python3-dev`
   - `libfreetype6-dev`
   - `libportmidi-dev`
   - `libsdl2-dev`
   - `libsdl2-image-dev`
   - `libsdl2-mixer-dev`
   - `libsdl2-ttf-dev`
3. Create `/runtime` with `python -m venv --copies`.
4. Install `pip`, `setuptools`, `wheel`, and `Cython` in the build environment.
5. Install pinned `pygame` and only the extra Python packages the Pong handheld package actually needs.
6. Copy `libpython` and the Python stdlib into `/runtime`.
7. Remove caches and pack `/runtime` into a SquashFS artifact under `interpreter/build/`.

The current Pong launcher intentionally avoids `numpy`, so the runtime should stay `numpy`-free unless a later change makes it necessary.

### 3. Preserve the current Pong staging flow, but teach it about runtimes

Continue using `interpreter/emulator/pong/build_package.py` as the main packager, then extend it so it can stage a runtime-backed package instead of only the pure-Python folder. The staged output should include:

- `pong.pygame`
- `pong_launcher.py`
- `Pong.asm`
- `runtime/<runtime-artifact>.squashfs`
- `engine/__init__.py`
- `engine/engine.py`
- optional accelerator support files when requested

This keeps the current package layout recognizable while allowing the runtime to ship beside the game assets.

### 4. Add a Pong startup script or equivalent runtime bootstrap

Reuse the general startup pattern from `../pygame-ce-runtime/example/MyGame.sh`, but make it Pong-specific:

- mount the runtime SquashFS into a writable mount point
- activate the runtime venv
- export `PYTHONHOME`, `PYTHONPATH`, and `PYTHONPYCACHEPREFIX`
- preserve handheld-specific environment choices such as `SDL_VIDEODRIVER` and joystick-friendly execution
- run the launcher with the runtime's Python

Whether this is a dedicated shell script or folded into the `.pygame` entrypoint is an implementation detail, but the mounted-runtime bootstrap should be explicit and reproducible.

### 5. Add accelerated backend support inside the same ARM build

The accelerator must be built against the exact Python version shipped in `/runtime`. Plan for the container build to:

1. `cd /local/interpreter`
2. build the extension with the repo's existing flow (`python engine/build_accelerator.py`)
3. collect `engine/fpga_backend_ext*.so`
4. stage the accelerator-aware engine files into the final package:
   - `engine/__init__.py`
   - `engine/engine.py`
   - `engine/accelerated_engine.py`
   - `engine/accelerator_common.py`
   - `engine/fpga_backend_ext*.so`

Keep the pure-Python package path available as well. The existing `--no-cython` flag is still useful for debugging and verification, so the accelerated path should be additive rather than mandatory.

### 6. Keep the accelerator local to the packaged Pong folder

Do not rely on installing the whole repo into the runtime venv just to pick up `engine`. The current Pong package already works by shipping a local `engine/` package beside the launcher, and the accelerated version can follow the same pattern by expanding that local package with the extra Python modules and the compiled shared object.

This keeps the runtime smaller, avoids packaging unrelated emulator code, and matches how `pong_launcher.py` already imports the engine.

## Suggested implementation order

1. Scaffold `runtime_builder/` by copying the sibling runtime layout and renaming outputs from `pygame-ce` to a Pong-specific `pygame` artifact.
2. Get a pure-Python runtime building and packed into SquashFS.
3. Extend `build_package.py` to stage the runtime artifact into the Pong deployment folder.
4. Add the runtime bootstrap script or `.pygame` bootstrap flow.
5. Add the accelerator build and staging path.
6. Add smoke-test and packaging verification steps.
7. Update the README handheld packaging section once the new flow exists.

## Todo list

- Reference the sibling runtime project as the template, but keep all new logic scoped under `interpreter/emulator/pong/`.
- Pin Python and `pygame` versions in a local `build-config` so runtime artifact names stay deterministic.
- Add a container build path for the Cython accelerator that runs in the same ARM image as the runtime build.
- Extend Pong packaging so it can emit both pure-Python and accelerator-capable handheld artifacts.
- Document the runtime bootstrap flow and manual validation steps for Batocera/Knulli-style deployment.

## Container usage

Assuming Docker and the Compose plugin are already installed:

```sh
cd interpreter/emulator/pong/runtime_builder

# Open an interactive ARM64 shell in the build image.
docker compose run --rm runtime_builder /bin/bash

# Run the full runtime build non-interactively.
docker compose up --abort-on-container-exit

# Stop and clean up the Compose service afterwards.
docker compose down
```

If development happens on a non-ARM host, keep `platform: linux/arm64` in the Compose file and ensure Docker's ARM emulation support is enabled. On an ARM board or handheld running Docker, this should execute natively.

## Validation notes

- Smoke-test the mounted runtime by launching Pong with the runtime's Python on a development machine before copying to the handheld.
- Verify the package still works when the accelerator is absent.
- Verify the package automatically uses `AcceleratedEngine` when the compiled `.so` is present.
- Keep all generated SquashFS and `.so` artifacts under ignored `interpreter/build/` paths.
