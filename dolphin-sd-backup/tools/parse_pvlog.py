#!/usr/bin/env python3
"""
parse_pvlog.py — Decode PX4 sdlog2 telemetry logs (.pvlog) from PowerDolphin.

Binary format (sdlog2, NOT modern ULog):
  Format defs: sync[2] + 0x80 + {msg_id[1], length[1], name[4], format[16], labels[64]}
  Data records: sync[2] + msg_id[1] + payload[length-3]
  Sync bytes: 0xa3 0x95. Length includes 3-byte header (sync+id).

Usage:
  python3 parse_pvlog.py <file>                  # summary
  python3 parse_pvlog.py <file> --headers-only   # show message definitions only
  python3 parse_pvlog.py <file> --sample 5       # show 5 records per message type
"""

import struct
import sys
import os
import math
from collections import defaultdict

SYNC = b"\xa3\x95"
FORMAT_TYPE = 0x80
FORMAT_STRUCT_SIZE = 86  # msg_id(1) + length(1) + name(4) + format(16) + labels(64)

# sdlog2 format chars -> (struct_format, byte_size)
TYPE_MAP = {
    "f": ("<f", 4),  # float32
    "L": ("<q", 8),  # int64
    "B": ("<B", 1),  # uint8
    "H": ("<H", 2),  # uint16
    "Q": ("<Q", 8),  # uint64
    "b": ("<b", 1),  # int8
    "I": ("<I", 4),  # uint32
    "h": ("<h", 2),  # int16
}


def parse_format_string(fmt_str):

    result = []
    for ch in fmt_str:
        if ch in TYPE_MAP:
            result.append(TYPE_MAP[ch])
        elif ch == "\x00":
            break
    return result


def parse_pvlog(filepath, headers_only=False, sample_n=0):
    with open(filepath, "rb") as f:
        data = f.read()

    file_size = len(data)
    pos = 0
    formats = {}
    records = defaultdict(list)
    record_counts = defaultdict(int)
    warnings = []

    while pos < file_size - 2:
        if data[pos : pos + 2] != SYNC:
            pos += 1
            continue

        pos += 2

        if pos >= file_size:
            break

        msg_byte = data[pos]

        if msg_byte == FORMAT_TYPE:
            if pos + FORMAT_STRUCT_SIZE > file_size:
                warnings.append(f"Truncated format def at offset {pos}")
                break

            pos += 1
            msg_id = data[pos]
            length = data[pos + 1]

            name_raw = data[pos + 2 : pos + 6]
            name = name_raw.split(b"\x00")[0].decode("ascii", errors="replace")

            fmt_raw = data[pos + 6 : pos + 22]
            fmt_str = fmt_raw.split(b"\x00")[0].decode("ascii", errors="replace")

            labels_raw = data[pos + 22 : pos + 86]
            labels = labels_raw.split(b"\x00")[0].decode("ascii", errors="replace")
            label_list = [l for l in labels.split(",") if l]

            field_specs = parse_format_string(fmt_str)
            payload_size = length - 3  # length includes sync(2) + msg_id(1)

            formats[msg_id] = {
                "name": name,
                "format": fmt_str,
                "labels": label_list,
                "field_specs": field_specs,
                "payload_size": payload_size,
                "length": length,
            }
            pos += FORMAT_STRUCT_SIZE
        else:
            msg_id = msg_byte
            pos += 1

            if msg_id not in formats:
                warnings.append(
                    f"Data record for unknown msg_id {msg_id} at offset {pos - 3}"
                )
                continue

            fmt = formats[msg_id]
            payload_size = fmt["payload_size"]

            if pos + payload_size > file_size:
                warnings.append(f"Truncated {fmt['name']} record at offset {pos}")
                break

            payload = data[pos : pos + payload_size]
            pos += payload_size

            record_counts[msg_id] += 1

            if headers_only:
                continue

            if sample_n > 0 and len(records[msg_id]) >= sample_n:
                continue

            values = {}
            offset = 0
            for i, (struct_fmt, size) in enumerate(fmt["field_specs"]):
                if offset + size > len(payload):
                    break
                val = struct.unpack(struct_fmt, payload[offset : offset + size])[0]
                if i < len(fmt["labels"]):
                    values[fmt["labels"][i]] = val
                offset += size

            records[msg_id].append(values)

    return formats, records, record_counts, warnings


def print_headers(formats):
    print(f"\n  {'ID':<4} {'Name':<8} {'Length':<7} {'Format':<20} {'Fields'}")
    print(f"  {'─' * 4} {'─' * 8} {'─' * 7} {'─' * 20} {'─' * 50}")
    for msg_id in sorted(formats.keys()):
        f = formats[msg_id]
        fields = ", ".join(f["labels"][:6])
        if len(f["labels"]) > 6:
            fields += f", ... (+{len(f['labels']) - 6})"
        print(
            f"  {msg_id:<4} {f['name']:<8} {f['length']:<7} {f['format']:<20} {fields}"
        )


