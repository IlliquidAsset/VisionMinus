# Round 4 Review — Full-App Deep Review (Functionality + UI/UX + Native Bridge)

Rounds 1–3 were functional/safety passes. Round 4 adds two things they lacked: a **UI/UX** review and a **Kotlin native-bridge** review, and it **verifies the toolchain in the cloud** (analyze + test actually run, not just claimed).

## Toolchain verification (cloud, no physical machine)

Run on Flutter 3.44.8 / Dart 3.12.2:

| Command | Result |
|---|---|
| `flutter pub get` | resolved cleanly |
| `flutter analyze` | **No issues found** |
| `flutter test` | **passed** — but only 1 test exists (`test/widget_test.dart`, "app renders connection screen") |
| `flutter build apk` | not run in the review sandbox: `dl.google.com` (Android SDK + Google Maven) was blocked by egress policy. **Builds fine in GitHub Codespaces / any unrestricted environment.** See `.devcontainer/devcontainer.json`. |

**Test-coverage gap:** `docs/requirements_registry.md` planned per-requirement tests (`req_01_thrust_test.dart` …). They were never written. The passing suite therefore verifies almost nothing about the 16 requirements or the safety logic. Writing pure-Dart unit tests for the control math (rocker mapping, spot-lock bearing/thrust, `gps_position.isSane`, `geo_utils`) needs no hardware and should be the first thing added.

---

## Tier 1 — Safety-critical (fix before on-water use)

### T1-1  Armed state is both unreliable and invisible
- **Functional:** the arm-intent 3s timeout permanently clears `armCommandTargetStatus`, so a late `set_arm_result=0` is dropped and `isArmed` stays **false while the boat is physically armed**. `connection_provider.dart:301-304, 407-413`. Downstream: manual thrust is gated on `isArmed` → **sticks go dead** (REQ-01); link-loss shutdown is gated on `state.isArmed` → **safety disarm never fires** (REQ-15).
- **UI:** armed is shown only as a 46px lock icon with a faint tint (`left_action_sidebar.dart:44-48`); no persistent ARMED/SAFE banner — invisible in sunlight.
- **Fix:** don't discard the arm target on timeout (let a late callback reconcile); drive loss-shutdown off "commanded-armed and not confirmed-disarmed"; add a high-contrast ARMED/SAFE + active-mode pill to the top bar.

### T1-2  `System.loadLibrary("PowerSDK")` not guaranteed before first native call
- Load exists only in `JniCommonNative.kt:5` / `JniSdkEngine.kt:5`; absent from `JniW4Native`, `JniAOAChannelNative`, etc. A USB attach fires `JniAOAChannelNative.onRead` before any connect → `UnsatisfiedLinkError` (an `Error`, not caught by `catch(Exception)` in `UsbConnectionManager.kt:124`) → **process crash on plugging in the drone**.
- **Fix:** `init { System.loadLibrary("PowerSDK") }` in every `Jni*` object; widen the read-thread catch to `Throwable`.

### T1-3  `controlRocker` drops the forward/back `y` axis
- Handler reads only `x`/`r`; `buildParityRocker` hardcodes `y=0,z=0` (`PowerSdkPlugin.kt:315-323`, `JniW4Native.kt:49-57`) though Dart sends all four (`power_sdk_bridge.dart:229-242`). Dead throttle axis or control-integrity hazard depending on hull semantics.
- **Fix:** plumb `y` (and `z` if used) through, or remove from the contract.

### T1-4  Core HUD/safety controls disable SafeArea on all sides
- `dashboard_screen.dart:130-134` — top bar, arm/RTH sidebar, camera rail sit against physical edges; clipped by notches/punch-holes/rounded corners on modern landscape phones.
- **Fix:** re-enable insets for bars and rails.

### T1-5  Spot-lock: single un-confirmed tap in the thumb path + flawed control law
- 42dp single-tap enable of an autonomous thruster behavior, right above the right rocker (`dashboard_screen.dart:232-257`).
- Control law decomposes correction into `x=cos, r=sin`, but `r` is a **yaw** channel, not lateral translation, on a non-holonomic boat (`spot_lock_controller.dart:298-326`). At ~90° drift it spins instead of translating; open-loop 1s bursts, no velocity feedback. Honestly PARTIAL vs. "intelligent least-throttle vector."
- **Fix:** gate enable behind long-press/slide, move off the rocker path; switch to steer-then-drive with GPS velocity feedback.

---

## Tier 2 — Functional correctness (original user complaints)

