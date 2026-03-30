# WiFi SDK Spike Results (Phase Gate)

## Attempt v3 (All JNI Classes Ported)
Date: 2026-03-28

### Environment
- Device: `RFCY61AS2MN`
- WiFi at run time: `PDO_VEH_150668`, IP `192.168.1.169` (drone subnet `192.168.1.x`).

### Execution
- Built debug APK: `flutter build apk --debug` ✅
- Installed APK: `adb install -r build/app/outputs/flutter-apk/app-debug.apk` ✅
- Triggered `spikeWifiInit` via temporary runner ✅
- Captured full logcat: `.sisyphus/evidence/task-1-spike-logcat-v3.txt` ✅

### Return Values Captured (actual)
- `WifiSpike: initSDKWIFI returned 0`
- `WifiSpike: getCurrentSDKType returned -1` (after `initSDKWIFI`)
- `WifiSpike: initSdkWithWIFI(1) returned 0`
- `WifiSpike: getCurrentSDKType returned 3` (after `initSdkWithWIFI(1)`)
- `WifiSpike: alterBodyIp returned void`
- `WifiSpike: getCurrentSDKType returned 3` (after `alterBodyIp`)

### Reachability Verdict
- SDK methods are **reachable and callable**; no JNI class-load crash occurred in v3.
- Flutter method result confirms sequence completion:
  - `{..., initSDKWIFI: 0, initSdkWithWIFI: 0, sdkTypeAfterInitSdkWithWIFI: 3, alterBodyIp: void, status: ok}`

### Phase Gate Decision (v3)
**PASS**

Task 1 status: **COMPLETE** (gate criterion met: init methods can be called and return values are logged).

---

## Attempt v2 (Post-Blocker Verification)
Date: 2026-03-28

### Environment
- Device: `RFCY61AS2MN`
- WiFi status at run time: connected to `PDO_VEH_150668` with IP `192.168.1.169` (drone subnet `192.168.1.x`).

### Execution
- Built debug APK: `flutter build apk --debug` ✅
- Installed APK: `adb install -r build/app/outputs/flutter-apk/app-debug.apk` ✅
- Triggered spike via temporary runner calling `spikeWifiInit` ✅
- Captured full logcat: `.sisyphus/evidence/task-1-spike-logcat-v2.txt` ✅

### Observed Results
- WiFi init methods are still **not reachable**.
- Native load aborts in `JNI_OnLoad` before first call result:
  - `I POWERSDK: Now Processing JNI_OnLoad`
  - `E POWERSDK: Cannot find JniGimbalNative in JNI_OnLoad`
  - `JNI DETECTED ERROR ... ClassNotFoundException: com.powervision.natives.JniGimbalNative`

### Return Values Captured
- `WifiSpike: initSDKWIFI returned X` → **NOT REACHED**
- `WifiSpike: initSdkWithWIFI(1) returned Y` → **NOT REACHED**
- `WifiSpike: getCurrentSDKType returned Z` → **NOT REACHED**
- `WifiSpike: alterBodyIp returned W` → **NOT REACHED**

### Phase Gate Decision (v2)
**FAIL / BLOCKED**

Reason: although `JniCameraNative` blocker is resolved, JNI load now fails on missing `JniGimbalNative`, so the spike sequence cannot execute.

---

## Attempt v1 (Initial Spike)
Date: 2026-03-28

- Blocked by missing `JniCameraNative` during JNI_OnLoad.
- Evidence: `.sisyphus/evidence/task-1-spike-logcat.txt`
