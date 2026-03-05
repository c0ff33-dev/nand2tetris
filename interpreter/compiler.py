"""
Compile a JACK program into a VM program (pcode) from the token stream initially generated
by tokenizer/analyzer.
"""

import os
import re
import xml.etree.ElementTree as Et

op_map = {
    "+": "add",
    "-": "sub",
    "*": "call Math.multiply 2",
    "/": "call Math.divide 2",
    "&": "and",
    "|": "or",
    "~": "not",
    "<": "lt",
    ">": "gt",
    "=": "eq",
}  # Math.multiply/divide = non-void return (no pop)
op_words = ["add", "sub", "call Math.multiply 2", "call Math.divide 2", "and", "or", "not", "lt", "gt", "eq", "neg"]

char_map = {
    " ": 32,
    "!": 33,
    '"': 34,
    "#": 35,
    "$": 36,
    "%": 37,
    "&": 38,
    "'": 39,
    "(": 40,
    ")": 41,
    "*": 42,
    "+": 43,
    ",": 44,
    "-": 45,
    ".": 46,
    "/": 47,
    "0": 48,
    "1": 49,
    "2": 50,
    "3": 51,
    "4": 52,
    "5": 53,
    "6": 54,
    "7": 55,
    "8": 56,
    "9": 57,
    ":": 58,
    ";": 59,
    "<": 60,
    "=": 61,
    ">": 62,
    "?": 63,
    "@": 64,
    "A": 65,
    "B": 66,
    "C": 67,
    "D": 68,
    "E": 69,
    "F": 70,
    "G": 71,
    "H": 72,
    "I": 73,
    "J": 74,
    "K": 75,
    "L": 76,
    "M": 77,
    "N": 78,
    "O": 79,
    "P": 80,
    "Q": 81,
    "R": 82,
    "S": 83,
    "T": 84,
    "U": 85,
    "V": 86,
    "W": 87,
    "X": 88,
    "Y": 89,
    "Z": 90,
    "[": 91,
    "\\": 92,
    "]": 93,
    "^": 94,
    "_": 95,
    "`": 96,
    "a": 97,
    "b": 98,
    "c": 99,
    "d": 100,
    "e": 101,
    "f": 102,
    "g": 103,
    "h": 104,
    "i": 105,
    "j": 106,
    "k": 107,
    "l": 108,
    "m": 109,
    "n": 110,
    "o": 111,
    "p": 112,
    "q": 113,
    "r": 114,
    "s": 115,
    "t": 116,
    "u": 117,
    "v": 118,
    "w": 119,
    "x": 120,
    "y": 121,
    "z": 122,
    "{": 123,
    "|": 124,
    "}": 125,
    "~": 126,
    "newline": 128,
    "backspace": 129,
    "left_arrow": 130,
    "up_arrow": 131,
    "right_arrow": 133,
    "home": 134,
    "end": 135,
    "page_up": 136,
    "page_down": 137,
    "insert": 138,
    "delete": 139,
    "esc": 140,
    "f1": 141,
    "f2": 142,
    "f3": 143,
    "f4": 144,
    "f5": 145,
    "f6": 146,
    "f7": 147,
    "f8": 148,
    "f9": 149,
    "f10": 150,
    "f11": 151,
    "f12": 152,
}

# compiled library functions header (kind, type, params)
sys_func = {
    "Math": {
        "init": {"kind": "func", "type": "void", "args": (), "len": 0},
        "abs": {"kind": "func", "type": "int", "args": ("int",), "len": 1},
        "multiply": {"kind": "func", "type": "int", "args": ("int", "int"), "len": 2},
        "divide": {"kind": "func", "type": "int", "args": ("int", "int"), "len": 2},
        "min": {"kind": "func", "type": "int", "args": ("int", "int"), "len": 2},
        "max": {"kind": "func", "type": "int", "args": ("int", "int"), "len": 2},
        "sqrt": {"kind": "func", "type": "int", "args": ("int",), "len": 1},
    },
    "Memory": {
        "init": {"kind": "func", "type": "void", "args": (), "len": 0},
        "peek": {"kind": "func", "type": "int", "args": ("int",), "len": 1},
        "poke": {"kind": "func", "type": "void", "args": ("int", "int"), "len": 2},
        "alloc": {"kind": "func", "type": "Array", "args": ("int",), "len": 1},
        "deAlloc": {"kind": "func", "type": "void", "args": ("Array",), "len": 1},
    },
    "String": {
        "new": {"kind": "const", "type": "String", "args": ("int",), "len": 1},
        "dispose": {"kind": "method", "type": "void", "args": (), "len": 0 + 1},
        "length": {"kind": "method", "type": "int", "args": (), "len": 0 + 1},
        "charAt": {"kind": "method", "type": "int", "args": ("int",), "len": 1 + 1},
        "setCharAt": {"kind": "method", "type": "void", "args": ("int", "char"), "len": 2 + 1},
        "appendChar": {"kind": "method", "type": "String", "args": ("char",), "len": 1 + 1},
        "eraseLastChar": {"kind": "method", "type": "void", "args": (), "len": 0 + 1},
        "intValue": {"kind": "method", "type": "int", "args": (), "len": 0 + 1},
        "setInt": {"kind": "method", "type": "void", "args": ("int",), "len": 1 + 1},
        "backSpace": {"kind": "func", "type": "char", "args": (), "len": 0},
        "doubleQuote": {"kind": "func", "type": "char", "args": (), "len": 0},
        "newLine": {"kind": "func", "type": "char", "args": (), "len": 0},
    },
    "Array": {
        "new": {"kind": "const", "type": "Array", "args": ("int",), "len": 1},
        "dispose": {"kind": "method", "type": "void", "args": (), "len": 0 + 1},
    },
    "Output": {
        "init": {"kind": "func", "type": "void", "args": (), "len": 0},
        "initMap": {"kind": "func", "type": "void", "args": (), "len": 0},
        "create": {"kind": "func", "type": "void", "args": ("int",) * 12, "len": 12},
        "getMap": {"kind": "func", "type": "Array", "args": ("char",), "len": 1},
        "moveCursor": {"kind": "func", "type": "void", "args": ("int", "int"), "len": 2},
        "printChar": {"kind": "func", "type": "void", "args": ("char",), "len": 1},
        "printString": {"kind": "func", "type": "void", "args": ("String",), "len": 1},
        "printInt": {"kind": "func", "type": "void", "args": ("int",), "len": 1},
        "println": {"kind": "func", "type": "void", "args": (), "len": 0},
        "backSpace": {"kind": "func", "type": "void", "args": (), "len": 0},
        "_createShiftedMap": {"kind": "func", "type": "void", "args": (), "len": 0},  # internal api
        "_drawChar": {"kind": "func", "type": "void", "args": ("char",), "len": 1},
    },  # internal api
    "Screen": {
        "init": {"kind": "func", "type": "void", "args": (), "len": 0},
        "clearScreen": {"kind": "func", "type": "void", "args": (), "len": 0},
        "setColor": {"kind": "func", "type": "void", "args": ("boolean",), "len": 1},
        "drawPixel": {"kind": "func", "type": "void", "args": ("int", "int"), "len": 2},
        "drawLine": {"kind": "func", "type": "void", "args": ("int",) * 4, "len": 4},
        "drawRectangle": {"kind": "func", "type": "void", "args": ("int",) * 4, "len": 4},
        "drawCircle": {"kind": "func", "type": "void", "args": ("int",) * 3, "len": 3},
        "_updateLocation": {"kind": "func", "type": "void", "args": ("int", "Array"), "len": 2},  # internal api
        "_drawConditional": {
            "kind": "func",
            "type": "void",
            "args": ("int", "int", "boolean"),
            "len": 3,
        },  # internal api
        "_drawHorizontal": {"kind": "func", "type": "void", "args": ("int",) * 3, "len": 3},  # internal api
        "_drawSymetric": {"kind": "func", "type": "void", "args": ("int",) * 4, "len": 4},  # internal api
    },
    "Keyboard": {
        "init": {"kind": "func", "type": "void", "args": (), "len": 0},
        "keyPressed": {"kind": "func", "type": "char", "args": (), "len": 0},
        "readChar": {"kind": "func", "type": "char", "args": (), "len": 0},
        "readLine": {"kind": "func", "type": "String", "args": ("String",), "len": 1},
        "readInt": {"kind": "func", "type": "int", "args": ("String",), "len": 1},
    },
    "Sys": {
        "init": {"kind": "func", "type": "void", "args": (), "len": 0},
        "halt": {"kind": "func", "type": "void", "args": (), "len": 0},
        "error": {"kind": "func", "type": "void", "args": ("int",), "len": 1},
        "wait": {"kind": "func", "type": "void", "args": ("int",), "len": 1},
    },
}

