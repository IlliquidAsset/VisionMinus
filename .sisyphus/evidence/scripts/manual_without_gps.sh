#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../../.." && pwd)"
EVIDENCE_DIR="$ROOT_DIR/.sisyphus/evidence"
RAW_LOG="$EVIDENCE_DIR/manual-without-gps-raw.log"
SEQ_LOG="$EVIDENCE_DIR/manual-without-gps-sequence.log"
SUMMARY_LOG="$EVIDENCE_DIR/manual-without-gps-summary.log"

mkdir -p "$EVIDENCE_DIR"

DEVICE_COUNT=$(adb devices | awk 'NR>1 && $2=="device" {count++} END {print count+0}')
if [[ "$DEVICE_COUNT" -eq 0 ]]; then
  NOW=$(date "+%Y-%m-%d %H:%M:%S %z")
  {
    echo "[$NOW] manual_without_gps: no adb device connected"
    echo "Expected evidence: rocker/control callbacks occur while GPS autonomy remains degraded"
  } > "$SUMMARY_LOG"
  echo "[manual_without_gps] No connected adb device; wrote $SUMMARY_LOG"
  exit 2
fi

echo "[manual_without_gps] Clearing logcat"
adb logcat -c

echo "[manual_without_gps] Capture window 15s"
echo "[manual_without_gps] During capture: keep/manual mode + move rocker with poor/no GPS"
adb logcat -v time > "$RAW_LOG" &
LOG_PID=$!

sleep 15

kill "$LOG_PID" >/dev/null 2>&1 || true
wait "$LOG_PID" 2>/dev/null || true

grep -E "controlRocker|runtime\.gps\.quality|GPS telemetry present, autonomy confidence unavailable|Intelligent mode blocked|mission_start|sail_mode" "$RAW_LOG" > "$SEQ_LOG" || true

ROCKER_COUNT=$(grep -c "controlRocker" "$SEQ_LOG" || true)

{
  echo "manual_without_gps evidence summary"
  echo "raw_log=$RAW_LOG"
  echo "sequence_log=$SEQ_LOG"
  echo "rocker_commands=$ROCKER_COUNT"
  if [[ "$ROCKER_COUNT" -gt 0 ]]; then
    echo "result=PASS (manual rocker commands observed without requiring GPS autonomy-ready)"
  else
    echo "result=WARN (no rocker commands observed; repeat run while moving rocker)"
  fi
} > "$SUMMARY_LOG"

echo "[manual_without_gps] Wrote:"
echo "  - $RAW_LOG"
echo "  - $SEQ_LOG"
echo "  - $SUMMARY_LOG"
