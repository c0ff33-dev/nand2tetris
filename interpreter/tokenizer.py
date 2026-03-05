"""
From a JACK source file tokenize every word/symbol in the source file into *T.xml.
"""

import xml.etree.ElementTree as ET
import re
import os

from xml.dom import minidom


def parse(
    word: str,
    keyword: bool | str,
    strings: dict[str, str],
    tokens: ET.Element,
    debug: bool = False,
) -> tuple[ET.Element, bool | str]:
    """
    Parse a word into XML token elements.

    :param word: The word to parse.
    :param keyword: Current keyword context flag.
    :param strings: Mapping of string placeholders to their values.
    :param tokens: The XML element to append tokens to.
    :param debug: Enable verbose output.
    :return: Tuple of (tokens element, updated keyword flag).
    """
    keywords = [
        "class",
        "constructor",
        "function",
        "method",
        "field",
        "static",
        "var",
        "int",
        "char",
        "boolean",
        "void",
        "true",
        "false",
        "null",
        "this",
        "let",
        "do",
        "if",
        "else",
        "while",
        "return",
    ]
    symbols = ["{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~", '"']
    types = ["Array"]

    # process string_constant placeholders
    if re.match(r"__string\d+__", word):
        if debug:
            print("<stringConstant> %s </stringConstant>" % strings[word])
        child = ET.SubElement(tokens, "stringConstant")
        child.text = " %s " % strings[word]
        return tokens, keyword

    # process symbols that have been parsed to single word
    if word in symbols:
        if debug:
            print("<symbol> %s </symbol>" % word.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;"))
        child = ET.SubElement(tokens, "symbol")
        child.text = " %s " % word  # etree will escape
        if word == ";":
            keyword = False  # disable once identifier(s) processed
        return tokens, keyword

    # search for symbols in word
    else:
        for i, char in enumerate(word):
            if char in symbols:
                if i == 0:  # can't slice [0:0]
                    tokens, keyword = parse(word[0], keyword, strings, tokens, debug=debug)  # process symbol
                    tokens, keyword = parse(word[1:], keyword, strings, tokens, debug=debug)
                else:
                    if word[:i]:
                        tokens, keyword = parse(
                            word[:i], keyword, strings, tokens, debug=debug
                        )  # process word prior to symbol
                        word = word[i:]  # truncate word to symbol char onwards
                        tokens, keyword = parse(word[0], keyword, strings, tokens, debug=debug)  # process symbol
                    if word[1:]:  # slices return '' if out of bounds
                        tokens, keyword = parse(
                            word[1:], keyword, strings, tokens, debug=debug
                        )  # any remaining word data
                return tokens, keyword

    # process regular words (no symbols)
    if word:  # word might be '' after slicing
        if word.isnumeric():
            if debug:
                print("<integerConstant> %s </integerConstant>" % word)
            child = ET.SubElement(tokens, "integerConstant")
            child.text = " %s " % word
        elif word in types:
            if debug:
                print("<identifier> %s </identifier>" % word)
            child = ET.SubElement(tokens, "identifier")
            child.text = " %s " % word
        elif keyword and word not in keywords:
            if debug:
                print("<identifier> %s </identifier>" % word)
            child = ET.SubElement(tokens, "identifier")
            child.text = " %s " % word
        elif word in keywords:
            if debug:
                print("<keyword> %s </keyword>" % word)
            child = ET.SubElement(tokens, "keyword")
            child.text = " %s " % word
            keyword = word  # set until corresponding identifier processed

    return tokens, keyword


def main(filepath: str, debug: bool = False) -> None:
    """
    Tokenize a Jack source file and write the token XML output.

    :param filepath: Path to the Jack source file.
    :param debug: Enable verbose output.
    """
    with open(filepath) as jack_file:
        jack_content = jack_file.readlines()

    block_comment = False
    strings = {}
    string_id = 0
    tokens = ET.Element("tokens")

    for line in jack_content:
        line = line.strip()
        if line == "" or line.startswith("//"):
            continue
        elif "/*" in line:
            if "*/" not in line:
                block_comment = True
            continue
        elif "*/" in line:
            block_comment = False
            continue

        if block_comment:
            continue

        if debug:
            print("// line:", line)

        # strip inline comments, respecting string literals (strings may contain //)
        in_string = False
        for i, ch in enumerate(line):
            if ch == '"':
                in_string = not in_string
            elif not in_string and line[i : i + 2] == "//":
                line = line[:i].strip()
                break

        # string_constant parsing — split by " gives alternating code/string parts
        # to handle multiple string literals in a line i.e. foobar("hello", "world");
        if '"' in line:
            parts = line.split('"')
            rebuilt = []
            for i, part in enumerate(parts):
                if i % 2 == 1:
                    placeholder = "__string%s__" % string_id
                    strings[placeholder] = part
                    rebuilt.append(" %s " % placeholder)
                    string_id += 1
                else:
                    rebuilt.append(part)
            line = "".join(rebuilt)
            if debug:
                print("// line post-replace:", line)

        words = line.split()
        keyword = False
        if debug:
            print("// words:", words)

        for word in words:
            tokens, keyword = parse(word, keyword, strings, tokens, debug=debug)

    # write/check output
    output_filepath = filepath.replace(".jack", "T.xml")
    tree_string = ET.tostring(tokens)
    raw_xml = minidom.parseString(tree_string)
    pretty_xml = raw_xml.toprettyxml(indent="").replace(r'<?xml version="1.0" ?>', "").strip()
    pretty_xml += "\n"

    if debug:
        print("Tokenized: %s" % output_filepath)
        print(pretty_xml)

    with open(output_filepath, "w") as output_file:
        output_file.write(pretty_xml)


if __name__ == "__main__":
    import sys
    import glob as _glob

    if len(sys.argv) > 1:
        _path = sys.argv[1]
        if os.path.isdir(_path):
            _files = sorted(_glob.glob(os.path.join(_path, "*.jack")))
        else:
            _files = [_path]
        for _filepath in _files:
            main(_filepath, debug=False)
    else:
        from inputs import jack_filepaths

        for _filepath in jack_filepaths:
            main(_filepath, debug=False)
