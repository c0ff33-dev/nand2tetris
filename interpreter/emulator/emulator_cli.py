"""CLI helpers shared by the emulator front ends."""

import argparse
from decimal import Decimal, InvalidOperation
import re

_CPU_HZ_RE = re.compile(r"^\s*(\d+(?:\.\d+)?)\s*([kKmMgG]?)\s*$")
_CPU_HZ_MULTIPLIERS = {
    "": 1,
    "K": 1_000,
    "M": 1_000_000,
    "G": 1_000_000_000,
}


def parse_cpu_hz(value: str) -> int:
    """
    Parse a CPU frequency literal into whole Hz.

    Accepts plain integers or shorthand with K/M/G suffixes, such as 500K,
    1M, or 2.5M.

    :param value: User-provided CLI literal.
    :return: Parsed frequency in whole Hz.
    :raises argparse.ArgumentTypeError: If the value is malformed or non-positive.
    """
    match = _CPU_HZ_RE.fullmatch(value)
    if match is None:
        raise argparse.ArgumentTypeError("CPU_HZ must look like 1000000, 500K, 1M, or 2.5M")

    amount_text, suffix = match.groups()
    try:
        amount = Decimal(amount_text)
    except InvalidOperation as exc:
        raise argparse.ArgumentTypeError("CPU_HZ must be a valid decimal number") from exc

    hz = amount * Decimal(_CPU_HZ_MULTIPLIERS[suffix.upper()])
    if hz != hz.to_integral_value():
        raise argparse.ArgumentTypeError("CPU_HZ must resolve to a whole number of Hz")

    parsed = int(hz)
    if parsed <= 0:
        raise argparse.ArgumentTypeError("CPU_HZ must be positive")
    return parsed
