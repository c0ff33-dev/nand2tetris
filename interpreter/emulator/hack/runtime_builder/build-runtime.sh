#!/usr/bin/env bash

set -euo pipefail

: "${PYTHON_VERSION:?PYTHON_VERSION is required}"
: "${PYGAME_VERSION:?PYGAME_VERSION is required}"

PY_VER=${PYTHON_VERSION%.*}
LOCAL_ROOT=/local
INTERPRETER_DIR="${LOCAL_ROOT}/interpreter"
BUILDER_DIR="${INTERPRETER_DIR}/emulator/hack/runtime_builder"
BUILD_ROOT="${INTERPRETER_DIR}/build/hack-runtime"
ENGINE_STAGE_DIR="${BUILD_ROOT}/engine"
RUNTIME_NAME="hack_pygame_${PYGAME_VERSION}_python_${PYTHON_VERSION}"
RUNTIME_IMAGE="${BUILD_ROOT}/${RUNTIME_NAME}.squashfs"

cd "${HOME}"

apt update && apt install -y build-essential git rsync squashfs-tools \
  libfreetype6-dev libportmidi-dev \
  libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev

if [[ -f "${BUILDER_DIR}/build/pre-install.sh" ]]; then
  bash "${BUILDER_DIR}/build/pre-install.sh"
fi

rm -rf /runtime
python -m venv --copies /runtime
source /runtime/bin/activate

python -m pip install --upgrade pip setuptools wheel Cython
# Build from source so pygame links dynamically against the container's SDL2
# instead of bundling a generic manylinux SDL2 that lacks vendor video drivers
# (e.g. mali on RG35XX Plus).  At runtime the device's system libSDL2 is used.
python -m pip install --no-binary pygame "pygame==${PYGAME_VERSION}"

if [[ -f "${BUILDER_DIR}/build/requirements.txt" ]]; then
  python -m pip install -r "${BUILDER_DIR}/build/requirements.txt"
fi

mkdir -p "${BUILD_ROOT}" "${ENGINE_STAGE_DIR}"
rm -rf "${ENGINE_STAGE_DIR}"/*

pushd "${INTERPRETER_DIR}" >/dev/null
python engine/build_accelerator.py
popd >/dev/null

cp "${INTERPRETER_DIR}/engine/__init__.py" "${ENGINE_STAGE_DIR}/"
cp "${INTERPRETER_DIR}/engine/engine.py" "${ENGINE_STAGE_DIR}/"
cp "${INTERPRETER_DIR}/engine/accelerated_engine.py" "${ENGINE_STAGE_DIR}/"
cp "${INTERPRETER_DIR}/engine/accelerator_common.py" "${ENGINE_STAGE_DIR}/"

shopt -s nullglob
accelerator_binaries=("${INTERPRETER_DIR}"/engine/fpga_backend_ext*.so)
if (( ${#accelerator_binaries[@]} == 0 )); then
  echo "No built accelerator shared object was produced" >&2
  exit 1
fi
cp "${accelerator_binaries[@]}" "${ENGINE_STAGE_DIR}/"
shopt -u nullglob

deactivate

cp "/usr/local/lib/libpython${PY_VER}.so.1.0" /runtime/lib/
rsync -a "/usr/local/lib/python${PY_VER}/" "/runtime/lib/python${PY_VER}/"
find /runtime -name "__pycache__" -type d -prune -exec rm -rf {} +
find /runtime -name "*.pyc" -type f -delete

if [[ -f "${BUILDER_DIR}/build/post-install.sh" ]]; then
  bash "${BUILDER_DIR}/build/post-install.sh"
fi

rm -f "${RUNTIME_IMAGE}"
mksquashfs /runtime "/${RUNTIME_NAME}.squashfs" -comp xz -b 1M
mv "/${RUNTIME_NAME}.squashfs" "${RUNTIME_IMAGE}"

printf '%s\n' "${RUNTIME_IMAGE}" > "${BUILD_ROOT}/latest-runtime.txt"

rm -f "${INTERPRETER_DIR}"/engine/fpga_backend_ext*.so
rm -f "${INTERPRETER_DIR}/engine/fpga_backend_ext.c"

printf 'Built runtime artifact: %s\n' "${RUNTIME_IMAGE}"
printf 'Staged accelerator engine files in: %s\n' "${ENGINE_STAGE_DIR}"