# primitives & keywords
# class, constructor, method, function
# int, boolean, char, void, Array
# var, static, field
# let, do, if, else, while, return
# true, false, null, this

# var: defined as an parameter or locally, scoped to the function/method
# static: single global reference shared amongst all instances of a class
# field: unique to a specific instantiation of a class object
# method: operates on a specific instantiation of a class object
# function: global to all instantiations of the class (a constructor is a function)

types = ["int", "boolean", "char", "void"]
objects = ["Math", "Memory", "String", "Array", "Output", "Screen", "Keyboard", "Sys"]
kinds = ["class", "constructor", "method", "function", "static", "field", "var"]


def find_parent(tree: Et.Element, node: Et.Element) -> Et.Element:
    """
    Draw a map of the tree and yield the parent from node.

    :param tree: XML element tree root.
    :param node: XML element to find parent of.
    :return: Parent element of node.
    """
    parent_map = {child: parent for parent in tree.iter() for child in parent}
    return parent_map[node]


def store_pcode(pcode: list[str], cmd: str, debug: bool = False) -> list[str]:
    """
    Optionally dynamically print the pcode with additional debug information, store for later file output.

    :param pcode: VM pseudocode output buffer.
    :param cmd: VM command string to append.
    :param debug: Enable verbose output.
    :return: Updated pseudocode buffer.
    """
    if debug:
        count = 0
        for p in pcode:
            if not p.startswith("//"):
                count += 1

        if not cmd.strip().startswith("//"):
            count += 1
            print("PCODE(%s): %s" % (count, cmd.strip()))
        else:
            print("PCODE(%s): %s" % (len(str(count)) * "-", cmd.strip()))

    # overwrite at end if successful
    # don't append empty debug "write" calls
    pcode.append(cmd.strip() + "\n")

    return pcode


def extract_asserts(jack_filepath: str) -> dict[tuple[str, str, int], str]:
    """
    Scan raw Jack source for // ASSERT comments on let/do/return statements.

    Returns {(func_name, stmt_type, index): "ASSERT ..."} where index is 1-based per function.

    :param jack_filepath: Path to the Jack source file.
    :return: Dict mapping statement keys to assert strings.
    """
    asserts = {}
    current_func = None
    let_count = 0
    do_count = 0
    return_count = 0

    with open(jack_filepath) as f:
        for line in f:
            stripped = line.strip()

            # track function context
            func_match = re.match(r"(?:function|method|constructor)\s+\S+\s+(\w+)\s*\(", stripped)
            if func_match:
                current_func = func_match.group(1)
                let_count = 0
                do_count = 0
                return_count = 0
                continue

            if not current_func:
                continue

            # count let statements and check for ASSERT
            if stripped.startswith("let "):
                let_count += 1
                assert_match = re.search(r"//\s*ASSERT\s+(.*)", stripped)
                if assert_match:
                    asserts[(current_func, "let", let_count)] = "ASSERT " + assert_match.group(1).strip()

            # count do statements and check for ASSERT
            elif stripped.startswith("do "):
                do_count += 1
                assert_match = re.search(r"//\s*ASSERT\s+(.*)", stripped)
                if assert_match:
                    asserts[(current_func, "do", do_count)] = "ASSERT " + assert_match.group(1).strip()

            # count return statements and check for ASSERT
            elif stripped.startswith("return ") or stripped.startswith("return;"):
                return_count += 1
                assert_match = re.search(r"//\s*ASSERT\s+(.*)", stripped)
                if assert_match:
                    asserts[(current_func, "return", return_count)] = "ASSERT " + assert_match.group(1).strip()

    return asserts


def compile_class(pcode: list[str], class_name: str, class_dict: dict, debug: bool = False) -> tuple[list[str], dict]:
    """
    Update the class_dict during pre-scan, emit pcode when declaration encountered.

    :param pcode: VM pseudocode output buffer.
    :param class_name: Name of the class.
    :param class_dict: Symbol table dictionary.
    :param debug: Enable verbose output.
    :return: Updated pcode and class_dict.
    :raises ValueError: If class name is invalid.
    """
    if not class_name:
        raise ValueError("illegal class name: '%s'" % class_name)

    # define class_name and initialize symbol table
    if class_name not in class_dict:
        class_dict[class_name] = {"args": {}, "index_dict": {}}
    else:
        # don't emit pcode on pre-scan
        pcode = store_pcode(pcode, "// class %s" % class_name, debug)

    return pcode, class_dict


def compile_function(
    pcode: list[str],
    func_name: str,
    func_type: str,
    func_kind: str,
    class_dict: dict,
    class_name: str,
    debug: bool = False,
) -> tuple[list[str], dict]:
    """
    Update the class_dict during pre-scan, emit pcode when declaration encountered.

    :param pcode: VM pseudocode output buffer.
    :param func_name: Name of the function.
    :param func_type: Return type of the function.
    :param func_kind: Kind of subroutine (function/method/constructor).
    :param class_dict: Symbol table dictionary.
    :param class_name: Name of the enclosing class.
    :param debug: Enable verbose output.
    :return: Updated pcode and class_dict.
    :raises ValueError: If function name is invalid.
    """
    if not func_name:
        raise ValueError("illegal function name: '%s'" % func_name)
    if func_name == class_name:
        raise ValueError("illegal function name: '%s'" % func_name)
    if not func_type:
        raise ValueError("illegal function type: '%s'" % func_type)
    if not func_kind:
        raise ValueError("illegal function kind: '%s'" % func_kind)
    if func_kind not in ("function", "method", "constructor"):
        raise ValueError("illegal function kind: '%s'" % func_kind)

    # define function symbol
    prescan = False
    if func_kind == "constructor":
        func_type = class_name
    if func_name not in class_dict[class_name]:
        class_dict[class_name][func_name] = {
            "kind": func_kind,
            "type": func_type,
            "args": {},
            "index_dict": {},
            "label_dict": {},
        }
        prescan = True

    if func_kind == "method":
        # assign space for the implicit "this" argument for class methods
        class_dict[class_name][func_name]["index_dict"]["argument"] = 0
        class_dict[class_name][func_name]["args"]["this"] = {"kind": "argument", "type": class_name, "index": 0}

    # don't emit pcode on pre-scan
    if not prescan:
        # num_vars = locals i.e. the space required on stack frame
        # num_members = field i.e. how much space required on heap for alloc call
        num_vars = num_members = 0
        if "local" in class_dict[class_name][func_name]["index_dict"]:
            num_vars = class_dict[class_name][func_name]["index_dict"]["local"] + 1

        for arg in class_dict[class_name]["args"]:
            if class_dict[class_name]["args"][arg]["kind"] == "field":
                num_members += 1

        pcode = store_pcode(pcode, "\nfunction %s.%s %s // %s" % (class_name, func_name, num_vars, func_kind), debug)

        if func_kind == "constructor":
            # allocate space on heap
            pcode = store_pcode(pcode, "push constant %s" % num_members, debug)
            # non-void return (no pop)
            pcode = store_pcode(pcode, "call Memory.alloc 1 // allocate object + params on heap", debug)
            pcode = store_pcode(pcode, "pop pointer 0 // *this = &<heap>", debug)

        elif func_kind == "method":
            # move pointer to current object (implicit "this" argument)
            pcode = store_pcode(pcode, "\npush argument 0 // &this", debug)
            pcode = store_pcode(pcode, "pop pointer 0 // *this =", debug)

        elif func_kind == "function":
            pass

        else:
            raise ValueError("Unexpected function kind '%s'")

    return pcode, class_dict


