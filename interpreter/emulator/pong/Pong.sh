#!/bin/bash
# PortMaster startup script for nand2tetris Pong

PACKAGE="Pong"
ENTRYPOINT="pong.pygame"

XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_RUNTIME_DIR=/var/run
if [ ! -d "/var/run" ]; then
  mkdir -p "/var/run"
  chmod 700 "/var/run"
fi

if [ -d "/opt/system/Tools/PortMaster/" ]; then
  controlfolder="/opt/system/Tools/PortMaster"
elif [ -d "/opt/tools/PortMaster/" ]; then
  controlfolder="/opt/tools/PortMaster"
elif [ -d "$XDG_DATA_HOME/PortMaster/" ]; then
  controlfolder="$XDG_DATA_HOME/PortMaster"
else
  controlfolder="/roms/ports/PortMaster"
fi

source "${controlfolder}/control.txt"
[ -f "${controlfolder}/mod_${CFW_NAME}.txt" ] && source "${controlfolder}/mod_${CFW_NAME}.txt"
get_controls

GAMEDIR="/$directory/ports/$PACKAGE"
cd "${GAMEDIR}" || exit 1

> "${GAMEDIR}/log.txt" && exec > >(tee "${GAMEDIR}/log.txt") 2>&1

CONFDIR="$GAMEDIR/conf"
mkdir -p "${CONFDIR}"
bind_directories "$HOME/.config/nand2tetris-pong/$PACKAGE" "${CONFDIR}"

export SDL_GAMECONTROLLERCONFIG="$sdl_controllerconfig"
export SDL_VIDEODRIVER="${SDL_VIDEODRIVER:-mali}"

runtime_mount=""

finish() {
  local status="$1"
  if [ -n "${runtime_mount}" ] && [[ "${PM_CAN_MOUNT:-N}" != "N" ]]; then
    $ESUDO umount "${runtime_mount}" >/dev/null 2>&1
  fi
  pm_finish
  exit "${status}"
}

runtime_root="${GAMEDIR}/runtime"
runtime_dir=""
runtime_image=""
if [ -d "${runtime_root}" ]; then
  runtime_image=$(ls -t "${runtime_root}"/*.squashfs 2>/dev/null | head -n 1)
  if [ -n "${runtime_image}" ]; then
    if [[ "${PM_CAN_MOUNT:-N}" == "N" ]]; then
      echo "Bundled runtime found but this device cannot mount squashfs images."
      finish 1
    fi

    runtime_mount="$HOME/nand2tetris-pong-runtime/$PACKAGE"
    mkdir -p "${runtime_mount}"
    $ESUDO umount "${runtime_mount}" >/dev/null 2>&1
    if ! $ESUDO mount "${runtime_image}" "${runtime_mount}"; then
      echo "Failed to mount bundled runtime ${runtime_image}"
      finish 1
    fi
    runtime_dir="${runtime_mount}"
  else
    runtime_dir=$(
      find "${runtime_root}" -mindepth 1 -maxdepth 1 -type d | sort | while read -r candidate; do
        if [ -x "${candidate}/bin/python" ]; then
          echo "${candidate}"
          break
        fi
      done
    )
  fi
fi

python_bin=""
if [ -n "${runtime_dir}" ]; then
  python_bin="${runtime_dir}/bin/python"
  if [ ! -x "${python_bin}" ]; then
    echo "Bundled runtime is missing ${python_bin}"
    finish 1
  fi

  pm_platform_helper "${python_bin}"
  [ -f "${runtime_dir}/bin/activate" ] && source "${runtime_dir}/bin/activate"

  export NAND2TETRIS_PONG_RUNTIME_ACTIVE=1
  export PATH="${runtime_dir}/bin:${PATH}"
  export PYTHONHOME="${runtime_dir}"
  if [ -d "${runtime_dir}/lib" ]; then
    python_lib=$(find "${runtime_dir}/lib" -mindepth 1 -maxdepth 1 -type d -name 'python*' | sort | head -n 1)
    [ -n "${python_lib}" ] && export PYTHONPATH="${python_lib}"
  fi
  export PYTHONPYCACHEPREFIX="${GAMEDIR}/.runtime-cache/$(basename "${runtime_dir}")"
  export VIRTUAL_ENV="${runtime_dir}"
else
  if command -v python3 >/dev/null 2>&1; then
    python_bin=$(command -v python3)
  elif command -v python >/dev/null 2>&1; then
    python_bin=$(command -v python)
  else
    echo "No bundled runtime or host python interpreter found."
    finish 1
  fi

  pm_platform_helper "${python_bin}"
fi

"${python_bin}" "${GAMEDIR}/${ENTRYPOINT}"
finish $?
