#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../../.." && pwd)"
EVIDENCE_DIR="$ROOT_DIR/.sisyphus/evidence"
RAW_LOG="$EVIDENCE_DIR/intelligent-gps-gate-raw.log"
SEQ_LOG="$EVIDENCE_DIR/intelligent-gps-gate-sequence.log"
SUMMARY_LOG="$EVIDENCE_DIR/intelligent-gps-gate-summary.log"

mkdir -p "$EVIDENCE_DIR"

DEVICE_COUNT=$(adb devices | awk 'NR>1 && $2=="device" {count++} END {print count+0}')
if [[ "$DEVICE_COUNT" -eq 0 ]]; then
  NOW=$(date "+%Y-%m-%d %H:%M:%S %z")
  {
    echo "[$NOW] intelligent_gps_gate: no adb device connected"
    echo "Expected evidence: intelligent mode blocked with explicit GPS reason"
  } > "$SUMMARY_LOG"
  echo "[intelligent_gps_gate] No connected adb device; wrote $SUMMARY_LOG"
  exit 2
fi

echo "[intelligent_gps_gate] Clearing logcat"
adb logcat -c

echo "[intelligent_gps_gate] Capture window 15s"
echo "[intelligent_gps_gate] During capture: attempt Intelligent mode while GPS quality is poor/degraded"
adb logcat -v time > "$RAW_LOG" &
LOG_PID=$!

sleep 15

kill "$LOG_PID" >/dev/null 2>&1 || true
wait "$LOG_PID" 2>/dev/null || true

grep -E "Intelligent mode blocked|GPS telemetry present, autonomy confidence unavailable|runtime\.command\.lifecycle command=mission_start lifecycle=failed|runtime\.gps\.quality" "$RAW_LOG" > "$SEQ_LOG" || true

BLOCK_COUNT=$(grep -c "Intelligent mode blocked" "$SEQ_LOG" || true)
EXPLICIT_REASON_COUNT=$(grep -c "GPS telemetry present, autonomy confidence unavailable" "$SEQ_LOG" || true)

{
  echo "intelligent_gps_gate evidence summary"
  echo "raw_log=$RAW_LOG"
  echo "sequence_log=$SEQ_LOG"
  echo "blocked_events=$BLOCK_COUNT"
  echo "explicit_reason_events=$EXPLICIT_REASON_COUNT"
  if [[ "$BLOCK_COUNT" -gt 0 && "$EXPLICIT_REASON_COUNT" -gt 0 ]]; then
    echo "result=PASS (intelligent mode blocked with explicit degraded GPS reason)"
  else
    echo "result=WARN (missing explicit block evidence; repeat run under degraded GPS)"
  fi
} > "$SUMMARY_LOG"

echo "[intelligent_gps_gate] Wrote:"
echo "  - $RAW_LOG"
echo "  - $SEQ_LOG"
echo "  - $SUMMARY_LOG"
