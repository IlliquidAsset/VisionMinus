# WiFi-Primary Connection Refactor

## TL;DR

> **Quick Summary**: Refactor the Flutter PowerVision water drone app from USB-only to WiFi-primary connection. The drone creates an ad-hoc WiFi network; the app should auto-detect it, call `initSDKWIFI()`, and connect — no USB permission dance needed. USB stays as a secondary option for debug/firmware, visible only when physically attached.
>
> **Deliverables**:
> - WiFi connection path via `initSDKWIFI()` with reachability-based drone detection
> - Connection Core architecture: `ConnectionRuntime`, `SdkLifecycleController`, `CallbackGate`
> - EventChannel multi-subscriber bug fix (single Dart subscriber + broadcast)
> - Revised connection screen UX (WiFi auto-connect, USB only when attached)
> - Android manifest fixes (WiFi permissions, USB feature optional)
> - Test seam interfaces for all hardware-dependent components
>
> **Estimated Effort**: Large
> **Parallel Execution**: YES — 3 waves
> **Critical Path**: Task 1 → Task 2 → Task 3 → Task 5 → Task 7 → Task 8 → Task 10

---

## Context

### Original Request
User asked to make WiFi the primary connection for their PowerVision water drone app. The previous AI session built the entire Flutter app around USB AOA, which is wrong — the drone connects via ad-hoc WiFi. USB should remain for debug/testing/firmware only.

### Interview Summary
**Key Discussions**:
- WiFi is primary — drone creates ad-hoc network at `192.168.1.10`
- USB should only appear when a USB accessory is physically attached
- Don't rip out USB — keep it for debug/firmware
- App currently crashes on launch (fixed: PendingIntent API 34+ issue)
- EventChannel multi-subscriber bug must be fixed (3 providers subscribe to same stream, last one wins)

**Research Findings**:
- Original app used `GCSConnectionManager` with `ConnectionType` enum (IDEAL=0, AP03=1, W4=2, WIFI=3)
- WiFi init: `GlobalConfig.switchWIFIConnect()` → `initSDKWIFI()` → SDK connects at 192.168.1.10 internally
- TWO WiFi init methods exist: `JniCommonNative.initSDKWIFI()` AND `JniSdkEngine.initSdkWithWIFI(int)` — original app uses the latter via `PVSDK_W4_API`
- `JniW4Native.alterBodyIp(ip, port)` may be needed to configure WiFi target IP
- Sonar subsystem at different IP (`192.168.1.1`) — OUT OF SCOPE
- RTSP video: `rtsp://192.168.1.10:554/livestream/12:trans=wifi` — OUT OF SCOPE (no video feature exists)
- `ConnectModel` enum has 15 connection states; `ConnectionListener` has 15 callback methods
- SDK `initSDKWIFI()` and `initSDKAOA()` are mutually exclusive — must `uninitSDK()` before switching

### Muse-Devil's Advocate Consensus
- **Architecture**: Connection Core pattern — transport-agnostic control plane, not a WiFi bolt-on
- **SDK Lifecycle**: Generation-gated with `SdkLifecycleController` — stale callbacks dropped by session generation token
- **WiFi Detection**: Reachability-based (probe `192.168.1.10`), SSID as enhancer not dependency
- **Safety**: No auto-switch transport mid-mission — operator must explicitly choose recovery path
- **Events**: Single Dart subscriber per EventChannel, broadcast to providers
- **Threading**: SDK lifecycle on serialized background dispatcher, not Flutter platform thread
- **Rating**: RISKY (moved from CRITICAL after Muse revision) — mitigated by phase gate spike

### Metis Review
**Identified Gaps** (addressed):
- Two WiFi init methods — must determine which to use (Task 1 spike)
- `alterBodyIp()` may be required before WiFi ops (Task 1 spike)
- `NEARBY_WIFI_DEVICES` permission needed for Android 12+ SSID (Task 4)
- USB feature must change to `required="false"` (Task 4)
- `getCurrentSDKType()` may be canonical transport check (Task 1 spike)
- Phase gate: validate `initSDKWIFI()` on hardware before building full architecture

---

## Work Objectives

### Core Objective
Replace the USB-only connection path with a WiFi-primary, USB-secondary connection architecture that auto-detects the drone's WiFi network and connects without user intervention.

### Concrete Deliverables
- `ConnectionRuntime.kt` — native-side connection state authority
- `SdkLifecycleController.kt` — serialized, generation-gated SDK init/uninit
- `WifiTransportController.kt` — WiFi detection, confidence scoring, connection
- `CallbackGate.kt` — stale callback filtering by session generation
- `NativeEventHub.kt` — single-publisher fan-out for EventChannels
- Refactored `PowerSdkPlugin.kt` — WiFi + USB method channel API
- Refactored `UsbConnectionManager.kt` — narrowed to USB hardware lifecycle only
- Refactored `PowerSdkBridge.dart` — single subscriber per EventChannel
- `ConnectionRepository` Riverpod provider — Dart-side state authority
- Refactored `ConnectionScreen` — WiFi auto-connect UX, USB as secondary
- Updated `AndroidManifest.xml` — WiFi permissions, USB optional
- Test seam interfaces for `WifiDetector`, `SdkInitializer`, `ReachabilityProbe`