def compile_statement(
    pcode: list[str] | None = None,
    statement: str | None = None,
    class_dict: dict | None = None,
    class_name: str | None = None,
    func_name: str | None = None,
    var_type: str | None = None,
    var_name: str | None = None,
    num_args: int = 0,
    exp_buffer: list[str] = [],
    var_scope: str | None = None,
    if_count: int = 0,
    while_count: int = 0,
    lhs_array: bool = False,
    var_kind: str | None = None,
    prescan: bool = False,
    debug: bool = False,
) -> tuple[list[str] | None, dict | None, int, int, int, list[str], bool]:
    """
    Provide a common interface to the statement compilers.

    Must passthrough at least statement + return args + inner call args i.e.
    compile_statement(pcode=pcode, statement=statement, class_dict=class_dict, num_args=num_args,
                      while_count=while_count, if_count=if_count, exp_buffer=exp_buffer, debug=debug)

    :param pcode: VM pseudocode output buffer.
    :param statement: Statement type being compiled.
    :param class_dict: Symbol table dictionary.
    :param class_name: Name of the enclosing class.
    :param func_name: Name of the enclosing function.
    :param var_type: Type of the variable.
    :param var_name: Name of the variable.
    :param num_args: Number of arguments.
    :param exp_buffer: Expression buffer for deferred output.
    :param var_scope: Scope of the variable.
    :param if_count: Current if label counter.
    :param while_count: Current while label counter.
    :param lhs_array: Whether left-hand side is an array.
    :param var_kind: Kind of variable declaration.
    :param prescan: Whether in pre-scan phase.
    :param debug: Enable verbose output.
    :return: Tuple of pcode, class_dict, num_args, if_count, while_count, exp_buffer, lhs_array.
    :raises ValueError: If statement type is unknown.
    """
    if statement == "do":
        pass

    elif statement == "let":
        exp_buffer, class_dict, lhs_array = compile_assignment(
            class_dict=class_dict,
            class_name=class_name,
            func_name=func_name,
            var_name=var_name,
            exp_buffer=exp_buffer,
            lhs_array=lhs_array,
            var_scope=var_scope,
        )

    elif statement == "return":
        # looks up func type (affects return behaviour)
        pcode = compile_return(
            pcode=pcode, class_dict=class_dict, class_name=class_name, func_name=func_name, debug=debug
        )

    elif statement == "while":
        pcode, while_count = compile_while(pcode=pcode, while_count=while_count, debug=debug)

    elif statement == "if":
        pass

    elif statement == "var":
        # update class/func dict
        pcode, class_dict = compile_vardec(
            pcode=pcode,
            class_dict=class_dict,
            class_name=class_name,
            func_name=func_name,
            var_kind="local",
            var_type=var_type,
            var_name=var_name,
            prescan=prescan,
            debug=debug,
        )

    elif statement == "class_var":
        # update class/func dict
        pcode, class_dict = compile_vardec(
            pcode=pcode,
            class_dict=class_dict,
            class_name=class_name,
            func_name=func_name,
            var_kind=var_kind,
            var_type=var_type,
            var_name=var_name,
            prescan=prescan,
            debug=debug,
        )

    elif statement == "param":
        # update class/func dict
        pcode, class_dict = compile_vardec(
            pcode=pcode,
            class_dict=class_dict,
            class_name=class_name,
            func_name=func_name,
            var_kind="argument",
            var_type=var_type,
            var_name=var_name,
            prescan=prescan,
            debug=debug,
        )

    else:
        raise ValueError("Unexpected statement type '%s'" % statement)

    return pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array


def compile_assignment(
    class_dict: dict,
    class_name: str,
    func_name: str,
    var_name: str,
    exp_buffer: list[str],
    lhs_array: bool,
    var_scope: str,
) -> tuple[list[str], dict, bool]:
    """
    Compile the assignment component of a statement.

    Store pcode in exp_buffer so its emitted when expression is closed.

    :param class_dict: Symbol table dictionary.
    :param class_name: Name of the enclosing class.
    :param func_name: Name of the enclosing function.
    :param var_name: Name of the variable being assigned.
    :param exp_buffer: Expression buffer for deferred output.
    :param lhs_array: Whether left-hand side is an array.
    :param var_scope: Scope of the variable.
    :return: Updated exp_buffer, class_dict, and lhs_array flag.
    :raises ValueError: If variable scope is unexpected.
    """
    if var_scope not in ("local", "member"):
        raise ValueError("Unexpected scope '%s'" % var_scope)

    # typical assignment (local, static, field)
    if var_scope == "local":
        exp_buffer.append(
            "pop %s %s // %s ="
            % (
                class_dict[class_name][func_name]["args"][var_name]["kind"],
                class_dict[class_name][func_name]["args"][var_name]["index"],
                var_name,
            )
        )
    elif var_scope == "member":
        exp_buffer.append(
            "pop %s %s // %s ="
            % (
                class_dict[class_name]["args"][var_name]["kind"].replace("field", "this"),
                class_dict[class_name]["args"][var_name]["index"],
                var_name,
            )
        )

    if lhs_array:
        # assignment to an array var (constructor or overwriting the pointer)
        # this assignment is speculative and will be reversed if next symbol is [
        # (i.e. assignment was intended for array content not array itself)
        exp_buffer[-1] = exp_buffer[-1] + " (*array var)"  # add the metadata that triggers this test

    if var_scope == "local":
        class_dict[class_name][func_name]["args"][var_name]["initialized"] = True
    elif var_scope == "member":
        class_dict[class_name]["args"][var_name]["initialized"] = True

    return exp_buffer, class_dict, lhs_array


def compile_vardec(
    pcode: list[str],
    class_dict: dict,
    class_name: str,
    func_name: str,
    var_kind: str,
    var_type: str,
    var_name: str,
    prescan: bool = False,
    debug: bool = False,
) -> tuple[list[str], dict]:
    """
    Add var to the class dict, print a comment in pcode.

    :param pcode: VM pseudocode output buffer.
    :param class_dict: Symbol table dictionary.
    :param class_name: Name of the enclosing class.
    :param func_name: Name of the enclosing function.
    :param var_kind: Kind of variable (field/static/var/argument).
    :param var_type: Type of the variable.
    :param var_name: Name of the variable.
    :param prescan: Whether in pre-scan phase.
    :param debug: Enable verbose output.
    :return: Updated pcode and class_dict.
    :raises ValueError: If variable name or type is invalid.
    """
    if not var_name:
        raise ValueError("illegal var name: '%s'" % var_name)
    if not var_type:
        raise ValueError("illegal var type: '%s'" % var_type)
    if not var_kind:
        raise ValueError("illegal var kind: '%s'" % var_kind)

    # don't emit pcode during pre-scan
    # class fields / statics
    if var_kind in ("field", "static"):
        if var_name not in class_dict[class_name]["args"]:
            if var_kind not in class_dict[class_name]["index_dict"]:
                index = 0
            else:
                index = class_dict[class_name]["index_dict"][var_kind] + 1

            class_dict[class_name]["args"][var_name] = {
                "kind": var_kind,
                "type": var_type,
                "index": index,
                "initialized": False,
            }
            class_dict[class_name]["index_dict"][var_kind] = index
        # else: already processed

    # function locals
    elif func_name and var_name not in class_dict[class_name][func_name]["args"]:
        if var_kind not in class_dict[class_name][func_name]["index_dict"]:
            index = 0
        else:
            index = class_dict[class_name][func_name]["index_dict"][var_kind] + 1

        class_dict[class_name][func_name]["args"][var_name] = {
            "kind": var_kind,
            "type": var_type,
            "index": index,
            "initialized": False,
        }
        class_dict[class_name][func_name]["index_dict"][var_kind] = index

    # debug info only
    elif not prescan:
        if not var_type:
            raise ValueError("unexpected var_type '%s' (%s.%s.%s)" % (var_type, class_name, func_name, var_name))
        if var_type == var_name:
            raise ValueError("unexpected var_name '%s' (%s.%s.%s)" % (var_type, class_name, func_name, var_name))

        if var_kind == "local":
            pcode = store_pcode(
                pcode,
                "// var %s %s (%s %s)"
                % (var_type, var_name, var_kind, class_dict[class_name][func_name]["args"][var_name]["index"]),
                debug,
            )

        elif var_kind == "argument":
            pcode = store_pcode(
                pcode,
                "// param %s %s (%s %s)"
                % (var_type, var_name, var_kind, class_dict[class_name][func_name]["args"][var_name]["index"]),
                debug,
            )

        elif var_kind in ("field", "static"):
            pcode = store_pcode(
                pcode,
                "// %s %s %s (%s %s)"
                % (var_kind, var_type, var_name, var_kind, class_dict[class_name]["args"][var_name]["index"]),
                debug,
            )

        elif var_kind is not None:
            raise ValueError("unexpected var_kind '%s'" % var_kind)

    return pcode, class_dict


def compile_constant(
    pcode: list[str],
    constant: str,
    exp_buffer: list[str] | None = None,
    debug: bool = False,
) -> list[str]:
    """
    Emit pcode when constant encountered.

    :param pcode: VM pseudocode output buffer.
    :param constant: Constant value string.
    :param exp_buffer: Expression buffer for deferred output.
    :param debug: Enable verbose output.
    :return: Updated pcode or exp_buffer.
    :raises ValueError: If constant is invalid.
    """
    if not constant:
        raise ValueError("illegal constant: '%s'" % constant)

    if type(exp_buffer) is list:
        exp_buffer.append("push constant %s" % constant)
        return exp_buffer

    else:
        pcode = store_pcode(pcode, "\npush constant %s" % constant, debug)
        return pcode


