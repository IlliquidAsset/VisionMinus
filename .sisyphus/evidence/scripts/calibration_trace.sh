#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../../.." && pwd)"
EVIDENCE_DIR="$ROOT_DIR/.sisyphus/evidence"
RAW_LOG="$EVIDENCE_DIR/task-state-calibration-raw.log"
SEQ_LOG="$EVIDENCE_DIR/task-state-calibration-sequence.log"

mkdir -p "$EVIDENCE_DIR"

DEVICE_COUNT=$(adb devices | awk 'NR>1 && $2=="device" {count++} END {print count+0}')
if [[ "$DEVICE_COUNT" -eq 0 ]]; then
  NOW=$(date "+%Y-%m-%d %H:%M:%S %z")
  {
    echo "[$NOW] calibration_trace: no adb device connected"
    echo "Expected lifecycle: sent -> started -> orienting/progressing -> success|failed|timeout"
    echo "Timeout evidence: calibration_terminal=90s with no terminal callback"
  } > "$SEQ_LOG"
  echo "[calibration_trace] No connected adb device; wrote $SEQ_LOG"
  exit 2
fi

echo "[calibration_trace] Clearing logcat"
adb logcat -c

echo "[calibration_trace] Capturing logcat (100s). Trigger compass calibration now."
adb logcat -v time > "$RAW_LOG" &
LOG_PID=$!

sleep 100

kill "$LOG_PID" >/dev/null 2>&1 || true
wait "$LOG_PID" 2>/dev/null || true

echo "[calibration_trace] Extracting calibration lifecycle evidence"
grep -E "mag_calibration_status|runtime\.calibration\.fsm|runtime\.command\.lifecycle|startMagCalibration|cancelMagCalibration|calibration.*(started|orienting|progressing|success|failed|timeout|pending|already)" "$RAW_LOG" > "$SEQ_LOG" || true

echo "[calibration_trace] Wrote:"
echo "  - $RAW_LOG"
echo "  - $SEQ_LOG"

if [[ ! -s "$SEQ_LOG" ]]; then
  echo "[calibration_trace] WARNING: no calibration lifecycle lines found"
fi
