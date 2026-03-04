# Appendix

Cliff notes for environment setup/installation.

## Install dependencies

### Python 3.11

```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt install python3.11 python3.11-venv python3.11-dev
$ sudo apt install libevdev-dev # input devices
$ sudo apt install default-jre # java (course compiler)
```

### git and repos

```
$ sudo apt install git
$ cd ~ && mkdir src && cd src
$ git clone git@github.com:c0ff33-dev/nand2tetris.git
```

### Install dependencies

```
$ cd ~/src/nand2tetris
$ python3.11 -m venv .venv
$ source ~/src/nand2tetris/.venv/bin/activate
$ python -m pip install -r requirements.txt
```

### Run interpreter

```
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python runner.py
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python debugger.py ~/src/nand2tetris/projects/11/Pong/Pong.asm --break Main.main
cd ~/src/nand2tetris/interpreter && ~/src/nand2tetris/.venv/bin/python emulator.py ~/src/nand2tetris/projects/11/Pong/Pong.asm
```

## Miscellaneous

### Useful VSC extensions

```
mshr-h.veriloghdl
throvn.nand2tetris
roman-lukash.nand2tetris-jack-language-server
```