def compile_call(
    pcode: list[str],
    call_class: str,
    call_func: str,
    statement: str,
    class_name: str,
    exp_buffer: list[str] | None = None,
    class_dict: dict | None = None,
    qualified: bool = False,
) -> list[str]:
    """
    Emit pcode when call encountered, discard return on do call.

    :param pcode: VM pseudocode output buffer.
    :param call_class: Name of the class being called.
    :param call_func: Name of the function being called.
    :param statement: Enclosing statement type.
    :param class_name: Name of the current class.
    :param exp_buffer: Expression buffer for deferred output.
    :param class_dict: Symbol table dictionary.
    :param qualified: Whether the call is fully qualified.
    :return: Updated pcode or exp_buffer.
    :raises ValueError: If class or function name is invalid.
    :raises NotImplementedError: If exp_buffer is not a list.
    """
    if not call_class:
        raise ValueError("illegal class: '%s'" % call_class)
    if not call_func:
        raise ValueError("illegal callee: '%s'" % call_func)

    # count arguments
    num_args = 0
    if call_class in sys_func:
        num_args = sys_func[call_class][call_func]["len"]

    elif call_class in class_dict:
        for arg in class_dict[call_class][call_func]["args"]:
            if class_dict[call_class][call_func]["args"][arg]["kind"] == "argument":
                num_args += 1

        if class_dict[call_class][call_func]["type"] == "method":
            num_args += 1  # this

    if type(exp_buffer) is list:
        if statement == "do" and not exp_buffer:
            # except when call is part of expression
            exp_buffer.append("pop temp 0 // discard return on do call")

        if qualified:
            exp_buffer.append("call %s.%s %s // qualified" % (call_class, call_func, num_args))
        else:
            exp_buffer.append("call %s.%s %s // unqualified" % (call_class, call_func, num_args))

        return exp_buffer

    else:
        raise NotImplementedError


def compile_return(
    pcode: list[str],
    class_dict: dict,
    class_name: str,
    func_name: str,
    debug: bool = False,
) -> list[str]:
    """
    Emit pcode when return encountered.

    Return expression will compile without extra handling.

    :param pcode: VM pseudocode output buffer.
    :param class_dict: Symbol table dictionary.
    :param class_name: Name of the enclosing class.
    :param func_name: Name of the enclosing function.
    :param debug: Enable verbose output.
    :return: Updated pseudocode buffer.
    """
    if class_dict[class_name][func_name]["type"] == "void":
        pcode = store_pcode(pcode, "push constant 0 // void return", debug)
    pcode = store_pcode(pcode, "\nreturn", debug)
    return pcode


def compile_boolean(
    pcode: list[str],
    value: str,
    exp_buffer: list[str] | None = None,
    debug: bool = False,
) -> list[str]:
    """
    Store pcode in exp_buffer so its emitted when expression is closed.

    :param pcode: VM pseudocode output buffer.
    :param value: Boolean value string ("true" or "false").
    :param exp_buffer: Expression buffer for deferred output.
    :param debug: Enable verbose output.
    :return: Updated pcode or exp_buffer.
    :raises ValueError: If boolean value is invalid.
    """
    if value not in ("true", "false"):
        raise ValueError("illegal boolean value '%s'" % value)

    if type(exp_buffer) is list:
        if value == "true":
            # this is in reverse due to how exp_buffer is unpacked
            exp_buffer.append("not // true (2/2)")
            exp_buffer.append("push constant 0 // true (1/2)")
        elif value == "false":
            exp_buffer.append("push constant 0 // false")
        return exp_buffer

    else:
        if value == "true":
            pcode = store_pcode(pcode, "\npush constant 0 // true (1/2)", debug)
            pcode = store_pcode(pcode, "\nnot // true (2/2)", debug)
        elif value == "false":
            pcode = store_pcode(pcode, "\npush constant 0 // false", debug)
        return pcode


def compile_while(pcode: list[str], while_count: int, debug: bool = False) -> tuple[list[str], int]:
    """
    Emit pcode when while encountered.

    :param pcode: VM pseudocode output buffer.
    :param while_count: Current while label counter.
    :param debug: Enable verbose output.
    :return: Updated pcode and while_count.
    """
    pcode = store_pcode(pcode, "\nlabel WHILE_EXP%s // begin while expression" % while_count, debug)
    return pcode, while_count


def compile_var(
    pcode: list[str],
    class_dict: dict,
    class_name: str,
    func_name: str,
    var_name: str,
    var_scope: str,
    exp_buffer: list[str] | None = None,
    array: bool = False,
    debug: bool = False,
) -> list[str]:
    """
    Emit pcode when var encountered.

    :param pcode: VM pseudocode output buffer.
    :param class_dict: Symbol table dictionary.
    :param class_name: Name of the enclosing class.
    :param func_name: Name of the enclosing function.
    :param var_name: Name of the variable.
    :param var_scope: Scope of the variable.
    :param exp_buffer: Expression buffer for deferred output.
    :param array: Whether variable is an array access.
    :param debug: Enable verbose output.
    :return: Updated pcode or exp_buffer.
    :raises ValueError: If variable scope, type, or kind is invalid.
    """
    if var_scope not in ("local", "member"):
        raise ValueError("Unexpected scope '%s'" % var_scope)

    if var_scope == "local":
        if not class_dict[class_name][func_name]["args"][var_name]["type"]:
            raise ValueError("illegal type '%s'" % class_dict[class_name][func_name]["args"][var_name]["type"])
        if not class_dict[class_name][func_name]["args"][var_name]["kind"]:
            raise ValueError("illegal kind '%s'" % class_dict[class_name][func_name]["args"][var_name]["kind"])

    elif var_scope == "member":
        if not class_dict[class_name]["args"][var_name]["type"]:
            raise ValueError("illegal type '%s'" % class_dict[class_name]["args"][var_name]["type"])
        if not class_dict[class_name]["args"][var_name]["kind"]:
            raise ValueError("illegal kind '%s'" % class_dict[class_name]["args"][var_name]["kind"])

    if type(exp_buffer) is list:
        if var_scope == "local":
            exp_buffer.append(
                "push %s %s // %s"
                % (
                    class_dict[class_name][func_name]["args"][var_name]["kind"],
                    class_dict[class_name][func_name]["args"][var_name]["index"],
                    var_name,
                )
            )
            if array:
                exp_buffer[-1] = exp_buffer[-1] + " (*array var)"

            return exp_buffer

        elif var_scope == "member":
            if class_dict[class_name]["args"][var_name]["kind"] == "static":
                exp_buffer.append(
                    "push static %s // %s" % (class_dict[class_name]["args"][var_name]["index"], var_name)
                )

            elif class_dict[class_name]["args"][var_name]["kind"] == "field":
                exp_buffer.append("push this %s // %s" % (class_dict[class_name]["args"][var_name]["index"], var_name))
            else:
                raise ValueError("unexpected kind: '%s'" % class_dict[class_name]["args"][var_name]["kind"])

            if array:
                exp_buffer[-1] = exp_buffer[-1] + " (*array var)"

            return exp_buffer

    else:
        if var_scope == "local":
            pcode = store_pcode(
                pcode,
                "\npush %s %s // %s"
                % (
                    class_dict[class_name][func_name]["args"][var_name]["kind"],
                    class_dict[class_name][func_name]["args"][var_name]["index"],
                    var_name,
                ),
                debug,
            )
            if array:
                pcode[-1] = pcode[-1].rstrip("\n") + " (*array var)\n"

            return pcode

        elif var_scope == "member":
            if class_dict[class_name]["args"][var_name]["kind"] == "static":
                pcode = store_pcode(
                    pcode,
                    "\npush static %s // %s" % (class_dict[class_name]["args"][var_name]["index"], var_name),
                    debug,
                )

            elif class_dict[class_name]["args"][var_name]["kind"] == "field":
                pcode = store_pcode(
                    pcode, "\npush this %s // %s" % (class_dict[class_name]["args"][var_name]["index"], var_name), debug
                )
            else:
                raise ValueError("unexpected kind: '%s'" % class_dict[class_name]["args"][var_name]["kind"])

            if array:
                pcode[-1] = pcode[-1].rstrip("\n") + " (*array var)\n"

            return pcode


