# Unresolved Blockers

## Open Problems
_Issues requiring resolution_

---

## [2026-03-28 20:30] BLOCKER: JniCameraNative Missing

### Problem
Task 1 WiFi SDK Spike failed phase gate. Native library `libPowerSDK.so` aborts during `JNI_OnLoad`:
```
ClassNotFoundException: Didn't find class "com.powervision.natives.JniCameraNative"
```

### Root Cause
Previous AI ported only 4 JNI classes (JniCommonNative, JniW4Native, JniAOAChannelNative, JniSdkEngine). The native `.so` library requires `JniCameraNative` class to exist during initialization, even if camera features are unused.

### Impact
- ALL SDK methods unreachable (initSDKWIFI, initSDKAOA, etc.)
- WiFi connection path blocked
- USB connection path likely also broken

### Resolution
Port `JniCameraNative.smali` (3,106 lines) to Kotlin. Only JNI method declarations needed, no implementation.

### Evidence
- `.sisyphus/spike-results.md`
- `.sisyphus/evidence/task-1-spike-logcat.txt`
- `smali_classes4/com/powervision/natives/JniCameraNative.smali`
