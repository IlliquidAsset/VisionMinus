#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../../.." && pwd)"
EVIDENCE_DIR="$ROOT_DIR/.sisyphus/evidence"
RAW_LOG="$EVIDENCE_DIR/mission-start-trace-raw.log"
SEQ_LOG="$EVIDENCE_DIR/mission-start-trace-sequence.log"
SUMMARY_LOG="$EVIDENCE_DIR/mission-start-trace-summary.log"

mkdir -p "$EVIDENCE_DIR"

DEVICE_COUNT=$(adb devices | awk 'NR>1 && $2=="device" {count++} END {print count+0}')
if [[ "$DEVICE_COUNT" -eq 0 ]]; then
  NOW=$(date "+%Y-%m-%d %H:%M:%S %z")
  {
    echo "[$NOW] mission_start_trace: no adb device connected"
    echo "Expected sequence: upload -> mode -> mission_run_status confirm"
    echo "Expected failures: explicit GPS reason, explicit timeout after 8s"
  } > "$SUMMARY_LOG"
  echo "[mission_start_trace] No connected adb device; wrote $SUMMARY_LOG"
  exit 2
fi

echo "[mission_start_trace] Clearing logcat"
adb logcat -c

echo "[mission_start_trace] Capture window 25s"
echo "[mission_start_trace] During capture run three checks:"
echo "  1) Good GPS mission start (expect upload -> mode -> confirmed)"
echo "  2) Poor GPS mission start (expect explicit block reason)"
echo "  3) Timeout case (expect timed_out after 8s)"

adb logcat -v time > "$RAW_LOG" &
LOG_PID=$!

sleep 25

kill "$LOG_PID" >/dev/null 2>&1 || true
wait "$LOG_PID" 2>/dev/null || true

grep -E "runtime\.command\.lifecycle|runtime\.gps\.quality|upload_waypoint_result|set_sail_mode_result|mission_run_status|mode_error|Intelligent mode blocked|Mission start timeout|Start blocked" "$RAW_LOG" > "$SEQ_LOG" || true

UPLOAD_STAGE_COUNT=$(grep -c "stage=upload_confirmed\|upload_waypoint_result" "$SEQ_LOG" || true)
MODE_STAGE_COUNT=$(grep -c "stage=mode_confirmed\|sail_mode callback matched" "$SEQ_LOG" || true)
RUN_CONFIRMED_COUNT=$(grep -c "command=mission_start lifecycle=confirmed.*mission_run_status" "$SEQ_LOG" || true)
GPS_BLOCK_COUNT=$(grep -c "Intelligent mode blocked\|gps gate failed" "$SEQ_LOG" || true)
TIMEOUT_COUNT=$(grep -c "lifecycle=timed_out\|Mission start timeout" "$SEQ_LOG" || true)

{
  echo "mission_start_trace evidence summary"
  echo "raw_log=$RAW_LOG"
  echo "sequence_log=$SEQ_LOG"
  echo "upload_events=$UPLOAD_STAGE_COUNT"
  echo "mode_events=$MODE_STAGE_COUNT"
  echo "run_confirmed_events=$RUN_CONFIRMED_COUNT"
  echo "gps_block_events=$GPS_BLOCK_COUNT"
  echo "timeout_events=$TIMEOUT_COUNT"
  if [[ "$RUN_CONFIRMED_COUNT" -gt 0 ]]; then
    echo "good_gps_result=PASS"
  else
    echo "good_gps_result=WARN (missing confirmed run sequence)"
  fi
  if [[ "$GPS_BLOCK_COUNT" -gt 0 ]]; then
    echo "poor_gps_result=PASS"
  else
    echo "poor_gps_result=WARN (missing explicit gps block evidence)"
  fi
  if [[ "$TIMEOUT_COUNT" -gt 0 ]]; then
    echo "timeout_result=PASS"
  else
    echo "timeout_result=WARN (missing explicit timeout evidence)"
  fi
} > "$SUMMARY_LOG"

echo "[mission_start_trace] Wrote:"
echo "  - $RAW_LOG"
echo "  - $SEQ_LOG"
echo "  - $SUMMARY_LOG"