### Definition of Done
- [ ] `flutter build apk --debug` succeeds
- [ ] `flutter analyze` reports 0 errors
- [ ] App launches without crash on target device (Samsung, Android 14+)
- [ ] When phone is on drone WiFi: app auto-detects and connects
- [ ] When phone is NOT on drone WiFi: app shows "Connect to drone WiFi" instruction
- [ ] When USB accessory attached: USB option appears as secondary
- [ ] EventChannel bug fixed: all 3 providers receive events simultaneously
- [ ] Transport switch (WiFi→USB) works via explicit user action only

### Must Have
- WiFi auto-detection using reachability probe to `192.168.1.10`
- Generation-gated SDK lifecycle preventing stale callback corruption
- Single Dart EventChannel subscriber with broadcast fan-out
- USB feature marked `required="false"` in manifest
- `NEARBY_WIFI_DEVICES` permission for Android 12+
- Test seam interfaces for hardware-dependent components

### Must NOT Have (Guardrails)
- NO RTSP video implementation (not in current app, out of scope)
- NO camera command TCP channel (`CmdChannelWIFI` — out of scope)
- NO media download or firmware update paths
- NO sonar connection (`192.168.1.1` — out of scope)
- NO iOS support
- NO auto-reconnect or auto-switch transport mid-mission
- NO WiFi read thread (SDK manages TCP internally in WiFi mode)
- NO changes to `JniAOAChannelNative` for WiFi path (USB-AOA only)
- NO changes to JNI callback method signatures (`.so` calls by exact name)
- NO changes to `registerW4Callbacks()` / `registerAp03Callbacks()` calls
- NO changes to EventChannel name strings
- NO using `initSDKWIFI()` as a speculative "truth test" for detection — separate detection from SDK init

---

## Verification Strategy

> **UNIVERSAL RULE: ZERO HUMAN INTERVENTION**
>
> ALL tasks MUST be verifiable WITHOUT any human action.

### Test Decision
- **Infrastructure exists**: YES (Flutter test framework via `flutter test`)
- **Automated tests**: YES (tests-after for state machine and callback gate logic)
- **Framework**: `flutter test` for Dart, manual Kotlin verification via build

### Agent-Executed QA Scenarios (MANDATORY — ALL tasks)

**Verification Tool by Deliverable Type:**

| Type | Tool | How Agent Verifies |
|------|------|-------------------|
| **Kotlin native code** | Bash (`flutter build apk`) | Build succeeds, no compilation errors |
| **Dart code** | Bash (`flutter analyze`, `flutter test`) | Zero errors, tests pass |
| **Manifest** | Bash (grep) | Permissions present, USB feature optional |
| **UI changes** | Playwright via adb screencap | Screenshot after install, verify UI elements |
| **Integration** | Bash (adb logcat) | Launch app, verify log output matches expected init sequence |

---

## Execution Strategy

### Parallel Execution Waves

```
Wave 1 (Start Immediately):
├── Task 1: WiFi SDK Spike (PHASE GATE — validates assumptions)
├── Task 2: Connection Core interfaces and enums (no hardware needed)
└── Task 3: EventChannel multi-subscriber fix (independent bug fix)

Wave 2 (After Wave 1):
├── Task 4: Android manifest and permissions
├── Task 5: SdkLifecycleController + CallbackGate
└── Task 6: WifiTransportController

Wave 3 (After Wave 2):
├── Task 7: Refactor PowerSdkPlugin for dual-transport
├── Task 8: Dart ConnectionRepository + providers
├── Task 9: Refine UsbConnectionManager
└── Task 10: Connection screen UX redesign

Wave 4 (After Wave 3):
└── Task 11: Integration test on device with drone
```

### Dependency Matrix

| Task | Depends On | Blocks | Can Parallelize With |
|------|------------|--------|---------------------|
| 1 | None | 5, 6, 7 | 2, 3 |
| 2 | None | 5, 6, 7, 8 | 1, 3 |
| 3 | None | 8 | 1, 2 |
| 4 | None | 7, 10 | 5, 6 |
| 5 | 1, 2 | 7 | 4, 6 |
| 6 | 1, 2 | 7 | 4, 5 |
| 7 | 4, 5, 6 | 8 | 9 |
| 8 | 3, 7 | 10 | 9 |
| 9 | 2 | 11 | 7, 8 |
| 10 | 8 | 11 | 9 |
| 11 | 7, 8, 9, 10 | None | None (final) |

### Agent Dispatch Summary

| Wave | Tasks | Recommended Agents |
|------|-------|-------------------|
| 1 | 1, 2, 3 | task(category="deep", load_skills=[], ...) for spike; category="quick" for 2, 3 |
| 2 | 4, 5, 6 | task(category="unspecified-high", load_skills=[], ...) |
| 3 | 7, 8, 9, 10 | task(category="unspecified-high", load_skills=["frontend-ui-ux"], ...) for 10 |
| 4 | 11 | task(category="deep", load_skills=["playwright"], ...) |

---

## TODOs

