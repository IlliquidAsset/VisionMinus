#!/usr/bin/env python3
"""
parse_params.py — Decode PowerDolphin BSON-encoded PX4 parameter files.

Binary format: 4 null bytes header, then entries of [type][name\\0][value].
  0x10 = int32 (4 bytes LE), 0x01/0x00 = float64 (8 bytes LE).
PowerVision uses 0x00 as float64 type (non-standard BSON).

Usage:
  python3 parse_params.py <file>           # human-readable table
  python3 parse_params.py <file> --json    # JSON output
"""

import struct
import sys
import json
import os

SAFETY = {
    "NEVER_TOUCH": lambda n: n.startswith("PV_RO_") or n == "PV_KEY_CRC",
    "DANGEROUS": lambda n: n in ("SYS_AUTOSTART", "ESC_VERSION", "PV_BOARD_ID"),
    "CAUTION": lambda n: (
        n.startswith("CAL_")
        or n.startswith("PV_GIM_")
        or n.startswith("PV_RC_")
        or n.startswith("CAP_")
    ),
    "SAFE": lambda n: True,
}

REDACT_PREFIXES = ("PV_RO_KEY_", "PV_RO_PSN_", "PV_KEY_CRC")

INT32_TYPE = 0x10
FLOAT64_TYPES = {0x01, 0x00}
ALL_TYPES = {INT32_TYPE} | FLOAT64_TYPES
TYPE_SIZES = {0x10: 4, 0x01: 8, 0x00: 8}
TYPE_LABELS = {0x10: "int32", 0x01: "float64", 0x00: "float64"}


def classify_safety(name):
    for level, test in SAFETY.items():
        if test(name):
            return level
    return "SAFE"


def should_redact(name):
    return any(name.startswith(p) for p in REDACT_PREFIXES)


def _next_byte_is_ascii_name(data, pos, file_size):
    """0x00 is ambiguous: float64 type vs BSON end-of-document. Disambiguate
    by checking if the following byte is an ASCII letter (start of param name)."""
    if pos >= file_size:
        return False
    b = data[pos]
    return 0x41 <= b <= 0x5A or 0x61 <= b <= 0x7A


def parse_params(filepath):
    with open(filepath, "rb") as f:
        data = f.read()

    file_size = len(data)
    pos = 0

    if data[:4] != b"\x00\x00\x00\x00":
        print(
            f"WARNING: Expected 4 null header bytes, got {data[:4].hex()}",
            file=sys.stderr,
        )
    pos = 4

    params = []
    warnings = []

    while pos < file_size:
        type_byte = data[pos]

        # 0x00 is ambiguous: float64 entry if followed by ASCII name, else EOD separator
        if type_byte == 0x00 and not _next_byte_is_ascii_name(data, pos + 1, file_size):
            pos += 1
            continue

        if type_byte not in ALL_TYPES:
            warnings.append(f"Unknown type 0x{type_byte:02x} at offset {pos}")
            pos += 1
            continue

        pos += 1

        null_pos = data.find(b"\x00", pos)
        if null_pos == -1 or null_pos == pos:
            warnings.append(f"Bad name at offset {pos}")
            break

        name = data[pos:null_pos].decode("ascii", errors="replace")
        pos = null_pos + 1

        value_size = TYPE_SIZES[type_byte]
        if pos + value_size > file_size:
            warnings.append(
                f"Truncated value for {name} at offset {pos} "
                f"(need {value_size}, have {file_size - pos})"
            )
            break

        raw_bytes = data[pos : pos + value_size]
        pos += value_size

        if type_byte == INT32_TYPE:
            value = struct.unpack("<i", raw_bytes)[0]
            type_name = "int32"
        else:
            value = struct.unpack("<d", raw_bytes)[0]
            type_name = "float64"

        safety = classify_safety(name)
        redacted = should_redact(name)

        display_value = value
        if redacted:
            if "KEY" in name:
                display_value = "[REDACTED-AUTH-KEY]"
            elif "PSN" in name:
                display_value = "[REDACTED-SERIAL]"
            else:
                display_value = "[REDACTED]"

        params.append(
            {
                "name": name,
                "type": type_name,
                "type_byte": f"0x{type_byte:02x}",
                "raw_hex": raw_bytes.hex(),
                "value": display_value,
                "safety": safety,
            }
        )

    return params, warnings, pos, file_size


def print_table(params, warnings, parsed_bytes, file_size, filepath):
    basename = os.path.basename(filepath)
    print(f"\n{'=' * 90}")
    print(f"  Parameter File: {basename} ({file_size} bytes)")
    print(
        f"  Parsed: {parsed_bytes}/{file_size} bytes ({parsed_bytes * 100 // file_size}%)"
    )
    print(f"  Parameters: {len(params)}")
    print(f"{'=' * 90}\n")

    print(f"  {'#':<4} {'Parameter Name':<28} {'Type':<8} {'Value':<22} {'Safety'}")
    print(f"  {'─' * 4} {'─' * 28} {'─' * 8} {'─' * 22} {'─' * 12}")

    for i, p in enumerate(params, 1):
        val = p["value"]
        if isinstance(val, float):
            val_str = f"{val:.6f}"
        elif isinstance(val, int):
            val_str = str(val)
        else:
            val_str = str(val)

        if len(val_str) > 22:
            val_str = val_str[:19] + "..."

        safety_marker = {
            "SAFE": "  SAFE",
            "CAUTION": "⚠ CAUTION",
            "DANGEROUS": "🔴 DANGER",
            "NEVER_TOUCH": "🚫 NEVER",
        }.get(p["safety"], p["safety"])

        print(f"  {i:<4} {p['name']:<28} {p['type']:<8} {val_str:<22} {safety_marker}")

    if warnings:
        print(f"\n  Warnings:")
        for w in warnings:
            print(f"    ⚠ {w}")

    print()


def output_json(params, warnings, parsed_bytes, file_size, filepath):
    clean_params = []
    for p in params:
        entry = {
            "name": p["name"],
            "type": p["type"],
            "type_byte": p["type_byte"],
            "raw_hex": p["raw_hex"] if not should_redact(p["name"]) else "[REDACTED]",
            "value": p["value"],
            "safety": p["safety"],
        }
        clean_params.append(entry)

    output = {
        "file": os.path.basename(filepath),
        "file_size": file_size,
        "parsed_bytes": parsed_bytes,
        "parameter_count": len(clean_params),
        "warnings": warnings,
        "parameters": clean_params,
    }
    print(json.dumps(output, indent=2))


def main():
    if len(sys.argv) < 2:
        print("Usage: parse_params.py <param_file> [--json]", file=sys.stderr)
        sys.exit(1)

    filepath = sys.argv[1]
    json_mode = "--json" in sys.argv

    if not os.path.exists(filepath):
        print(f"Error: File not found: {filepath}", file=sys.stderr)
        sys.exit(1)

    params, warnings, parsed_bytes, file_size = parse_params(filepath)

    if json_mode:
        output_json(params, warnings, parsed_bytes, file_size, filepath)
    else:
        print_table(params, warnings, parsed_bytes, file_size, filepath)


if __name__ == "__main__":
    main()
