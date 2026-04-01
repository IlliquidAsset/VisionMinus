#!/usr/bin/env bash

set -euo pipefail

APP_PKG="${APP_PKG:-com.visionminus.vision_minus}"
EXTERNAL_PKG="${EXTERNAL_PKG:-com.powervision.newvisionplus}"
OUT_DIR=".sisyphus/evidence/cross_app_resync"
TS="$(date +%Y%m%d_%H%M%S)"
RUN_DIR="${OUT_DIR}/${TS}"

mkdir -p "${RUN_DIR}"

echo "[1/7] Clearing logcat buffer"
adb logcat -c

echo "[2/7] Launching Flutter app (${APP_PKG})"
adb shell monkey -p "${APP_PKG}" -c android.intent.category.LAUNCHER 1 >/dev/null
sleep 3

echo "[3/7] Bring external controller app to foreground (${EXTERNAL_PKG})"
adb shell monkey -p "${EXTERNAL_PKG}" -c android.intent.category.LAUNCHER 1 >/dev/null || true
echo "    Perform unlock/lock mutation in external app now..."
sleep 8

echo "[4/7] Return Flutter app to foreground"
adb shell monkey -p "${APP_PKG}" -c android.intent.category.LAUNCHER 1 >/dev/null
sleep 5

echo "[5/7] Capture complete logcat"
adb logcat -d > "${RUN_DIR}/logcat_full.txt"

echo "[6/7] Extract parity evidence"
grep -E "resyncRuntimeState|arm_status|set_arm_result|Unlock|controlRocker parity|onAppResume|onForegroundAfterExternalControl|onConnectionRestored" "${RUN_DIR}/logcat_full.txt" > "${RUN_DIR}/runtime_resync_and_rocker.log" || true
grep -Ei "gps.*block|manual.*gps" "${RUN_DIR}/logcat_full.txt" > "${RUN_DIR}/manual_gps_block_hits.log" || true

echo "[7/7] Done"
echo "Artifacts: ${RUN_DIR}"
echo " - logcat_full.txt"
echo " - runtime_resync_and_rocker.log"
echo " - manual_gps_block_hits.log"
