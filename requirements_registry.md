# Requirements Registry — VisionMinus PowerDolphin

Every user request is a row. Each row has acceptance criteria, code path, and verification status.
This file is the single source of truth for "is the app done?"

## Status Legend
- PASS: Verified working in code + test
- FAIL: Not working or not implemented
- PARTIAL: Partially implemented, gaps documented
- UNTESTED: Code exists but no verification yet

## Requirements

### REQ-01: Thrust Control
**Request:** "thrust doesn't work"
**Acceptance:** Left stick vertical produces forward (positive x) and reverse (negative x) rocker commands. Right stick horizontal produces left/right (r) steering.
**Code path:** `dashboard_screen.dart:_sendRocker` → `PowerSdkBridge.controlRocker` → `PowerSdkPlugin.controlRocker` → `JniW4Native.buildParityRocker` → `JniW4Native.controlRocker`
**Test:** `test/req_01_thrust_test.dart`
**Status:** UNTESTED

### REQ-02: Compass Calibration
**Request:** "compass calibration does nothing"
**Acceptance:** Calibration start triggers callback-driven FSM. UI shows progress through phases (started → orienting → progressing → success/failed). Timeout at 15s start, 90s terminal.
**Code path:** `settings_panel.dart` → `PowerSdkBridge.startMagCalibration` → `PowerSdkPlugin` → `JniW4Native.startMagCalibration` → callbacks → `connection_provider.dart`
**Test:** `test/req_02_calibration_test.dart`
**Status:** UNTESTED

### REQ-03: Spot-Lock
**Request:** "spot-lock feature — intelligently decide throttle and vector, least throttle possible due to noise"
**Acceptance:** GPS-only position hold. 3.0m deadband (enter 3.5m, exit 2.5m). Thrust 4-12%. Pulse 1s ON / 2s OFF. Yaw-compensated bearing. Suspends on GPS loss or manual override.
**Code path:** `spot_lock_controller.dart` → `PowerSdkBridge.controlRocker`
**Test:** `test/req_03_spot_lock_test.dart`
**Status:** UNTESTED

### REQ-04: Phone-Heading Map Orientation
**Request:** "map needs to be oriented the direction of the phone — not locked to north up"
**Acceptance:** On first launch, map bearing follows phone compass heading. No user action required. Default MapFollowMode is phone.
**Code path:** `map_provider.dart:mapFollowModeProvider` → `map_widget.dart:_resolveCameraBearing` → `PhoneHeadingSensorManager.kt`
**Test:** `test/req_04_map_heading_test.dart`
**Status:** UNTESTED

### REQ-05: Manual Control Without GPS
**Request:** "Manual control should work indoors/line-of-sight even when GPS features are unavailable"
**Acceptance:** Unlock succeeds and rocker commands reach SDK when GPS hasFix is false. No GPS gate on manual thrust/steering.
**Code path:** `dashboard_screen.dart:_sendRocker` checks `boat.isUnlockConfirmed` only (not GPS)
**Test:** `test/req_05_manual_no_gps_test.dart`
**Status:** UNTESTED

### REQ-06: Reverse Thrust
**Request:** "Left stick both directions makes it go forward, there's no reverse"
**Acceptance:** Pulling left stick down produces negative _leftY → negative x channel → reverse thrust command.
**Code path:** `ship_rocker.dart:onAxisChanged(-_y)` → `dashboard_screen.dart:_leftY` → `_sendRocker:scaledThrust`
**Test:** `test/req_06_reverse_test.dart`
**Status:** UNTESTED

### REQ-07: Tank Turns
**Request:** "Left and right with no left stick should turn like a tank"
**Acceptance:** With _leftY=0, right stick produces r-only commands (x=0, r=nonzero). Drone rotates in place.
**Code path:** `dashboard_screen.dart:_sendRocker` — when _leftY=0, scaledThrust=0, scaledSteering=r
**Test:** `test/req_07_tank_turns_test.dart`
**Status:** UNTESTED

### REQ-08: Differential Steering
**Request:** "When left stick is forward, turning with right stick should modulate speed to get desired direction"
**Acceptance:** With _leftY>0 and _rightX>0, both x and r are nonzero. SDK interprets as curved path.
**Code path:** `dashboard_screen.dart:_sendRocker` — both channels sent simultaneously
**Test:** `test/req_08_differential_test.dart`
**Status:** UNTESTED

