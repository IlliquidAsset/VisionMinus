# Learnings - WiFi Connection Refactor

## Conventions & Patterns
_Accumulated knowledge from task execution_

---

## 2026-03-28 — WiFi SDK Spike Gate Result
- WiFi init spike is currently blocked at native library load, before any WiFi init API returns.
- Fatal logcat: missing class `com.powervision.natives.JniCameraNative` during `System.loadLibrary("PowerSDK")` JNI registration path.
- This prevents evaluating both `JniCommonNative.initSDKWIFI()` and `JniSdkEngine.initSdkWithWIFI(1)` return codes.
- Phase gate outcome is fail/blocked; plan must be re-evaluated before moving to production WiFi path.

## 2026-03-28 — WiFi SDK Spike Re-run (v2)
- Device was connected to drone subnet WiFi (`PDO_VEH_150668`, IP `192.168.1.169`) during test.
- `JniCameraNative` blocker is resolved, but JNI_OnLoad now fails on missing `com.powervision.natives.JniGimbalNative`.
- Result: WiFi spike methods remain unreachable (no return values from `initSDKWIFI`, `initSdkWithWIFI(1)`, `getCurrentSDKType`, `alterBodyIp`).
- Gate remains blocked until all JNI_OnLoad class dependencies are ported.

## 2026-03-28 — WiFi SDK Spike Third Attempt (v3)
- With all JNI classes ported, JNI_OnLoad completed enough for spike execution (no ClassNotFoundException crash).
- Captured values on drone WiFi (`192.168.1.169`): `initSDKWIFI=0`, `sdkTypeAfterInitSDKWIFI=-1`, `initSdkWithWIFI(1)=0`, `sdkTypeAfterInitSdkWithWIFI=3`, `alterBodyIp=void`, `sdkTypeAfterAlterBodyIp=3`.
- Practical signal: `initSdkWithWIFI(1)` + SDK type `3` appears to be the usable WiFi mode path in this environment.
- Phase gate passed: methods are reachable and return values are observable.

## 2026-03-28 — JniCameraNative JNI Stub Port Completed
- Added `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniCameraNative.kt` as Kotlin `object` with constants `JNI_NATIVES_RETURN_VALUE_SUCCESS = 0` and `JNI_NATIVES_RETURN_VALUE_FAILED = -1`.
- Ported all smali methods except constructor: `172/172` method names match (`95` callback stubs + `77` `external` JNI declarations).
- Preserved native symbol-sensitive names/typos from smali (for example `enbaleAudio`, `createLapseFiile`).
- Device validation: `adb install -r .../app-debug.apk` succeeded; app launch log scan (`adb logcat -d -e "JniCameraNative|ClassNotFoundException|JNI_OnLoad|UnsatisfiedLinkError"`) returned no matches.
- Environment note: local toolchain lacks `flutter` and Java runtime, so `flutter build apk --debug` and Gradle rebuild were not runnable in this session.

## 2026-03-28 — Remaining 4 JNI Native Class Stubs Ported
- Added these files under `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/`: `JniGimbalNative.kt`, `JniRemoteNative.kt`, `JniW4RemoteNative.kt`, `JniDl01Native.kt`.
- Ported all non-constructor methods from each smali file with exact names/signatures and `@JvmStatic` mapping (`external fun` for JNI methods, empty callback stubs for non-native methods).
- Included static fields present in smali as object fields: `JniRemoteNative.ele = -1` and `JniW4RemoteNative.bootLoaderstatus = 0`.
- Method parity verification script results: `JniGimbalNative 16/16`, `JniRemoteNative 23/23`, `JniW4RemoteNative 34/34`, `JniDl01Native 15/15` (smali vs Kotlin, constructors/clinit excluded).
- Runtime/build verification in this environment: `flutter build apk --debug` failed (`flutter: command not found`), but `adb install -r vision_minus_flutter/build/app/outputs/flutter-apk/app-debug.apk` succeeded; app launch log scan on package (`com.visionminus.vision_minus`) returned no matches for `ClassNotFoundException|JniGimbalNative|JniRemoteNative|JniW4RemoteNative|JniDl01Native|JNI_OnLoad|UnsatisfiedLinkError`.