def summarize_session(formats, records, record_counts, filepath):
    basename = os.path.basename(filepath)
    file_size = os.path.getsize(filepath)
    total_records = sum(record_counts.values())

    print(f"\n{'=' * 80}")
    print(f"  Session: {basename} ({file_size:,} bytes)")
    print(f"  Message types: {len(formats)}, Data records: {total_records:,}")
    print(f"{'=' * 80}")

    print(f"\n  Record counts:")
    for msg_id in sorted(
        record_counts.keys(), key=lambda k: record_counts[k], reverse=True
    ):
        name = formats[msg_id]["name"] if msg_id in formats else f"?{msg_id}"
        print(f"    {name:<8} {record_counts[msg_id]:>8,}")

    if any(formats[k]["name"] == "ATT" for k in records):
        att_id = [k for k in records if formats[k]["name"] == "ATT"][0]
        att = records[att_id]
        if att:
            rolls = [r.get("Roll", 0) for r in att]
            pitches = [r.get("Pitch", 0) for r in att]
            yaws = [r.get("Yaw", 0) for r in att]
            print(f"\n  Attitude (ATT) — {len(att)} samples:")
            print(f"    Roll:  min={min(rolls):8.3f}  max={max(rolls):8.3f}  (radians)")
            print(f"    Pitch: min={min(pitches):8.3f}  max={max(pitches):8.3f}")
            print(f"    Yaw:   min={min(yaws):8.3f}  max={max(yaws):8.3f}")

            for v in rolls + pitches:
                if abs(v) > math.pi:
                    print(f"    ⚠ WARNING: Attitude value {v:.3f} exceeds ±π")
                    break

    if any(formats[k]["name"] == "GPS" for k in records):
        gps_id = [k for k in records if formats[k]["name"] == "GPS"][0]
        gps = records[gps_id]
        if gps:
            fixes = [r.get("Fix", 0) for r in gps]
            lats = [r.get("Lat", 0) for r in gps if r.get("Lat", 0) != 0]
            lons = [r.get("Lon", 0) for r in gps if r.get("Lon", 0) != 0]
            nsats = [r.get("nSat", 0) for r in gps]
            print(f"\n  GPS — {len(gps)} samples:")
            print(f"    Fix types: {dict((v, fixes.count(v)) for v in set(fixes))}")
            print(
                f"    Satellites: min={min(nsats)}  max={max(nsats)}  avg={sum(nsats) / len(nsats):.1f}"
            )
            if lats:
                # GPS coords in sdlog2 are stored as int32 * 1e-7 degrees
                lat_deg = [l * 1e-7 if abs(l) > 1000 else l for l in lats]
                lon_deg = [l * 1e-7 if abs(l) > 1000 else l for l in lons]
                print(f"    Lat range: {min(lat_deg):.6f} to {max(lat_deg):.6f}")
                print(f"    Lon range: {min(lon_deg):.6f} to {max(lon_deg):.6f}")
            else:
                print(f"    No GPS fix acquired")

    if any(formats[k]["name"] == "IMU" for k in records):
        imu_id = [k for k in records if formats[k]["name"] == "IMU"][0]
        imu = records[imu_id]
        if imu:
            accz = [r.get("AccZ", 0) for r in imu]
            print(f"\n  IMU — {len(imu)} samples:")
            print(
                f"    AccZ: min={min(accz):8.3f}  max={max(accz):8.3f}  avg={sum(accz) / len(accz):.3f} m/s²"
            )
            avg_accz = sum(accz) / len(accz)
            # NED convention: Z-down positive, so AccZ ~ +9.8 upright or ~ -9.8 inverted
            if 8.0 < abs(avg_accz) < 11.0:
                print(
                    f"    ✓ AccZ average ({avg_accz:.2f}) consistent with gravity (NED)"
                )
            elif avg_accz != 0:
                print(f"    ⚠ AccZ average ({avg_accz:.2f}) unexpected")

    if any(formats[k]["name"] == "BATT" for k in records):
        batt_id = [k for k in records if formats[k]["name"] == "BATT"][0]
        batt = records[batt_id]
        if batt:
            volts = [r.get("V", 0) for r in batt if r.get("V", 0) > 0]
            if volts:
                print(f"\n  Battery (BATT) — {len(batt)} samples:")
                print(f"    Voltage: min={min(volts):.2f}V  max={max(volts):.2f}V")


def print_samples(formats, records, sample_n):
    for msg_id in sorted(records.keys()):
        name = formats[msg_id]["name"]
        recs = records[msg_id][:sample_n]
        if not recs:
            continue
        print(f"\n  {name} (id={msg_id}, showing {len(recs)}/{sample_n}):")
        for i, r in enumerate(recs):
            vals = ", ".join(
                f"{k}={v:.4f}" if isinstance(v, float) else f"{k}={v}"
                for k, v in r.items()
            )
            print(f"    [{i}] {vals}")


def main():
    if len(sys.argv) < 2:
        print(
            "Usage: parse_pvlog.py <file> [--headers-only] [--sample N]",
            file=sys.stderr,
        )
        sys.exit(1)

    filepath = sys.argv[1]
    headers_only = "--headers-only" in sys.argv
    sample_n = 0
    if "--sample" in sys.argv:
        idx = sys.argv.index("--sample")
        if idx + 1 < len(sys.argv):
            sample_n = int(sys.argv[idx + 1])

    if not os.path.exists(filepath):
        print(f"Error: File not found: {filepath}", file=sys.stderr)
        sys.exit(1)

    keep_samples = max(sample_n, 200) if not headers_only else 0
    formats, records, record_counts, warnings = parse_pvlog(
        filepath, headers_only=headers_only, sample_n=keep_samples
    )

    print_headers(formats)
    print(f"\n  Total record counts: {sum(record_counts.values()):,}")

    if headers_only:
        return

    summarize_session(formats, records, record_counts, filepath)

    if sample_n > 0:
        print_samples(formats, records, sample_n)

    if warnings:
        print(f"\n  Warnings ({len(warnings)}):")
        for w in warnings[:20]:
            print(f"    ⚠ {w}")
        if len(warnings) > 20:
            print(f"    ... and {len(warnings) - 20} more")


if __name__ == "__main__":
    main()