### REQ-09: On-Device Log Recording
**Request:** "You need a way to record logs so this doesn't have to be connected via adb"
**Acceptance:** Logs written to device filesystem. Recording auto-starts. Files retrievable via adb pull. Thread-safe. Final flush on stop.
**Code path:** `DeviceLogRecorder.kt` → `PowerSdkPlugin.kt:startLogRecording/stopLogRecording`
**Test:** `test/req_09_log_recorder_test.dart`
**Status:** UNTESTED

### REQ-10: GPS Sanity (No Africa)
**Request:** "GPS now shows us in Africa despite being in Tennessee"
**Acceptance:** No code path allows 0,0 or insane coordinates to reach map rendering, RTH, mission, or spot-lock. `GpsPosition.isCoordinateSane` guards all coordinate consumers.
**Code path:** `gps_position.dart:isCoordinateSane` → guards in `power_sdk_bridge.dart`, `rth_provider.dart`, `map_widget.dart`, `navigation_provider.dart`, `spot_lock_controller.dart`
**Test:** `test/req_10_gps_sanity_test.dart`
**Status:** UNTESTED

### REQ-11: Locator Toggle
**Request:** "locator with toggle for centering on the drone or the phone"
**Acceptance:** Map has a button that cycles: drone → phone → free. Each mode centers on correct target with correct heading.
**Code path:** `map_widget.dart:_nextFollowMode` → `mapFollowModeProvider`
**Test:** `test/req_11_locator_test.dart`
**Status:** UNTESTED

### REQ-12: Speed Mode Differentiation
**Request:** "modes don't work. They're all the same. They're supposed to have different operations"
**Acceptance:** Speed modes produce visibly different behavior. SDK receives different speed mode values. Rocker layout or scaling differs per mode.
**Code path:** `bottom_info_bar.dart:_speedModes` → `PowerSdkBridge.setSpeedMode` + `dashboard_screen.dart:_sendRocker:speedScale`
**Test:** `test/req_12_speed_modes_test.dart`
**Status:** UNTESTED

### REQ-13: PIP Tap Target
**Request:** "Clicking the PIP doesn't always switch screens — invisible div floating on top"
**Acceptance:** PIP at top:38 left:42 is always tappable. No overlapping positioned widgets. Compact map uses IgnorePointer.
**Code path:** `dashboard_screen.dart` layer stack, `map_widget.dart:compact:IgnorePointer`
**Test:** `test/req_13_pip_tap_test.dart`
**Status:** UNTESTED

### REQ-14: Intent Notification
**Request:** "remove the intent notification. It never fades. Wrong spot. Should be in header bar"
**Acceptance:** Intent status appears in TopTelemetryBar as small dot + text. Auto-fades 5s after terminal state. Not visible when idle.
**Code path:** `top_telemetry_bar.dart:_intentStatusChip` + `dashboard_screen.dart:_syncUnlockIntentFadeState`
**Test:** `test/req_14_intent_notification_test.dart`
**Status:** UNTESTED

### REQ-15: WiFi Disconnect Safety
**Request:** "Drone freaked out when WiFi was lost — now damaged"
**Acceptance:** On connection loss while armed: sequentially disable spot-lock, send zero rocker, set sail mode 0, send disarm. Do NOT falsely set isArmed=false locally.
**Code path:** `connection_provider.dart:_applyConnectionState` → shutdown sequence
**Test:** `test/req_15_disconnect_safety_test.dart`
**Status:** UNTESTED

### REQ-16: Spot-Lock GPS Gate
**Request:** "Spot-lock should be GPS-only when GPS quality is poor/unavailable"
**Acceptance:** Spot-lock refuses to engage without `isAutonomyReady`. Suspends mid-hold if GPS quality drops. Never uses IMU.
**Code path:** `spot_lock_controller.dart:enable` checks `isAutonomyReady`, `_tick` checks continuous quality
**Test:** `test/req_16_spot_lock_gps_test.dart`
**Status:** UNTESTED

## Convergence Exit Criteria

The app is "done" when ALL of the following are true:
1. All 16 requirements have status PASS
2. `flutter analyze` returns 0 issues
3. `flutter test` passes all tests
4. Adversarial review round finds 0 CRITICAL and 0 HIGH findings
5. User validates on physical hardware