def compile_string(pcode: list[str], string: str, debug: bool = False) -> list[str]:
    """
    Compile a string constant into pcode.

    :param pcode: VM pseudocode output buffer.
    :param string: String constant value.
    :param debug: Enable verbose output.
    :return: Updated pseudocode buffer.
    """
    pcode = store_pcode(pcode, "push constant %s // strlen" % len(string), debug)
    pcode = store_pcode(pcode, 'call String.new 1 // "%s"' % string, debug)
    for c, char in enumerate(string):
        pcode = compile_char(pcode, char, debug=debug)
        pcode = store_pcode(pcode, "call String.appendChar 2", debug)
    return pcode


def compile_char(pcode: list[str], char: str, debug: bool = False) -> list[str]:
    """
    Compile a character constant into pcode.

    :param pcode: VM pseudocode output buffer.
    :param char: Single character to compile.
    :param debug: Enable verbose output.
    :return: Updated pseudocode buffer.
    """
    global char_map
    pcode = store_pcode(pcode, "push constant %s // '%s' (char)" % (char_map[char], char), debug)
    return pcode


def expression_handler(
    pcode: list[str],
    statement: str,
    exp_buffer: list[str],
    class_dict: dict | None = None,
    identifier: str | None = None,
    class_name: str | None = None,
    func_name: str | None = None,
    parent_obj: str | None = None,
    child_func: str | None = None,
    symbol: str | None = None,
    keyword: str | None = None,
    debug: bool = False,
) -> tuple[list[str], list[str], str | None, str | None]:
    """
    Expressions call the buffered version of compile functions so they are parsed first in, last out.

    Expressions are found in let (rhs), array indexes, if/while conditions and optionally as return values.

    :param pcode: VM pseudocode output buffer.
    :param statement: Enclosing statement type.
    :param exp_buffer: Expression buffer for deferred output.
    :param class_dict: Symbol table dictionary.
    :param identifier: Current identifier token.
    :param class_name: Name of the enclosing class.
    :param func_name: Name of the enclosing function.
    :param parent_obj: Parent object for qualified calls.
    :param child_func: Child function for qualified calls.
    :param symbol: Current symbol token.
    :param keyword: Current keyword token.
    :param debug: Enable verbose output.
    :return: Tuple of pcode, exp_buffer, parent_obj, child_func.
    :raises NameError: If referenced class is not found.
    """
    if symbol:
        if symbol in ("(", "["):
            pcode = store_pcode(pcode, "// %s" % symbol, debug)

            # on unqualified class method call inject implicit this param before others
            if exp_buffer and exp_buffer[-1].startswith("call") and exp_buffer[-1].endswith("// unqualified"):
                call_class, call_func = exp_buffer[-1].split()[1].split(".")

                if call_class in sys_func:
                    if sys_func[call_class][call_func]["kind"] == "method":
                        store_pcode(pcode, "push pointer 0 // this", debug)

                elif call_class in class_dict:
                    if class_dict[call_class][call_func]["kind"] == "method":
                        store_pcode(pcode, "push pointer 0 // this", debug)
                else:
                    raise NameError("class not found: '%s'" % call_class)

            exp_buffer.append("// %s" % symbol)  # inject expression marker into buffer

        elif symbol == ")":
            # process everything up to & including the last expression opening from buffer
            pcode, exp_buffer = pop_buffer(pcode, exp_buffer, stop_at="// (", pop_incl=True, debug=debug)
            pcode = store_pcode(pcode, "// %s" % symbol, debug)

            # pop the call only when all expressions following it exhausted
            if exp_buffer and exp_buffer[-1].startswith("call"):
                pcode = store_pcode(pcode, exp_buffer.pop(), debug)

        elif symbol == "]":
            # process everything up to & including the last expression opening from buffer
            pcode, exp_buffer = pop_buffer(pcode, exp_buffer, stop_at="// [", pop_incl=True, debug=debug)
            pcode = store_pcode(pcode, "// %s" % symbol, debug)

            # pop the array var as well (if present)
            if "(*array var)" in exp_buffer[-1]:
                pcode = store_pcode(pcode, exp_buffer.pop(), debug)

        elif symbol == ",":
            # process everything up to but not including the last expression opening from buffer
            pcode, exp_buffer = pop_buffer(pcode, exp_buffer, stop_at="// (")  # i.e. expression was not bracketed

        # else: symbols will be processed into exp_buffer during normal compilation (elem.tag / op_map)

    elif identifier:
        # identify array var
        array = False
        if func_name and identifier in class_dict[class_name][func_name]["args"]:
            if class_dict[class_name][func_name]["args"][identifier]["type"] == "Array":
                array = True
                parent_obj = "Array"
        elif identifier in class_dict[class_name]["args"]:
            if class_dict[class_name]["args"][identifier]["type"] == "Array":
                array = True
                parent_obj = "Array"

        # attempt to lookup class/func attributes (2 passes)
        if not array and not parent_obj:
            if identifier in sys_func or identifier in class_dict:
                parent_obj = identifier

            elif func_name and identifier in class_dict[class_name][func_name]["args"]:
                if class_dict[class_name][func_name]["args"][identifier]["type"] in objects:
                    parent_obj = class_dict[class_name][func_name]["args"][identifier]["type"]

            elif identifier in class_dict[class_name]["args"]:
                if class_dict[class_name]["args"][identifier]["type"] in objects:
                    parent_obj = class_dict[class_name]["args"][identifier]["type"]

        elif not array and parent_obj and not child_func:
            if parent_obj in sys_func:
                if identifier in sys_func[parent_obj]:
                    child_func = identifier
            else:
                if identifier in class_dict[parent_obj]:
                    child_func = identifier

        # if parent/child pair found assume call & compile
        if not array and parent_obj and child_func:
            exp_buffer = compile_call(
                pcode,
                parent_obj,
                child_func,
                statement,
                class_name=class_name,
                exp_buffer=exp_buffer,
                class_dict=class_dict,
                qualified=True,
            )
            parent_obj = child_func = ""

        # compile unqualified function call
        elif not array and identifier in class_dict[class_name]:
            exp_buffer = compile_call(
                pcode,
                class_name,
                identifier,
                statement,
                class_name=class_name,
                exp_buffer=exp_buffer,
                class_dict=class_dict,
                qualified=False,
            )
            parent_obj = child_func = ""

        # compile as regular var (local)
        elif identifier in class_dict[class_name][func_name]["args"]:
            if array:
                # if var is array compile to buffer
                exp_buffer = compile_var(
                    pcode,
                    class_dict,
                    class_name,
                    func_name,
                    identifier,
                    "local",
                    exp_buffer=exp_buffer,
                    array=array,
                    debug=debug,
                )
            else:
                # otherwise if var found compile directly (not buffer)
                pcode = compile_var(pcode, class_dict, class_name, func_name, identifier, "local", debug=debug)

        # compile as regular var (member)
        elif identifier in class_dict[class_name]["args"]:
            if array:
                # if var is array compile to buffer
                exp_buffer = compile_var(
                    pcode,
                    class_dict,
                    class_name,
                    func_name,
                    identifier,
                    "member",
                    exp_buffer=exp_buffer,
                    array=array,
                    debug=debug,
                )
            else:
                # otherwise if var found compile directly (not buffer)
                pcode = compile_var(pcode, class_dict, class_name, func_name, identifier, "member", debug=debug)

        else:
            if identifier != parent_obj:  # ignore first instance of parent_obj (first pass)
                raise NameError("unexpected identifier: %s" % identifier)

    elif keyword == "this":
        pcode = store_pcode(pcode, "push pointer 0 // this", debug)

    elif keyword == "null":
        pcode = store_pcode(pcode, "push constant 0 // null", debug)

    return pcode, exp_buffer, parent_obj, child_func


def pop_buffer(
    pcode: list[str],
    exp_buffer: list[str],
    stop_at: str | None = None,
    pop_incl: bool = False,
    debug: bool = False,
) -> tuple[list[str], list[str]]:
    """
    Selectively or entirely process the expression buffer.

    :param pcode: VM pseudocode output buffer.
    :param exp_buffer: Expression buffer to pop from.
    :param stop_at: Value to stop popping at.
    :param pop_incl: Whether to also pop the stop value.
    :param debug: Enable verbose output.
    :return: Updated pcode and exp_buffer.
    :raises LookupError: If stop_at value is not in the buffer.
    """
    if stop_at and exp_buffer:
        if stop_at not in exp_buffer:
            raise LookupError(f"stop_value '{stop_at}' was not found in exp_buffer: {exp_buffer}")

        while exp_buffer[-1] != stop_at:
            pcode = store_pcode(pcode, exp_buffer.pop(), debug)

        if pop_incl:
            exp_buffer.pop()  # already emitted by caller
    else:
        while exp_buffer:
            store_pcode(pcode, exp_buffer.pop(), debug)
    return pcode, exp_buffer


