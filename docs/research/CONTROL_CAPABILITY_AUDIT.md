## Verdict

Audited `main` at `b80b2467a906bbe4769747dcb6ef47b2f2e5a96f`. VisionMinus exposes manual rocker thrust, three firmware speed modes, light control, camera recording, and a dormant gimbal bridge. It does **not** currently provide cruise control or a dedicated minimum-thrust trolling control.

The app is **not ready for propulsion testing** until arm callback polarity and production shutdown gating are fixed. The well-tested safety coordinator is not wired into production.

## Feature matrix

| Feature | Current capability | Exact active path | Key gap |
|---|---|---|---|
| Minimum manual thrust | Integer rocker commands, nominally `-1000…1000`; smallest representable nonzero command is `±1` | `ShipRocker`/`VirtualJoystick` → `DashboardScreen._sendRocker()` → `PowerSdkBridge.controlRocker()` → method channel → `PowerSdkPlugin` → `buildParityRocker()` → `JniW4Native.controlRocker()` | No trolling setpoint, deadband calibration, ramp, hold, or measured motor-start threshold |
| Speed modes | Sends firmware modes `1/2/3` | `BottomInfoBar` → `setSpeedMode(mode)` → Kotlin → `JniW4Native.setSpeedMode(int)` | These are low/mid/high caps, not cruise; UI also changes joystick layout by mode |
| Cruise control | Callback evidence only | Native callback → `JniW4Native.onFixedSpeedCallBack()` → navigation event | No Flutter/Kotlin/JNI command exists to engage, set, or cancel cruise |
| Light | On/off using `100/0` | `_toggleLight()` → `controlLight()` → Kotlin → `JniW4Native.controlLight(int)` | UI updates optimistically and ignores return/callback state |
| Camera recording | Implemented over camera HTTP API | `_toggleRecording()` → GET `192.168.1.10/cgi-bin/hi3559/record.cgi?...start/stop` | Actual UI bypasses Kotlin/JNI; status is local and not reconciled with camera state |
| JNI recording bridge | Present but unused by dashboard | `PowerSdkBridge.startRecord/stopRecord` → plugin → `JniCameraNative.startRecord/stopRecord` | Native callbacks are stubs; not the active recording path |
| Gimbal | Dormant pitch-rate bridge | `PowerSdkBridge.setGimbalPitch(int)` → Kotlin `toShort()` → `JniW4Native.setGimbalPitch(short)` | No Flutter caller/UI, no validation, no feedback; low priority given suspected physical failure |

## Thrust scale and likely constraints

- Rocker widgets normalize touch displacement to `[-1,1]`, multiply by `1000`, and round to an integer (`dashboard_screen.dart:630-728`; `ship_rocker.dart:32-59`; `virtual_joystick.dart:35-55`).
- `_sendRocker()` forwards thrust as `x` and steering as `r`, with `y=z=0`, after checking only connected + `isUnlockConfirmed` (`dashboard_screen.dart:597-620`).
- Kotlin ignores Flutter’s `y/z`, clamps `x/r` to `[-1000,1000]`, and sends the `Rocker` object directly (`PowerSdkPlugin.kt:314-323`; `JniW4Native.kt:14-16,25,49-57`).
- Archived Smali independently confirms division/scaling, integer conversion, `±1000` clamping, explicit center-zero, and the three legacy `controlRocker` call sites (`fd834bf6:fresh_approach/.../ShipMainActivity.smali:13166-13535`).
- The bundled ARM64 library exports `JniW4Native_controlRocker`; its diagnostic string identifies `Pvw4Ship::controlRocker(int16, int16, int16, int16, uint16)`.
- **Observed command granularity:** one integer unit, nominally 0.1% of full scale.
- **Unverified physical granularity:** the motor/ESC start threshold and sustainable quiet-thrust floor are unknown. Nothing in the Java/Kotlin API proves that command `1`, `10`, or even `40` turns the propulsion system.
- There is no app-side manual deadzone. Touch resolution and finger stability make a raw joystick unsuitable for holding a repeatable near-zero value.
- Spot-lock currently uses `40–120` rocker units, representing 4–12% command, pulsed 1 second on / 2 seconds off (`spot_lock_controller.dart:72-82,278-333`). This is autonomy logic, not a validated trolling floor.
- No voltage-control API was found. Battery voltage is telemetry only; propulsion is commanded through rocker integers. **Do not describe this as motor-voltage control.**