- [x] 1. **WiFi SDK Spike — PHASE GATE** ⚠️

  **What to do**:
  - Create a minimal `WifiSpike.kt` test class in the plugin package
  - Try calling `JniCommonNative.initSDKWIFI()` and log the return value
  - Try calling `JniSdkEngine.initSdkWithWIFI(1)` and log the return value
  - Try calling `JniSdkEngine.getCurrentSDKType()` after each init and log the result
  - Try calling `JniW4Native.alterBodyIp("192.168.1.10", 554)` after WiFi init
  - Add a temporary MethodChannel handler `spikeWifiInit` that runs this sequence
  - Build, install on phone connected to drone WiFi, trigger spike, capture logcat
  - Document: which init method works, whether `alterBodyIp` is needed, what `getCurrentSDKType` returns
  - **IF SPIKE FAILS**: Stop. Re-evaluate entire plan. The SDK may require additional setup not visible in smali.

  **Must NOT do**:
  - Don't integrate into production code — this is throwaway spike code
  - Don't touch existing USB connection path
  - Don't add WiFi detection logic yet

  **Recommended Agent Profile**:
  - **Category**: `deep`
    - Reason: Investigative task probing closed-source SDK behavior; needs careful observation and adaptation
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - `playwright`: Not browser work
    - `test-generator`: Not generating tests, exploring SDK

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1 (with Tasks 2, 3)
  - **Blocks**: Tasks 5, 6, 7 (all depend on spike findings)
  - **Blocked By**: None

  **References**:
  - `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniCommonNative.kt:8-10` — `initSDKWIFI()`, `initSDKAOA()`, `unInitSDK()` method signatures
  - `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniSdkEngine.kt` — `initSdkWithWIFI(int)`, `getCurrentSDKType()` alternative init path
  - `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniW4Native.kt` — `alterBodyIp(ip, port)` for WiFi IP configuration
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/UsbConnectionManager.kt:132-168` — existing SDK init sequence to follow as structural pattern (init → register callbacks → connect device → connect link)
  - `smali_classes3/com/powervision/gcs/usb2/GCSConnectionManager.smali:2124-2266` — original WiFi init flow showing `switchWIFIConnect()` → `uninitSdkOfW4` → `init wifi` sequence

  **Acceptance Criteria**:
  - [ ] `WifiSpike.kt` compiles successfully
  - [ ] `flutter build apk --debug` succeeds
  - [ ] App installs on phone without crash
  - [ ] Logcat shows return value from `initSDKWIFI()` or `initSdkWithWIFI(1)`
  - [ ] Logcat shows return value from `getCurrentSDKType()` after init
  - [ ] Document created at `.sisyphus/spike-results.md` with: which init works, return values, whether `alterBodyIp` is needed, any errors observed

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Spike builds and installs
    Tool: Bash
    Preconditions: Flutter SDK at /Volumes/Video 1/dev-tools/flutter, phone connected via adb
    Steps:
      1. flutter build apk --debug (workdir: vision_minus_flutter/)
      2. Assert: exit code 0, "BUILD SUCCESSFUL" in output
      3. adb install -r build/app/outputs/flutter-apk/app-debug.apk
      4. Assert: "Success" in output
    Expected Result: APK built and installed
    Evidence: Build output captured

  Scenario: Spike WiFi init logged
    Tool: Bash (adb logcat)
    Preconditions: App installed, phone on drone WiFi network
    Steps:
      1. adb logcat -c
      2. adb shell am start -n com.visionminus.vision_minus/.MainActivity
      3. Trigger spikeWifiInit via adb shell am broadcast or method channel call
      4. adb logcat -d | grep "WifiSpike"
      5. Assert: log lines show initSDKWIFI return value
      6. Assert: log lines show getCurrentSDKType return value
    Expected Result: SDK init return values logged
    Evidence: Logcat output saved to .sisyphus/evidence/task-1-spike-logcat.txt
  ```

  **Commit**: YES
  - Message: `spike(connection): validate initSDKWIFI on hardware`
  - Files: `WifiSpike.kt`, `PowerSdkPlugin.kt` (temporary handler)

---