## 2026-03-28 — PowerSdkPlugin Dual-Transport MethodChannel Integration
- Replaced USB-only `connect`/`isConnected` and removed `spikeWifiInit`; added `connectWifi`, `connectUsb`, `disconnect`, `getConnectionStatus`, `getAvailableTransports`, and `getWifiConfidence` handlers in `PowerSdkPlugin`.
- Plugin now injects `SdkLifecycleController` (via `SdkInitializer`) and `WifiTransportController`; WiFi monitoring is started/stopped with plugin lifecycle.
- `connectWifi`/`connectUsb`/`disconnect` execute on a background executor and return structured maps with `success`, `returnCode`, and `sdkType` from `getCurrentType()`.
- `getConnectionStatus` now returns runtime snapshot from `ConnectionRuntime` and `com.visionminus/connection_state` remains wired through `ConnectionRuntimeImpl` EventChannel stream handler.
- `getAvailableTransports` reports `WIFI` when confidence is not `NONE` and `USB` when an accessory is present with permission.

## 2026-03-28 — UsbConnectionManager narrowed to USB hardware provider only
- Removed SDK lifecycle work from `UsbConnectionManager` (`initAoa`/`uninit` path and JNI link/device calls) so it now only owns USB accessory detection, permission flow, fd/stream acquisition, and AOA read loop.
- Removed connection status event emissions from `UsbConnectionManager`; runtime phase/state ownership remains in `ConnectionRuntime` + `SdkLifecycleController`.
- Fixed `fdLock` deadlock risk by ensuring unlock is done in `finally` in `openAccessory`.
- Fixed write masking by adding boolean `sendData(data: ByteArray)` that returns `false` when `outputStream` is null; JNI bridge `sendData(channelId, buffer, length)` now maps boolean failure to `-1`.
- Fixed resource leak path by closing input/output/file descriptor in `openAccessory` catch when post-open setup fails.

## 2026-03-28 — Dart ConnectionRepository + Provider Refactor
- Added `ConnectionRepository` in `lib/core/connection/connection_repository.dart` as the sole Dart-side subscriber to `com.visionminus/connection_state`, with one subscription and canonical `ConnectionState` fan-out stream.
- Added `ConnectionController` in `lib/core/connection/connection_controller.dart` with `autoConnect`, `connectWifi`, `connectUsb`, `disconnect`, and `retry` (reuses last attempt method).
- Extended `PowerSdkBridge` with Task 7 methods: `connectWifi`, `connectUsb`, `disconnect`, `getConnectionStatus`, `getAvailableTransports`, `getWifiConfidence`.
- Refactored `connection_provider` to consume `ConnectionRepository.connectionStateStream` and route connection actions through `ConnectionController` (no provider-level raw EventChannel usage).
- `navigation_provider` and `rth_provider` now explicitly initialize `PowerSdkBridge` before listening, keeping them on Task 3 broadcast streams only.

## 2026-03-28 — Task 11 Device Integration Run (adb + hardware)
- Device run executed on Samsung `SM-S931U` (`RFCY61AS2MN`) against drone WiFi `PDO_VEH_150668` (`192.168.1.169`).
- Tooling gap persisted in this host: `flutter build apk --debug` unavailable (`flutter: command not found`) and Gradle path blocked by missing Java runtime; installed existing debug APK successfully via `adb install -r`.
- Repeated runtime signal remains strong: `initSdkWithWIFI(1)=0` and `getCurrentSDKType=3`; no `ClassNotFoundException`/`UnsatisfiedLinkError` observed across task-11 captures.
- Behavior gap observed: on non-drone WiFi scenario, logs still show WiFi init path executing (expected “no init attempted”), indicating remaining detection/guard mismatch to verify.
- Evidence package created under `.sisyphus/evidence/task-11-*` with scenario logs/screens plus full report in `.sisyphus/evidence/task-11-integration-test.md`.