## Cruise-control evidence

The recovered app contains a `DolphinFixedSpeedCruiseListener`. Its constants identify callback state `0 = START`, `1 = STOP`; archived `ShipMainActivity` only consumes that state for UI (`fd834bf6:...DolphinFixedSpeedCruiseListener.smali:18-20`; `ShipMainActivity.smali:10042-10069,11105-11121`).

Current Kotlin preserves the callback as `onFixedSpeed(speed)` and emits a `"fixed_speed"` event (`JniW4Native.kt:143-146`; `PowerSdkEventHandler.kt:390-392`), but:

- the payload is likely a **state**, not a speed setpoint;
- no Flutter consumer was found;
- no native declaration for setting fixed-speed cruise was recovered;
- `setSpeedMode()` and `setSailMode()` are not evidence of cruise engagement.

Therefore cruise capability is currently **observe-only and semantically mislabeled**, not controllable.

## Light, recording, and gimbal details

### Light

- Active scale is exactly `0` off and `100` on (`dashboard_screen.dart:416-420`).
- Recovered Smali uses the same values (`fd834bf6:.../ShipMainActivity.smali:11157-11198`) and forwards them to `controlLight(int)`.
- Native callbacks for light state/result reach the event stream, but Flutter does not consume them (`JniW4Native.kt:92-100`; `PowerSdkEventHandler.kt:394-399`).
- Failed commands leave the UI showing the wrong state.

### Recording

- The dashboard uses HTTP status `200` as success and toggles local `_isRecording`; it does not query camera work state (`dashboard_screen.dart:438-465`).
- The recovered original app uses the same HTTP endpoints (`fd834bf6:.../ShipCameraGetParamsHttputils.smali:213-244`), so the active approach has legacy parity.
- JNI recording exports exist and are bridged (`power_sdk_bridge.dart:171-175`; `PowerSdkPlugin.kt:261-264`; `JniCameraNative.kt:171-179`), but they are not used by the dashboard.

### Gimbal

- Current path uses W4’s `setGimbalPitch(short)`, not `JniGimbalNative`’s AP03 angle/palstance methods (`PowerSdkPlugin.kt:375-380`; `JniW4Native.kt:33`).
- Recovered ship UI generated approximately `-1000…1000` pitch-rate commands and sent zero on cancellation (`fd834bf6:.../ShipCustomGestureView.smali:631-645,1997-2035`).
- Thus the current method name should not be assumed to represent an absolute pitch angle.
- No feedback, range checking, release-zero UI, or caller exists. Given suspected mechanical damage, leave it disabled.

## Critical safety gaps

1. **Arm callback polarity is wrong in Dart.**
   - Legacy unlock request is `setArmStatus(1)` (`fd834bf6:.../ShipMainActivity$60.smali:53-76`).
   - But native arm-state callback `0` invokes `rayArm()`, while nonzero invokes `rayDisarm()` (`fd834bf6:.../JniW4Native.smali:550-608`; current `JniW4Native.kt:103-109`).
   - Dart currently interprets callback `status == 1` as armed (`connection_provider.dart:259-292`).
   - Command polarity and observation polarity are different domains and must not share one interpretation.

2. **Command acceptance is treated as physical confirmation.**
   - `set_arm_result == 0` immediately sets `isArmed` from the requested target, despite comments calling it merely accepted (`connection_provider.dart:295-337`).
   - This can admit nonzero thrust without an authoritative state observation.