- [x] 2. **Connection Core — Interfaces, Enums, and State Machine**

  **What to do**:
  - Create `TransportMode` enum in Kotlin: `NONE, WIFI, USB`
  - Create `ConnectionPhase` enum in Kotlin: `IDLE, DISCOVERING, TRANSPORT_AVAILABLE, CONNECTING, SDK_ACTIVE, DRONE_CONNECTING, CONNECTED, DEGRADED, DISCONNECTED, ERROR`
  - Create `ConnectionRuntime` interface defining: `currentTransport`, `currentPhase`, `sessionGeneration`, `isTransitionInProgress`
  - Create `SdkInitializer` interface: `initWifi(): Int`, `initAoa(fd: Int): Int`, `uninit(): Int`, `getCurrentType(): Int`
  - Create `WifiDetector` interface: `getConfidence(): WifiConfidence`, `isReachable(ip: String, port: Int, timeoutMs: Long): Boolean`
  - Create `ReachabilityProbe` interface: `probe(host: String, port: Int, timeoutMs: Long): Boolean`
  - Create mirror Dart enums: `TransportMode`, `ConnectionPhase`
  - Create Dart `ConnectionState` data class with: `transport`, `phase`, `sessionGeneration`, `statusMessage`, `errorMessage`

  **Must NOT do**:
  - Don't implement any logic — interfaces and enums only
  - Don't modify existing connection code yet
  - Don't add WiFi-specific logic

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Pure type/interface definitions, no complex logic
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1 (with Tasks 1, 3)
  - **Blocks**: Tasks 5, 6, 7, 8
  - **Blocked By**: None

  **References**:
  - `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniCommonNative.kt` — SDK methods that interfaces must wrap
  - `vision_minus_flutter/lib/core/models/boat_state.dart:5` — existing `ConnectionState` enum (will be superseded but must remain backward-compatible during transition)
  - `smali_classes3/com/powervision/gcs/usb2/GCSConnectionManager$ConnectionType.smali` — original connection type enum for reference (IDEAL=0, AP03=1, W4=2, WIFI=3)
  - `smali_classes2/com/powervision/powersdk/model/ConnectModel.smali` — original 15-state connection model
  - `smali_classes2/com/powervision/powersdk/interfaces/ConnectionListener.smali` — original 15 callback methods

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds with new types
  - [ ] `flutter analyze` reports 0 errors
  - [ ] Kotlin: `TransportMode`, `ConnectionPhase` enums compile
  - [ ] Kotlin: `ConnectionRuntime`, `SdkInitializer`, `WifiDetector`, `ReachabilityProbe` interfaces compile
  - [ ] Dart: mirror enums and `ConnectionState` class compile
  - [ ] Existing app behavior unchanged (new code is additive only)

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: New types compile without breaking existing code
    Tool: Bash
    Steps:
      1. flutter build apk --debug (workdir: vision_minus_flutter/)
      2. Assert: exit code 0
      3. flutter analyze (workdir: vision_minus_flutter/)
      4. Assert: "No issues found" or 0 errors
    Expected Result: Build and analysis pass
    Evidence: Build output captured
  ```

  **Commit**: YES
  - Message: `refactor(connection): add transport mode enums and core interfaces`
  - Files: new Kotlin interfaces, new Dart enums/classes

---

- [x] 3. **Fix EventChannel Multi-Subscriber Bug**

  **What to do**:
  - In `PowerSdkBridge.dart`: replace the 5 `get xxxStream` getters that call `receiveBroadcastStream()` each time
  - Create 5 private `StreamController<Map<String, dynamic>>.broadcast()` instances
  - Subscribe to each EventChannel ONCE in a static `init()` method
  - Pipe events from EventChannel subscription into the broadcast StreamControllers
  - Expose getters that return the broadcast streams (not raw EventChannel streams)
  - Verify all consumers (`connection_provider.dart`, `navigation_provider.dart`, `rth_provider.dart`) receive events simultaneously

  **Must NOT do**:
  - Don't change EventChannel name strings (`com.visionminus/gps`, `/battery`, `/connection`, `/navigation`, `/attitude`)
  - Don't modify native `PowerSdkEventHandler.kt` — the fix is Dart-side only
  - Don't change provider subscription logic yet (just fix the stream source)

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Well-scoped Dart refactor, single file change
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1 (with Tasks 1, 2)
  - **Blocks**: Task 8
  - **Blocked By**: None

  **References**:
  - `vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart:14-27` — current broken getters that call `receiveBroadcastStream()` each access
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt:15-19` — native side stores one sink per channel (confirms single-listener limitation)
  - `vision_minus_flutter/lib/features/connection/connection_provider.dart:70` — subscribes to `navigationStream`
  - `vision_minus_flutter/lib/features/navigation/navigation_provider.dart:54` — ALSO subscribes to `navigationStream`
  - `vision_minus_flutter/lib/features/rth/rth_provider.dart:48` — ALSO subscribes to `navigationStream`

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] `flutter analyze` reports 0 errors
  - [ ] `grep -c "receiveBroadcastStream" vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart` returns exactly 5 (one per channel, not per getter access)
  - [ ] `grep -c "StreamController" vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart` returns 5 (one broadcast controller per channel)
  - [ ] All 3 providers that subscribe to `navigationStream` still compile

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: EventChannel fix compiles and single-subscription pattern verified
    Tool: Bash
    Steps:
      1. flutter build apk --debug
      2. Assert: exit code 0
      3. grep -c "receiveBroadcastStream" lib/core/sdk/power_sdk_bridge.dart
      4. Assert: output is "5" (one per channel, called once in init)
      5. grep -c "StreamController.broadcast" lib/core/sdk/power_sdk_bridge.dart
      6. Assert: output is "5"
    Expected Result: Single subscriber pattern verified
    Evidence: grep output captured
  ```

  **Commit**: YES
  - Message: `fix(sdk): resolve EventChannel multi-subscriber bug with broadcast streams`
  - Files: `power_sdk_bridge.dart`

---

- [x] 4. **Android Manifest and Permissions**

  **What to do**:
  - Change `<uses-feature android:name="android.hardware.usb.accessory" android:required="true"/>` to `required="false"`
  - Add `<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>`
  - Add `<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>`
  - Add `<uses-permission android:name="android.permission.CHANGE_NETWORK_STATE"/>`
  - Add `<uses-permission android:name="android.permission.NEARBY_WIFI_DEVICES"/>` with `usesPermissionFlags="neverForLocation"` for Android 12+
  - Remove bogus `<uses-permission android:name="android.permission.USB_PERMISSION"/>` (not a real Android permission)
  - Narrow `usb_accessory_filter.xml` to match PowerVision devices specifically (add manufacturer/model attributes if known, otherwise document as future improvement)

  **Must NOT do**:
  - Don't change activity declarations or intent filters
  - Don't add new activities

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: XML-only changes, well-defined
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 5, 6)
  - **Blocks**: Tasks 7, 10
  - **Blocked By**: None

  **References**:
  - `vision_minus_flutter/android/app/src/main/AndroidManifest.xml` — current manifest with USB-only permissions
  - `vision_minus_flutter/android/app/src/main/res/xml/usb_accessory_filter.xml:4` — empty `<usb-accessory />` matching everything

  **Acceptance Criteria**:
  - [ ] `grep 'required="false"' vision_minus_flutter/android/app/src/main/AndroidManifest.xml` matches USB accessory feature
  - [ ] `grep -c "ACCESS_WIFI_STATE\|ACCESS_NETWORK_STATE\|CHANGE_NETWORK_STATE\|NEARBY_WIFI_DEVICES" vision_minus_flutter/android/app/src/main/AndroidManifest.xml` returns 4
  - [ ] `grep -c "USB_PERMISSION" vision_minus_flutter/android/app/src/main/AndroidManifest.xml` returns 0
  - [ ] `flutter build apk --debug` succeeds

  **Commit**: YES
  - Message: `fix(manifest): add WiFi permissions, make USB optional, remove bogus USB_PERMISSION`
  - Files: `AndroidManifest.xml`, `usb_accessory_filter.xml`

---

- [x] 5. **SdkLifecycleController + CallbackGate (Kotlin)**

  **What to do**:
  - Implement `SdkLifecycleController` class:
    - Owns a `sessionGeneration: AtomicInteger` counter
    - All init/uninit calls run on a single-threaded `Executors.newSingleThreadExecutor()`
    - `initWifi()`: increment generation → `uninitSDK()` if active → `initSDKWIFI()` (or `initSdkWithWIFI()` per spike results) → register callbacks → return result
    - `initAoa(fd)`: increment generation → `uninitSDK()` if active → `initSDKAOA()` → register callbacks → set fd → return result
    - `uninit()`: increment generation → `uninitSDK()` → return result
    - `getCurrentType()`: `JniSdkEngine.getCurrentSDKType()`
    - All methods are `suspend` or use `CompletableFuture` for async completion
  - Implement `CallbackGate` class:
    - Wraps all JNI callback registrations
    - Tags each callback with `sessionGeneration` at registration time
    - On callback arrival: compare callback generation to current generation; drop if stale
    - Log dropped stale callbacks for debugging
  - Implement `ConnectionRuntimeImpl`:
    - Holds `currentTransport: TransportMode`, `currentPhase: ConnectionPhase`, `sessionGeneration: Int`
    - Thread-safe via synchronized or AtomicReference
    - Emits state changes to Flutter via EventChannel

  **Must NOT do**:
  - Don't modify `registerW4Callbacks()` or `registerAp03Callbacks()` method signatures
  - Don't change JNI callback method names (`.so` calls by exact name)
  - Don't create a WiFi read thread (SDK manages TCP internally)

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
    - Reason: Core architectural component with threading and state management concerns
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 4, 6)
  - **Blocks**: Task 7
  - **Blocked By**: Tasks 1 (spike results), 2 (interfaces)

  **References**:
  - Task 1 spike results (`.sisyphus/spike-results.md`) — determines which init method to use
  - Task 2 interfaces — implements `SdkInitializer`, `ConnectionRuntime` interfaces
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/UsbConnectionManager.kt:132-168` — existing init sequence pattern to follow
  - `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniCommonNative.kt` — SDK lifecycle JNI methods
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt:21-23` — thread marshaling pattern via `mainHandler.post`

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] `SdkLifecycleController` enforces serial execution (verified by code review — only one thread executor)
  - [ ] `CallbackGate` has generation comparison logic
  - [ ] `ConnectionRuntimeImpl` has all fields from interface
  - [ ] No direct calls to `initSDKWIFI/initSDKAOA/uninitSDK` exist outside `SdkLifecycleController`

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: SDK lifecycle is serialized
    Tool: Bash (grep)
    Steps:
      1. grep -rn "initSDKWIFI\|initSDKAOA\|unInitSDK" vision_minus_flutter/android/app/src/main/kotlin/
      2. Assert: calls ONLY appear in SdkLifecycleController.kt (not in PowerSdkPlugin, UsbConnectionManager, or any other file)
    Expected Result: SDK lifecycle fully encapsulated
    Evidence: grep output captured
  ```

  **Commit**: YES
  - Message: `refactor(connection): add SdkLifecycleController with generation-gated callbacks`
  - Files: `SdkLifecycleController.kt`, `CallbackGate.kt`, `ConnectionRuntimeImpl.kt`