def main(filepath: str, file_list: list[str], debug: bool = False, asserts: dict | None = None) -> list[str]:
    """
    Main engine.

    - parse the AST
    - prescan the AST for class/function declarations
    - tag metadata as tokens are parsed
      - tag scope is defined by tree depth, some need to be carried forward, others cleared on depth change
    - call compile functions once enough information is parsed

    :param filepath: Path to the Jack source file.
    :param file_list: List of related Jack file paths.
    :param debug: Enable verbose output.
    :param asserts: Optional assert directives extracted from source.
    :return: Compiled VM pseudocode lines.
    :raises LookupError: If a required symbol is not found.
    :raises NameError: If a referenced name is undefined.
    :raises SyntaxError: If source has syntax errors.
    :raises ValueError: If an invalid value is encountered.
    """
    pcode = []
    class_dict = {}

    # persist through loop scope
    # pre-process tree for class/function/var decs (all related files)
    for pre_file in file_list:
        class_name = statement = func_name = func_kind = keyword = var_type = func_type = ""

        if debug:
            print("Pre-scan: %s" % pre_file)
        tree = Et.parse(pre_file.replace(".jack", ".xml"))

        for elem in tree.iter():
            elem.tag = elem.tag or ""
            elem.text = (elem.text or "")[1:-1]  # strip outermost padding

            # skip rootnode
            if elem.tag == "class":
                continue

            if len(elem):  # has children
                keyword = var_type = func_type = ""  # reset tag context on depth change

            if elem.tag == "keyword":
                if not keyword:
                    keyword = elem.text  # preserved for later
                elif not var_type:
                    var_type = elem.text  # preserved for later

                # set on first instance
                if elem.text in ("function", "method", "constructor"):
                    func_kind = elem.text

                # multiple token scope
                if keyword in ("function", "method", "constructor"):
                    if not func_type:
                        # type could be keyword or identifier
                        if var_type and (var_type in types or var_type in objects):
                            func_type = var_type
                            continue
                        # else: type wasn't a keyword

            elif elem.tag == "identifier":
                identifier = elem.text

                if keyword == "class":
                    class_name = identifier  # preserved for later
                    pcode, class_dict = compile_class(pcode, class_name, class_dict, debug=debug)

                elif keyword in ("function", "method", "constructor"):
                    # type could be keyword or identifier
                    if not func_type:
                        if identifier in types or identifier in objects:
                            func_type = identifier
                            continue
                        else:
                            raise NameError("unexpected type '%s'" % identifier)

                    elif identifier not in types and identifier not in objects:
                        func_name = identifier
                        pcode, class_dict = compile_function(
                            pcode, func_name, func_type, func_kind, class_dict, class_name, debug=debug
                        )
                    else:
                        raise NameError("illegal identifier '%s'" % identifier)

                elif statement in ("var", "param", "class_var"):
                    # external or built-in types
                    if identifier in types or identifier in objects:
                        var_type = identifier
                        continue  # process on next loop

                    # param in function declaration
                    elif keyword in types or keyword in objects:
                        var_type = keyword

                    # local var passed as param
                    elif func_name and (
                        identifier in class_dict[class_name][func_name]["args"]
                        or identifier in class_dict[class_name]["args"]
                    ):
                        continue  # already processed

                    if not var_type:
                        raise NameError("var type not found/defined")

                    # no if_count, while_count, exp_buffer during pre_scan
                    if keyword in ("field", "static"):
                        pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                            pcode=pcode,
                            statement=statement,
                            class_dict=class_dict,
                            class_name=class_name,
                            func_name=func_name,
                            var_type=var_type,
                            var_name=identifier,
                            var_kind=keyword,
                            prescan=True,
                            debug=debug,
                        )
                    else:
                        pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                            pcode=pcode,
                            statement=statement,
                            class_dict=class_dict,
                            class_name=class_name,
                            func_name=func_name,
                            var_type=var_type,
                            var_name=identifier,
                            prescan=True,
                            debug=debug,
                        )

            elif elem.tag == "classVarDec":
                statement = "class_var"
            elif elem.tag == "varDec":
                statement = "var"
            elif elem.tag == "parameterList":
                statement = "param"
            elif elem.tag == "doStatement":
                statement = "do"
            elif elem.tag == "letStatement":
                statement = "let"
            elif elem.tag == "returnStatement":
                statement = "return"

    # persist through loop scope
    exp_buffer = []
    block = []
    if_list = []
    while_list = []
    end_block = first_eq = False
    num_args = while_count = if_count = let_count = do_count = return_count = 0
    class_name = statement = func_name = func_type = keyword = var_type = var_kind = identifier = ""
    lhs_var_name = lhs_array = parent_obj = child_func = func_kind = var_scope = ""

    # walk AST
    if debug:
        print("Parsing AST: %s" % filepath)
        print()  # formatting

    tree = Et.parse(filepath.replace(".jack", ".xml"))
    for elem in tree.iter():
        elem.tag = elem.tag or ""
        elem.text = (elem.text or "")[1:-1]  # strip outermost padding

        # skip rootnode
        if elem.tag == "class":
            continue

        if lhs_array:
            if not elem.text == "[":
                lhs_array = None  # None signifies lhs_array was true but now compiled/consumed

        # if stand-alone var array buffered in a non-assignment statement process it now
        if statement != "let" and elem.text != "[" and exp_buffer and exp_buffer[-1].endswith("(*array var)"):
            pcode = store_pcode(pcode, exp_buffer.pop(), debug)

        if end_block:
            if block:
                # if-without-else
                if elem.text != "else" and block[-1] == "if":
                    pcode = store_pcode(pcode, "\nlabel IF_FALSE%s // end if_block" % (if_list[-1]), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from block" % block.pop(), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from if_list" % if_list.pop(), debug)

                # if-else
                elif block[-1] == "else":
                    pcode = store_pcode(pcode, "\nlabel IF_END%s // end if_block" % (if_list[-1]), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from block" % block.pop(), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from if_list" % if_list.pop(), debug)

                # if-else
                elif block[-1] == "if":
                    pcode = store_pcode(pcode, "\ngoto IF_END%s // end if_true_block" % (if_list[-1]), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from block" % block.pop(), debug)

                elif block[-1] == "while":
                    pcode = store_pcode(
                        pcode, "\ngoto WHILE_EXP%s // loop to start of while_block" % (while_list[-1]), debug
                    )
                    pcode = store_pcode(pcode, "\nlabel WHILE_END%s // end while_block" % (while_list[-1]), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from block" % block.pop(), debug)
                    pcode = store_pcode(pcode, "// popping '%s' from while_list" % while_list.pop(), debug)

                else:
                    raise ValueError("unexpected block '%s'" % block[-1])

            end_block = False

        # has children
        if len(elem):
            # reset select tag contexts on depth change
            keyword = var_type = var_kind = identifier = var_scope = ""

        # set keyword flag (single depth)
        if elem.tag == "keyword":
            if elem.text in ("true", "false"):
                exp_buffer = compile_boolean(pcode, elem.text, exp_buffer, debug=debug)
                continue

            elif elem.text in ("this", "null"):
                pcode, exp_buffer, parent_obj, child_func = expression_handler(
                    pcode,
                    statement,
                    exp_buffer,
                    parent_obj=parent_obj,
                    child_func=child_func,
                    keyword=elem.text,
                    debug=debug,
                )
                continue

            elif elem.text == "if":
                statement = "if"

            elif elem.text == "let":
                statement = "let"

            elif elem.text == "return":
                statement = "return"

            # set on first instance only
            if elem.text in ("function", "method", "constructor"):
                func_kind = elem.text
                while_count = if_count = 0
                if while_list or if_list:
                    raise ValueError("while (%s) or if (%s) list was not empty" % (while_list, if_list))

            if not keyword:
                keyword = elem.text  # preserved for later
            elif not var_type:
                var_type = elem.text  # preserved for later
            else:
                raise ValueError("unexpected keywords '%s' '%s' '%s'" % (keyword, var_type, elem.text))

        elif elem.tag == "identifier":
            if keyword or statement:
                identifier = elem.text

                if class_name:
                    if func_name and identifier in class_dict[class_name][func_name]["args"]:
                        var_scope = "local"
                    elif identifier in class_dict[class_name]["args"]:
                        var_scope = "member"

                # class declaration
                if keyword == "class":
                    class_name = identifier  # preserved for later
                    pcode, class_dict = compile_class(pcode, class_name, class_dict, debug=debug)

                # function declaration
                elif keyword in ("function", "constructor", "method"):
                    if identifier in objects or identifier in types:
                        continue  # identifier was object type not function name
                    else:
                        func_name = identifier  # sometimes needs to overwrite the previous function
                        let_count = 0
                        do_count = 0
                        return_count = 0

                    if not func_type:
                        if keyword == "constructor":
                            func_type = class_name
                        else:
                            func_type = class_dict[class_name][func_name]["type"]

                    pcode, class_dict = compile_function(
                        pcode, func_name, func_type, func_kind, class_dict, class_name, debug=debug
                    )

                # var declaration (local or function parameter)
                elif statement in ("var", "param", "class_var"):
                    # catch param case where type is only keyword (not a vardec so not in pre-scan)
                    if not var_type:
                        if func_name and identifier in class_dict[class_name][func_name]["args"]:
                            var_type = class_dict[class_name][func_name]["args"][identifier]["type"]
                            var_kind = class_dict[class_name][func_name]["args"][identifier]["kind"]

                        elif identifier in class_dict[class_name]["args"]:
                            var_type = class_dict[class_name]["args"][identifier]["type"]
                            var_kind = class_dict[class_name]["args"][identifier]["kind"]
                        # else: probably an object type and not a var (caught below)

                    if not var_type:
                        # built-in or external types
                        if identifier in types or identifier in objects:
                            var_type = identifier
                            continue  # process on next loop
                        else:
                            raise NameError("No type found for '%s'" % identifier)

                    if keyword in ("field", "static"):
                        pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                            pcode=pcode,
                            statement=statement,
                            class_dict=class_dict,
                            class_name=class_name,
                            func_name=func_name,
                            var_type=var_type,
                            var_name=identifier,
                            while_count=while_count,
                            if_count=if_count,
                            var_kind=keyword,
                            debug=debug,
                        )
                    else:
                        if not var_kind and var_type in kinds:
                            var_kind = var_type

                        pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                            pcode=pcode,
                            statement=statement,
                            class_dict=class_dict,
                            class_name=class_name,
                            func_name=func_name,
                            var_type=var_type,
                            var_name=identifier,
                            while_count=while_count,
                            if_count=if_count,
                            var_kind=var_kind,
                            debug=debug,
                        )

                    keyword = var_type = ""

                # collect class/func for call, compile when paired
                elif statement == "do":
                    pcode, exp_buffer, parent_obj, child_func = expression_handler(
                        pcode,
                        statement,
                        exp_buffer,
                        class_dict=class_dict,
                        identifier=identifier,
                        class_name=class_name,
                        func_name=func_name,
                        parent_obj=parent_obj,
                        child_func=child_func,
                        debug=debug,
                    )

                # buffer assignee compilation first, then buffer any remaining expressions
                elif statement == "let":
                    if not lhs_var_name:
                        # preserved for later
                        lhs_var_name = identifier
                        if lhs_var_name in class_dict[class_name][func_name]["args"]:
                            var_scope = "local"
                            if class_dict[class_name][func_name]["args"][lhs_var_name]["type"] == "Array":
                                # None signifies lhs_array was true but already compiled/consumed
                                if lhs_array is not None:
                                    lhs_array = True

                        elif lhs_var_name in class_dict[class_name]["args"]:
                            var_scope = "member"
                            if class_dict[class_name]["args"][lhs_var_name]["type"] == "Array":
                                # None signifies lhs_array was true but already compiled/consumed
                                if lhs_array is not None:
                                    lhs_array = True
                        else:
                            raise NameError("var not found: %s" % lhs_var_name)

                        pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                            pcode=pcode,
                            statement=statement,
                            class_dict=class_dict,
                            class_name=class_name,
                            func_name=func_name,
                            var_name=identifier,
                            exp_buffer=exp_buffer,
                            while_count=while_count,
                            if_count=if_count,
                            lhs_array=lhs_array,
                            var_scope=var_scope,
                            debug=debug,
                        )
                    else:
                        pcode, exp_buffer, parent_obj, child_func = expression_handler(
                            pcode,
                            statement,
                            exp_buffer,
                            class_dict=class_dict,
                            identifier=identifier,
                            class_name=class_name,
                            func_name=func_name,
                            parent_obj=parent_obj,
                            child_func=child_func,
                            debug=debug,
                        )

                # buffer while/if expressions
                elif statement in ("while", "if", "return"):
                    pcode, exp_buffer, parent_obj, child_func = expression_handler(
                        pcode,
                        statement,
                        exp_buffer,
                        class_dict=class_dict,
                        identifier=identifier,
                        class_name=class_name,
                        func_name=func_name,
                        parent_obj=parent_obj,
                        child_func=child_func,
                        debug=debug,
                    )
                else:
                    raise ValueError(
                        "unexpected keyword/statement '%s'/'%s' for identifier '%s'" % (keyword, statement, elem.text)
                    )
            else:
                raise ValueError("no keyword or statement defined for '%s'" % elem.text)

        elif elem.tag == "symbol":
            symbol = elem.text.strip()

            if symbol in ".":
                pass
            elif symbol == "=" and statement == "let" and not first_eq:
                # ignore first '=' in let statement while allowing subsequent ones to compile
                first_eq = True

            elif symbol == "{":
                if exp_buffer:
                    raise LookupError("unparsed expressions still in buffer: %s" % exp_buffer)

                elif keyword == "else":  # no explicit statement type for else
                    block.append(keyword)
                    # close the latest if_true block but don't dec/pop until IF_END
                    pcode = store_pcode(pcode, "\nlabel IF_FALSE%s // begin if_false_block" % (if_list[-1]), debug)

                elif statement == "if":
                    block.append(statement)
                    if_list.append(if_count)
                    pcode = store_pcode(
                        pcode, "\nif-goto IF_TRUE%s // end if expression / if_true_jump" % if_count, debug
                    )
                    pcode = store_pcode(pcode, "\ngoto IF_FALSE%s // if_false_jump" % if_count, debug)
                    pcode = store_pcode(pcode, "\nlabel IF_TRUE%s // begin if_true_block" % if_count, debug)
                    if_count += 1

                elif statement == "while":
                    block.append(statement)
                    while_list.append(while_count)
                    pcode = store_pcode(pcode, "\nnot // end while expression / while_jump (1/2)", debug)
                    pcode = store_pcode(
                        pcode, "\nif-goto WHILE_END%s // while_jump (2/2) [break loop if not]" % while_count, debug
                    )
                    while_count += 1

                elif statement == "param":
                    pass

                elif keyword not in ("class", "function") and not if_list:
                    raise ValueError("unexpected '{' (statement '%s', keyword '%s')" % (statement, keyword))

            elif symbol == "}":
                end_block = True  # compilation triggered on next token due to if-no-else case

            elif symbol == "[":
                if lhs_array:
                    # array[index] (content) assignment
                    exp_buffer.pop()  # remove the previous entry which assumed assignment to array var
                    exp_buffer.append("pop that 0 // **array[index] = result")
                    exp_buffer.append("push temp 0 // restore result")
                    exp_buffer.append("pop pointer 1 // that = *array[index]")
                    exp_buffer.append("pop temp 0 // save result (rhs/call/expression)")

                    if var_scope == "local":
                        exp_buffer.append(
                            "push %s %s // %s (*array var)"
                            % (
                                class_dict[class_name][func_name]["args"][identifier]["kind"],
                                class_dict[class_name][func_name]["args"][identifier]["index"],
                                identifier,
                            )
                        )

                    elif var_scope == "member":
                        exp_buffer.append(
                            "push %s %s // %s (*array var)"
                            % (
                                class_dict[class_name]["args"][identifier]["kind"].replace("field", "this"),
                                class_dict[class_name]["args"][identifier]["index"],
                                identifier,
                            )
                        )

                    else:
                        raise ValueError("Unexpected var_scope %s" % var_scope)

                    lhs_array = None  # None signifies lhs_array was true but now compiled/consumed

                # mark the start of a new expression
                pcode, exp_buffer, parent_obj, child_func = expression_handler(
                    pcode,
                    statement,
                    exp_buffer,
                    class_dict=class_dict,
                    identifier=identifier,
                    class_name=class_name,
                    func_name=func_name,
                    symbol=symbol,
                    debug=debug,
                )

            elif symbol == "]":
                # pop the last buffered expression (including the brackets)
                pcode, exp_buffer, parent_obj, child_func = expression_handler(
                    pcode,
                    statement,
                    exp_buffer,
                    class_dict=class_dict,
                    identifier=identifier,
                    class_name=class_name,
                    func_name=func_name,
                    symbol=symbol,
                    debug=debug,
                )

                pcode = store_pcode(pcode, "add // *array var + [index]", debug)

                # if part of an expression deref the array[index] immediately
                if not lhs_array and not find_parent(tree, elem).tag == "letStatement":
                    pcode = store_pcode(pcode, "pop pointer 1 // *that =", debug)
                    pcode = store_pcode(pcode, "push that 0 // **that (array[index])", debug)

            elif symbol == "(":
                # mark the start of a new expression
                pcode, exp_buffer, parent_obj, child_func = expression_handler(
                    pcode,
                    statement,
                    exp_buffer,
                    class_dict=class_dict,
                    identifier=identifier,
                    class_name=class_name,
                    func_name=func_name,
                    symbol=symbol,
                    debug=debug,
                )

            elif symbol == ")":
                # pop the last buffered expression (including the brackets)
                pcode, exp_buffer, parent_obj, child_func = expression_handler(
                    pcode,
                    statement,
                    exp_buffer,
                    class_dict=class_dict,
                    identifier=identifier,
                    class_name=class_name,
                    func_name=func_name,
                    symbol=symbol,
                    debug=debug,
                )

            elif symbol == ",":
                # pop any buffered expressions up to but not including the next opening bracket
                pcode, exp_buffer, parent_obj, child_func = expression_handler(
                    pcode,
                    statement,
                    exp_buffer,
                    class_dict=class_dict,
                    identifier=identifier,
                    class_name=class_name,
                    func_name=func_name,
                    symbol=symbol,
                    debug=debug,
                )

            elif symbol == ";":
                pcode, exp_buffer = pop_buffer(pcode, exp_buffer, debug=debug)  # empty the buffer

                if statement == "return":
                    pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                        pcode=pcode,
                        class_dict=class_dict,
                        class_name=class_name,
                        func_name=func_name,
                        statement=statement,
                        while_count=while_count,
                        if_count=if_count,
                        debug=debug,
                    )

                if exp_buffer:
                    raise LookupError("unparsed expressions still in buffer: %s" % exp_buffer)

                # emit ASSERT if this let/do/return statement has one
                if statement == "let" and asserts and (func_name, "let", let_count) in asserts:
                    pcode = store_pcode(pcode, "// %s" % asserts[(func_name, "let", let_count)], debug)
                elif statement == "do" and asserts and (func_name, "do", do_count) in asserts:
                    assert_text = "// %s" % asserts[(func_name, "do", do_count)]
                    if "REACHABLE" in assert_text:
                        # insert before pop temp 0 so ASSERT lands on call site
                        for _i in range(len(pcode) - 1, -1, -1):
                            if pcode[_i].startswith("pop temp 0"):
                                pcode.insert(_i, assert_text + "\n")
                                break
                    else:
                        pcode = store_pcode(pcode, assert_text, debug)
                elif statement == "return" and asserts and (func_name, "return", return_count) in asserts:
                    pcode = store_pcode(pcode, "// %s" % asserts[(func_name, "return", return_count)], debug)

                # reset statement scoped vars
                statement = lhs_var_name = lhs_array = ""
                first_eq = False

            elif symbol in op_map:
                if symbol == "-" and find_parent(tree, elem).tag == "term":
                    exp_buffer.append("neg")  # not "sub"
                elif exp_buffer and exp_buffer[-1] in op_words:
                    # if concurrent symbols are buffered pop the previous one first
                    # i.e. process a & b & c as ((a & b) & c)
                    if symbol != "~":
                        # '~' can be consecutive as it only affects one term
                        # i.e. process a & b & ~c as ((a & b) & (~c))
                        pcode = store_pcode(pcode, exp_buffer.pop(), debug)
                    exp_buffer.append(op_map[symbol])
                elif exp_buffer and exp_buffer[-1].endswith("(*array var)"):
                    # if operating on naked array var pop that first
                    pcode = store_pcode(pcode, exp_buffer.pop(), debug)

                    # if this would then create double op pop first op
                    if exp_buffer and exp_buffer[-1] in op_words:
                        pcode = store_pcode(pcode, exp_buffer.pop(), debug)
                    exp_buffer.append(op_map[symbol])
                else:
                    exp_buffer.append(op_map[symbol])
            else:
                raise ValueError("unexpected symbol '%s'" % elem.text)

        elif elem.tag == "integerConstant":
            pcode = compile_constant(pcode, elem.text, debug=debug)

        elif elem.tag == "stringConstant":
            pcode = compile_string(pcode, elem.text, debug=debug)

        elif elem.tag == "ifStatement":
            statement = "if"
            pcode = store_pcode(pcode, "\n// begin if expression", debug)
        elif elem.tag == "whileStatement":
            statement = "while"
            pcode, class_dict, num_args, while_count, if_count, exp_buffer, lhs_array = compile_statement(
                pcode=pcode,
                statement=statement,
                class_dict=class_dict,
                num_args=num_args,
                while_count=while_count,
                if_count=if_count,
                exp_buffer=exp_buffer,
                class_name=class_name,
                debug=debug,
            )
        elif elem.tag == "varDec":
            statement = "var"
        elif elem.tag == "classVarDec":
            statement = "class_var"
        elif elem.tag == "parameterList":
            statement = "param"
        elif elem.tag == "doStatement":
            statement = "do"
            do_count += 1
        elif elem.tag == "letStatement":
            statement = "let"
            let_count += 1
        elif elem.tag == "returnStatement":
            statement = "return"
            return_count += 1
        elif elem.tag == "expressionList":
            pass

        # ignore the tags only used for grouping
        elif elem.tag in ("subroutineDec", "subroutineBody", "statements", "expression", "term"):
            pass

        else:
            raise SyntaxError("unparsed tag '%s'" % elem.tag)

    return pcode