3. **Production safety coordinator is unwired.**
   - `TransportSafetyOwner.create()` appears only in its tests.
   - Production `_sendRocker()` does not call `maySendNonzeroThrust()` or hold a transport lease.
   - The pure coordinator correctly models zero → exit autonomy → disarm → wait → close, but has no production adapter (`transport_safety_coordinator.dart:111-205,297-301`).

4. **Intentional disconnect closes transport immediately.**
   - Flutter disconnect reaches plugin `lifecycleController.uninit()` directly (`power_sdk_bridge.dart:103-105`; `PowerSdkPlugin.kt:174-183`).
   - Kotlin then increments generation and calls `JniCommonNative.unInitSDK()` without zero/disarm sequencing (`SdkLifecycleController.kt:115-135`).

5. **Connection-loss stop is too late and best-effort.**
   - After loss, Dart tries spot-lock disable → zero → sail mode 0 → disarm (`connection_provider.dart:747-773`), but the link may already be unwritable.

6. **Backgrounding does not stop propulsion.**
   - Lifecycle code only records that the app backgrounded and resyncs on resume (`dashboard_screen.dart:73-83`). No zero, autonomy exit, or disarm occurs on pause/inactive.

7. **Kotlin command boundary lacks safety admission.**
   - It clamps rocker values but does not require current connected generation, confirmed arm state, or an unlatched shutdown (`PowerSdkPlugin.kt:314-323`).

8. **W4 GPS remains unsafe for autonomy validation.**
   - Current autonomy policy requires W4 `fixType >= 3` (`connection_provider.dart:490-496`), but field semantics have not been hardware-validated and existing concerns report invalid values.
   - Do not test spot-lock, RTH, or route cruise until W4 fix values and freshness are characterized.

## Safely testable scope

With the boat immobilized and an independent physical kill path:

1. **Propulsion-disabled first:** verify native loading, method returns, callback registration, arm observation polarity, light state callbacks, and camera HTTP recording. Do not infer thrust from a successful JNI return.
2. **Light:** safe to toggle `0/100`; verify callback state and restore off.
3. **Recording:** safe to start/stop a short clip while stationary; verify actual camera state/file creation rather than local UI alone.
4. **Gimbal:** do not exercise while mechanically suspect.
5. **Restrained propulsion only after gates are fixed:** start from confirmed safe, test zero repeatedly, then monotonically probe `x=1,2,3…` with `r=0`, recording the first start, stable-running, stall, noise, and stop thresholds. Repeat reverse separately. Never use spot-lock or cruise during threshold discovery.
6. **Cruise:** only after a minimum stable command and immediate zero/cancel path are proven. Test cruise cancellation before any sustained setpoint.

## Recommended implementation sequence

1. Resolve command vs callback arm polarity and require authoritative arm-state confirmation.
2. Wire the production safety coordinator through connection ownership, rocker admission, lifecycle pause, connection loss, and intentional disconnect.
3. Add Kotlin generation/connection/range gates and serialized command dispatch; zero must bypass nonzero admission but remain traceable.
4. Add a bench-only thrust calibration tool with integer setpoint, ramp-up, immediate zero, timeout/watchdog, and logging. Measure the real deadband—do not guess.
5. Build trolling mode around the measured stable floor: explicit setpoint, gentle ramp, immediate release-zero, and optional pulse duty-cycle only if continuous minimum remains too fast.
6. Investigate cruise protocol semantics. Do not implement against the existing callback alone; first prove the command/API and cancellation behavior.
7. Reconcile light from native callbacks and recording from actual camera work state.
8. Leave gimbal disabled until the mechanism is inspected.

## Verification and repository state

- Ran the 53 coordinator tests from an isolated `git archive`: all passed.
- `flutter analyze` in that isolated copy: **No issues found**.
- Final repository remained clean at the pinned commit.
- No device interaction occurred.
- No repository files were created or modified.