---

- [x] 6. **WifiTransportController (Kotlin)**

  **What to do**:
  - Implement `WifiTransportController` class:
    - Uses `ConnectivityManager` + `NetworkCallback` to monitor active network
    - Confidence scoring for "this is the drone network":
      - Signal 1: Active network is WiFi (not cellular)
      - Signal 2: SSID matches drone pattern (if available — requires `ACCESS_FINE_LOCATION` + `NEARBY_WIFI_DEVICES` on Android 12+)
      - Signal 3: Subnet consistent with `192.168.1.x`
      - Signal 4: `ReachabilityProbe` to `192.168.1.10:554` succeeds (TCP connect within 2s timeout)
    - `getConfidence()` returns enum: `NONE, LOW, MEDIUM, HIGH`
    - `HIGH` = WiFi active + reachable; `MEDIUM` = WiFi active + right subnet; `LOW` = WiFi active only
    - Separate detection from SDK init — NEVER call `initSDKWIFI()` from this class
  - Implement `ReachabilityProbeImpl`:
    - Simple TCP socket connect to `host:port` with timeout
    - Returns true/false, swallows exceptions
  - Register `NetworkCallback` for WiFi connectivity change events
  - Emit transport availability changes to `ConnectionRuntime`

  **Must NOT do**:
  - Don't call any SDK init methods from this class
  - Don't use `initSDKWIFI()` as a "truth test" for detection (Devil's Advocate prohibition)
  - Don't hard-depend on SSID — reachability is the primary signal

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
    - Reason: Android networking APIs with API-level-specific behavior
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 4, 5)
  - **Blocks**: Task 7
  - **Blocked By**: Tasks 1 (spike validates WiFi works), 2 (interfaces)

  **References**:
  - Task 2 interfaces — implements `WifiDetector`, `ReachabilityProbe`
  - `vision_minus_flutter/android/app/src/main/AndroidManifest.xml` — must have WiFi permissions from Task 4
  - `smali_classes3/com/powervision/gcs/usb2/GCSConnectionManager$ConnectionType.smali:44` — `WIFI = 3` in original app
  - `smali/com/appunite/player/PVCameraConstant.smali:17` — drone RTSP at `192.168.1.10:554` confirms target IP/port

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] `WifiTransportController` does NOT import or reference `JniCommonNative` or `JniSdkEngine` (separation verified)
  - [ ] `ReachabilityProbeImpl` uses TCP socket with configurable timeout
  - [ ] Confidence scoring returns 4 distinct levels

  **Commit**: YES
  - Message: `feat(connection): add WiFi transport detection with reachability probe`
  - Files: `WifiTransportController.kt`, `ReachabilityProbeImpl.kt`