- **Speed modes can still look identical (REQ-12):** selection isn't optimistic and depends on a firmware `speed_mode` echo the setter doesn't guarantee; `set_speed_mode_result` unhandled. `dashboard_screen.dart:197`. Track requested mode locally, apply optimistically.
- **`setSailMode(0)` anti-auto-disarm fires on only one confirm path** (`connection_provider.dart:329-336`); on the `arm_status`/reconnect-resync path it's skipped → firmware auto-disarms ~3s later, thrust dies mid-use.
- **RTH not gated on GPS autonomy readiness** (only coordinate plausibility), unlike mission start. `rth_provider.dart:190-208`. A degraded fix can trigger erratic autonomous return.
- **User-initiated disconnect bypasses armed-shutdown** entirely. `connection_provider.dart:823-826`.
- **Video feed: no retry/reconnect** — dropped RTSP strands on a text screen. `video_feed_widget.dart:50-53`.
- **No location-permission handling** — RTH-to-phone depends on phone GPS never requested/verified. `map_provider.dart:18-25`.
- **Calibration progress/sides/orientation synthesized from one status int** (REQ-02 PARTIAL). `connection_provider.dart:586-667`.

---

## Tier 3 — UX quality & performance

- **Sub-48dp touch targets** throughout (24dp back, 42dp spot-lock/camera, 36dp speed modes, 18dp thrust slider) — brief calls out gloves/wet fingers.
- **Silent optimistic failures:** `_toggleLight`/`_toggleHook` flip UI then ignore the SDK return code (`dashboard_screen.dart:416-426`) — a false "hook open" drops a payload.
- **Safety results via transient SnackBars** rendered over the controls (`dashboard_screen.dart:755-757`) — route arm/RTH outcomes to a persistent status area.
- **Status meaning by color alone** (signal/GPS/spot-lock); **10pt HUD fonts** unreadable in glare; **no screen-reader semantics** on icon-only controls.
- **Performance:** whole dashboard tree rebuilds every telemetry tick (`dashboard_screen.dart:95-98`) — scope with `select`/`Consumer`; most native commands run **on the main thread** (`controlRocker`, camera, waypoints) — dispatch to an executor as connect already does.
- **USB fd ownership racy:** fallback path `close()`s the fd it handed to native; re-entrant `openAccessory` leaks streams/threads. `PowerSdkPlugin.kt:430-455`, `UsbConnectionManager.kt:82-106`.
- **Event-sink / executor lifecycle:** `ConnectionRuntimeImpl` sink and `connectionExecutor` not cleared/shutdown on engine detach. `PowerSdkPlugin.kt:134-147`.

---

## Tier 4 — Hygiene

- **Live Google Maps API key committed** — `AndroidManifest.xml:44-46`. Rotate it; move to an untracked `local.properties` placeholder; restrict by signature + package.
- Hardcoded device IPs/RTSP URLs across 5 files; unused `ColorScheme` (everything styled inline with hex literals); dead widgets (`RthButton`, `CompassWidget`, `BatteryIndicator`, `ThrustGauge`, `GpsStatusWidget`) and a no-op back button.
- **Pre-emptive R8 keep rule:** if `minifyEnabled true` is ever set, JNI callbacks break — add `-keep class com.powervision.natives.** { *; }`.

---

## Honest requirement status (current code)

| REQ | Status | Note |
|-----|--------|------|
| 01 Thrust | PASS* | works; caveat T2 `setSailMode(0)` one-path |
| 02 Calibration | PARTIAL | progress synthesized from one int |
| 03 Spot-lock | PARTIAL | open-loop; `r` misused as lateral |
| 04 Map heading | PASS | display-rotation fix in place |
| 05 Manual w/o GPS | PASS | no GPS gate on manual |
| 06 Reverse | PASS | |
| 07 Tank turns | PASS | |
| 08 Differential | PASS | |
| 09 Logs | PASS | in-app viewer + bridge methods |
| 10 GPS sanity | PASS* | header distance uses `hasFix` not `isSane` |
| 11 Locator | PASS | switches follow mode + focus |
| 12 Speed modes | PARTIAL/FAIL-risk | can appear identical without firmware echo |
| 13 PIP tap | PASS | |
| 14 Intent notification | PASS | |
| 15 Disconnect safety | PARTIAL | `isArmed` false-negative + user-disconnect bypass |
| 16 Spot-lock GPS gate | PASS | continuous checks, solid |

---

## Pickup checklist (suggested order)

1. Add pure-Dart unit tests for control math (no hardware) — establishes a real safety net before touching logic.
2. Tier 1: arm-timeout reconciliation + loss-shutdown gating (T1-1), `loadLibrary` (T1-2), `y` axis (T1-3), SafeArea (T1-4), spot-lock enable gating (T1-5).
3. Add a persistent ARMED/SAFE + mode indicator (pairs with T1-1).
4. Tier 2 functional fixes (speed-mode optimism, `setSailMode` both paths, RTH autonomy gate, disconnect shutdown, video retry, location permission).
5. Rotate + relocate the Maps API key.
6. Tier 3 UX pass (touch targets, fonts, color+text, semantics, rebuild scoping, main-thread offload).
7. Build + smoke-test the APK in Codespaces; then on-device with a PowerDolphin.
