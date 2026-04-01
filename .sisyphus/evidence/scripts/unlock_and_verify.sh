#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../../.." && pwd)"
EVIDENCE_DIR="$ROOT_DIR/.sisyphus/evidence"
RAW_LOG="$EVIDENCE_DIR/task-state-unlock-raw.log"
SEQ_LOG="$EVIDENCE_DIR/task-state-unlock-sequence.log"

mkdir -p "$EVIDENCE_DIR"

DEVICE_COUNT=$(adb devices | awk 'NR>1 && $2=="device" {count++} END {print count+0}')
if [[ "$DEVICE_COUNT" -eq 0 ]]; then
  NOW=$(date "+%Y-%m-%d %H:%M:%S %z")
  {
    echo "[$NOW] unlock_and_verify: no adb device connected"
    echo "Expected sequence: sent -> acked -> confirmed OR timed_out/failed/stale"
  } > "$SEQ_LOG"
  echo "[unlock_and_verify] No connected adb device; wrote $SEQ_LOG"
  exit 2
fi

echo "[unlock_and_verify] Clearing logcat"
adb logcat -c

echo "[unlock_and_verify] Start capture (12s). Trigger unlock/disarm during this window."
adb logcat -v time > "$RAW_LOG" &
LOG_PID=$!

sleep 12

kill "$LOG_PID" >/dev/null 2>&1 || true
wait "$LOG_PID" 2>/dev/null || true

echo "[unlock_and_verify] Extracting unlock command lifecycle evidence"
grep -E "runtime.command.lifecycle|setArmStatus|set_arm_result|arm_status|Unlock intent|timed_out|timeout|stale|failed|confirmed|acked|sent" "$RAW_LOG" > "$SEQ_LOG" || true

echo "[unlock_and_verify] Wrote:"
echo "  - $RAW_LOG"
echo "  - $SEQ_LOG"

if [[ ! -s "$SEQ_LOG" ]]; then
  echo "[unlock_and_verify] WARNING: no unlock sequence lines found"
fi