---

- [x] 7. **Refactor PowerSdkPlugin for Dual-Transport**

  **What to do**:
  - Replace direct USB calls with `SdkLifecycleController` delegation
  - Add new MethodChannel handlers:
    - `connectWifi` → calls `SdkLifecycleController.initWifi()`
    - `connectUsb` → calls `SdkLifecycleController.initAoa(fd)`
    - `disconnect` → calls `SdkLifecycleController.uninit()`
    - `getConnectionStatus` → returns `ConnectionRuntime` state
    - `getAvailableTransports` → queries `WifiTransportController` + USB accessory state
    - `getWifiConfidence` → returns `WifiTransportController.getConfidence()`
  - Keep existing navigation/waypoint/RTH handlers unchanged (they're transport-agnostic)
  - Move all SDK lifecycle calls OFF the Flutter platform thread — use `SdkLifecycleController`'s executor
  - Wire `ConnectionRuntime` state changes to a new EventChannel (`com.visionminus/connection_state`)
  - Remove spike code from Task 1

  **Must NOT do**:
  - Don't change existing navigation/GPS/waypoint/RTH method channel handlers
  - Don't change EventChannel name strings for existing channels

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
    - Reason: Central integration point connecting all new components
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential (after Wave 2)
  - **Blocks**: Task 8
  - **Blocked By**: Tasks 4, 5, 6

  **References**:
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt` — current USB-only plugin, complete rewrite of connection handlers
  - Task 5 `SdkLifecycleController` — delegates all SDK calls to this
  - Task 6 `WifiTransportController` — queries for transport availability
  - `vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart` — Dart-side must match new method names

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] `grep -c "connectWifi\|connectUsb\|getConnectionStatus\|getAvailableTransports\|getWifiConfidence" PowerSdkPlugin.kt` returns 5+
  - [ ] No direct `initSDKWIFI/initSDKAOA/uninitSDK` calls in `PowerSdkPlugin.kt` (all via `SdkLifecycleController`)
  - [ ] Existing navigation/waypoint handlers unchanged (diff shows no modifications to those methods)

  **Commit**: YES
  - Message: `refactor(plugin): dual-transport MethodChannel API with SDK lifecycle delegation`
  - Files: `PowerSdkPlugin.kt`, `power_sdk_bridge.dart`

---

- [x] 8. **Dart ConnectionRepository + Provider Refactor**

  **What to do**:
  - Create `ConnectionRepository` class:
    - Sole consumer of `connection_state` EventChannel from Task 7
    - Holds canonical `ConnectionState` (transport, phase, generation, messages)
    - Exposes `Stream<ConnectionState>` for providers
  - Create `ConnectionController`:
    - Methods: `autoConnect()`, `connectWifi()`, `connectUsb()`, `disconnect()`, `retry()`
    - Calls through `PowerSdkBridge` method channels
  - Refactor `ConnectionProvider` to read from `ConnectionRepository` instead of raw EventChannel
  - Refactor `NavigationProvider` and `RthProvider` to use broadcast streams from Task 3's fix
  - Remove direct EventChannel subscription from individual providers

  **Must NOT do**:
  - Don't change navigation/waypoint/RTH business logic — only change their data source
  - Don't break existing `BoatState` model consumers

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
    - Reason: Multi-file Dart refactor touching state management
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES (with Task 9)
  - **Parallel Group**: Wave 3
  - **Blocks**: Task 10
  - **Blocked By**: Tasks 3 (EventChannel fix), 7 (new method channels)

  **References**:
  - Task 3 `PowerSdkBridge` refactored streams — providers consume these
  - Task 7 new MethodChannel API — `ConnectionController` calls these
  - `vision_minus_flutter/lib/features/connection/connection_provider.dart` — current provider to refactor
  - `vision_minus_flutter/lib/features/navigation/navigation_provider.dart` — update stream source
  - `vision_minus_flutter/lib/features/rth/rth_provider.dart` — update stream source

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] `flutter analyze` reports 0 errors
  - [ ] No provider directly calls `receiveBroadcastStream()` or accesses raw EventChannel
  - [ ] `ConnectionRepository` is the single source of connection state in Dart

  **Commit**: YES
  - Message: `refactor(dart): centralize connection state in ConnectionRepository`
  - Files: `connection_repository.dart`, `connection_controller.dart`, `connection_provider.dart`, `navigation_provider.dart`, `rth_provider.dart`

---

- [x] 9. **Refine UsbConnectionManager — Narrow to USB Hardware Only**

  **What to do**:
  - Remove SDK init/uninit calls from `UsbConnectionManager` (moved to `SdkLifecycleController`)
  - Remove connection state management (moved to `ConnectionRuntime`)
  - Keep ONLY: USB accessory detection, permission request, file descriptor acquisition, read thread
  - UsbConnectionManager becomes a "USB hardware provider" that gives an fd to `SdkLifecycleController`
  - Fix `fdLock` deadlock (unlock in finally block)
  - Fix `sendData` masking write failures (return false when outputStream is null)
  - Fix SDK init failure leaking USB resources (close fd/streams in catch block)

  **Must NOT do**:
  - Don't remove USB accessory filter or intent handling
  - Don't change the USB permission flow

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Narrowing existing code, well-understood scope
  - **Skills**: []

  **Parallelization**:
  - **Can Run In Parallel**: YES (with Tasks 7, 8)
  - **Parallel Group**: Wave 3
  - **Blocks**: Task 11
  - **Blocked By**: Task 2 (interfaces)

  **References**:
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/UsbConnectionManager.kt` — full file, heavy refactor
  - Review findings: fdLock deadlock (lines 97-127), sendData masking (lines 252-261), resource leak (lines 129-165)

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] No `initSDKWIFI/initSDKAOA/uninitSDK` calls in `UsbConnectionManager.kt`
  - [ ] `fdLock.unlock()` is in a `finally` block
  - [ ] `sendData` returns `false` when `outputStream` is null

  **Commit**: YES
  - Message: `refactor(usb): narrow UsbConnectionManager to hardware-only, fix deadlock and resource leaks`
  - Files: `UsbConnectionManager.kt`

