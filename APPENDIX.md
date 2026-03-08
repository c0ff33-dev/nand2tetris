# Appendix

Cliff notes for environment setup/installation.

## Install dependencies

### Python 3.12

```sh
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt install python3.12 python3.12-venv python3.12-dev
$ sudo apt install libevdev-dev # input devices
$ sudo apt install default-jre # java (course tools)
```

### git and repos

```sh
$ sudo apt install git
$ cd ~ && mkdir src && cd src
$ git clone git@github.com:c0ff33-dev/nand2tetris.git
```

### Install dependencies

```sh
$ cd ~/src/nand2tetris
$ python3.12 -m venv .venv
$ source ~/src/nand2tetris/.venv/bin/activate
$ pip install -e ".[dev]"
$ cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python engine/build_accelerator.py
```

### Run interpreter

```sh
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python runner.py
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python debugger.py ~/src/nand2tetris/projects/11/Pong/Pong.asm --break Main.main
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python emulator.py ~/src/nand2tetris/projects/11/Pong/Pong.asm
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python emulator_fpga.py ~/src/nand2tetris/projects/13_fpga/Original/12_Tetris/12_Tetris.asm
```

## Miscellaneous

### Useful VSC extensions

```sh
mshr-h.veriloghdl
throvn.nand2tetris
roman-lukash.nand2tetris-jack-language-server
```