def _compile(jack_filepaths: list[list[str]], debug: bool = False) -> None:
    """
    Loop across multiple files.

    - update the object list
    - call the main engine
    - write pcode to output file
    - where possible, enforce match to course compiled programs (.cc reference)

    :param jack_filepaths: Nested list of Jack file paths to compile.
    :param debug: Enable verbose output.
    :raises AssertionError: If compiled output doesn't match reference.
    """
    for file_list in jack_filepaths:
        # check external modules at runtime
        for _filepath in file_list:
            if os.path.basename(_filepath).replace(".jack", "") not in objects:
                objects.append(os.path.basename(_filepath).replace(".jack", ""))

        for _filepath in file_list:
            asserts = extract_asserts(_filepath)
            pcode = main(_filepath, file_list, debug=debug, asserts=asserts)

            vm_path = _filepath.replace(".jack", ".vm")
            cc_path = _filepath.replace(".jack", ".cc")

            # preserve course compiler output for comparison
            # i.e. if vm exists pre-compilation assumed to be from course compiler
            if os.path.exists(vm_path) and not os.path.exists(cc_path):
                os.rename(vm_path, cc_path)

            # strip debug for result comparison
            with open(vm_path, "w") as f:
                if debug:
                    print("\nCompiling: %s" % vm_path)

                for line in pcode:
                    if line.startswith("// ASSERT"):
                        f.write(line)  # preserve ASSERT directives
                    elif line.startswith("//"):
                        continue
                    else:
                        comment = line.find("//")
                        if comment != -1:
                            f.write(line[:comment].strip() + "\n")
                        else:
                            f.write(line)

    # enforce matching against course compiler references (.cc files)
    matches = []
    for file_list in jack_filepaths:
        for _filepath in file_list:
            cc_path = _filepath.replace(".jack", ".cc")
            if os.path.exists(cc_path):
                matches.append(cc_path)

    for match in matches:
        vm_path = match.replace(".cc", ".vm")
        with open(match) as org_file:
            with open(vm_path) as cur_file:
                cur_lines = (line for line in cur_file if not line.startswith("// ASSERT"))
                for index, (solution, current) in enumerate(zip(org_file, cur_lines)):
                    if solution != current:
                        total = sum(1 for _ in open(match))
                        raise AssertionError("%s mismatch after line %s/%s" % (vm_path, index, total))

    if debug and matches:
        print("\nAll compilation results match solution!")
        for match in matches:
            print("    " + match.replace(".cc", ".vm"))


if __name__ == "__main__":
    import sys
    import glob as _glob

    if len(sys.argv) > 1:
        _path = sys.argv[1]
        if os.path.isdir(_path):
            _files = sorted(_glob.glob(os.path.join(_path, "*.jack")))
        else:
            _files = [_path]
        _compile([_files], debug=False)
    else:
        from inputs import jack_filepath_lists

        _compile(jack_filepath_lists, debug=False)