---

- [x] 10. **Connection Screen UX Redesign**

  **What to do**:
  - Redesign `ConnectionScreen` for WiFi-primary flow:
    - On mount: query `getWifiConfidence()` and `getAvailableTransports()`
    - If WiFi confidence HIGH: auto-trigger `connectWifi()`, show progress: "Finding drone..." → "Connecting..." → "Connected"
    - If WiFi confidence MEDIUM/LOW: show "Connect phone to drone WiFi" instruction with "Retry" button
    - If WiFi confidence NONE: show "Turn on drone and join its WiFi network"
    - If USB attached AND WiFi not available: show secondary "Use USB (Debug/Firmware)" option
    - If USB attached AND WiFi connected: don't show USB option (WiFi is active)
  - Replace hardcoded "Connect via USB" text
  - Add connection phase progress indicator
  - Show transport type on dashboard when connected (small WiFi/USB icon)

  **Must NOT do**:
  - Don't implement WiFi settings/system settings intent (user manages WiFi externally)
  - Don't add auto-switch UI — explicit user choice only
  - Don't over-design — this is a utility app for a water drone, not a consumer product

  **Recommended Agent Profile**:
  - **Category**: `visual-engineering`
    - Reason: UI/UX redesign with state-driven display logic
  - **Skills**: [`frontend-ui-ux`]
    - `frontend-ui-ux`: Connection screen is the primary UX touchpoint

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential (after Task 8)
  - **Blocks**: Task 11
  - **Blocked By**: Task 8 (ConnectionRepository/Controller)

  **References**:
  - `vision_minus_flutter/lib/features/connection/connection_screen.dart` — current USB-only screen to redesign
  - Task 8 `ConnectionController` — UI calls these methods
  - Task 8 `ConnectionRepository` — UI reads state from this

  **Acceptance Criteria**:
  - [ ] `flutter build apk --debug` succeeds
  - [ ] `flutter analyze` reports 0 errors
  - [ ] No string "Connect via USB" as primary CTA (USB is secondary)
  - [ ] `grep -c "connectWifi\|getWifiConfidence" connection_screen.dart` returns 2+ (WiFi is primary path)
  - [ ] `grep -c "connectUsb" connection_screen.dart` returns 1+ (USB secondary option exists)

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Connection screen shows WiFi-primary UI
    Tool: Bash (adb screencap + Playwright skill for analysis)
    Preconditions: App installed, phone NOT on drone WiFi
    Steps:
      1. adb shell am force-stop com.visionminus.vision_minus
      2. adb logcat -c
      3. adb shell am start -n com.visionminus.vision_minus/.MainActivity
      4. sleep 5
      5. adb shell screencap -p /sdcard/screen.png && adb pull /sdcard/screen.png
      6. Assert: screenshot shows WiFi connection instruction, not "Connect via USB"
    Expected Result: WiFi-primary connection screen visible
    Evidence: .sisyphus/evidence/task-10-connection-screen.png
  ```

  **Commit**: YES
  - Message: `feat(ui): WiFi-primary connection screen with auto-detect and USB fallback`
  - Files: `connection_screen.dart`, `dashboard_screen.dart` (transport indicator)

---

- [x] 11. **Integration Test on Device with Drone**

  **What to do**:
  - Full end-to-end test with phone connected to drone's WiFi network
  - Test matrix:
    1. WiFi detected → init success → drone connected → telemetry flowing
    2. WiFi not drone network → no init attempted → instruction shown
    3. WiFi connect timeout → proper error state → retry works
    4. USB attached while WiFi connected → no auto-switch → USB option visible but not active
    5. WiFi drop during idle (not mid-mission) → disconnected state → reconnect via retry
    6. All 3 providers (connection, navigation, RTH) receive events simultaneously
    7. Waypoint upload works over WiFi
    8. RTH command works over WiFi
    9. Thrust slider minimum is 1% (original user complaint)
  - Capture logcat for each test case
  - Screenshot evidence for UI states

  **Must NOT do**:
  - Don't test transport switch mid-mission (out of scope, safety concern)
  - Don't test firmware update over WiFi (out of scope)
  - Don't test on open water yet — dock/bench test only

  **Recommended Agent Profile**:
  - **Category**: `deep`
    - Reason: Multi-scenario integration testing with real hardware
  - **Skills**: [`playwright`]
    - `playwright`: For screenshot-based UI verification via adb

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Wave 4 (final)
  - **Blocks**: None (final task)
  - **Blocked By**: Tasks 7, 8, 9, 10

  **References**:
  - All prior tasks — this validates the complete system
  - `vision_minus_flutter/lib/features/navigation/waypoint_editor_panel.dart` — verify thrust slider min=1

  **Acceptance Criteria**:
  - [ ] App launches without crash
  - [ ] WiFi detection shows correct confidence when on drone network
  - [ ] `initSDKWIFI` succeeds (logcat shows success return value)
  - [ ] Telemetry events arrive in logcat (GPS, battery, attitude)
  - [ ] All 3 providers receive events (no silent data loss)
  - [ ] Connection screen shows "Connected" state with WiFi indicator
  - [ ] Waypoint upload returns success
  - [ ] Evidence screenshots in `.sisyphus/evidence/task-11-*.png`

  **Commit**: YES
  - Message: `test(integration): verify WiFi-primary connection on hardware`
  - Files: `.sisyphus/evidence/*`

---

## Commit Strategy

| After Task | Message | Verification |
|------------|---------|--------------|
| 1 | `spike(connection): validate initSDKWIFI on hardware` | logcat output |
| 2 | `refactor(connection): add transport mode enums and core interfaces` | `flutter build` |
| 3 | `fix(sdk): resolve EventChannel multi-subscriber bug` | `flutter build` + grep |
| 4 | `fix(manifest): add WiFi permissions, make USB optional` | grep manifest |
| 5 | `refactor(connection): add SdkLifecycleController with generation-gated callbacks` | `flutter build` + grep |
| 6 | `feat(connection): add WiFi transport detection with reachability probe` | `flutter build` |
| 7 | `refactor(plugin): dual-transport MethodChannel API` | `flutter build` + grep |
| 8 | `refactor(dart): centralize connection state in ConnectionRepository` | `flutter build` + `flutter analyze` |
| 9 | `refactor(usb): narrow UsbConnectionManager, fix deadlock and leaks` | `flutter build` + grep |
| 10 | `feat(ui): WiFi-primary connection screen with auto-detect` | `flutter build` + screenshot |
| 11 | `test(integration): verify WiFi-primary connection on hardware` | logcat + screenshots |

---

## Success Criteria

### Verification Commands
```bash
# Build succeeds
flutter build apk --debug  # Expected: BUILD SUCCESSFUL

# No analysis errors
flutter analyze  # Expected: No issues found

# WiFi permissions present
grep -c "ACCESS_WIFI_STATE\|ACCESS_NETWORK_STATE\|NEARBY_WIFI_DEVICES" AndroidManifest.xml  # Expected: 3

# USB feature optional
grep 'required="false"' AndroidManifest.xml | grep -c usb  # Expected: 1

# EventChannel fix verified
grep -c "StreamController.broadcast" lib/core/sdk/power_sdk_bridge.dart  # Expected: 5

# SDK lifecycle encapsulated
grep -rn "initSDKWIFI\|initSDKAOA" android/app/src/main/kotlin/ | grep -v SdkLifecycleController  # Expected: 0 matches

# WiFi is primary UI path
grep -c "connectWifi" lib/features/connection/connection_screen.dart  # Expected: 1+
```

### Final Checklist
- [ ] WiFi auto-detection works on drone network
- [ ] USB only appears when physically attached
- [ ] No auto-switch mid-mission (safety)
- [ ] All EventChannel subscribers receive events
- [ ] No stale callbacks after transport switch
- [ ] SDK init/uninit serialized on background thread
- [ ] Thrust slider minimum is 1% (original user complaint)
- [ ] App launches without crash on Android 14+
