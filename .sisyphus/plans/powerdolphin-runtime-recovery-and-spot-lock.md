# PowerDolphin Runtime Recovery and Spot-Lock

## TL;DR

> **Quick Summary**: Restore original PowerDolphin behavior by making SDK callbacks—not UI state—the single source of truth for GPS, unlock/arm, sail mode, mission state, and compass calibration. Then add a GPS-only, low-noise spot-lock controller on top of the repaired runtime state model.
>
> **Deliverables**:
> - Callback-authoritative vessel state spine for GPS/arm/mode/calibration
> - Manual-control path that works without GPS gating
> - Mission/intelligent mode path that uses original GPS quality gates
> - Compass calibration UI/state machine matching original callback-driven flow
> - Original-style unlock flow parity and explicit state re-sync after resume/app switching
> - Phone-heading-up map orientation with explicit north-up fallback when heading unavailable
> - GPS-only low-noise spot-lock feature design + implementation plan
>
> **Estimated Effort**: XL
> **Parallel Execution**: YES - 5 waves
> **Critical Path**: State authority recovery → manual control parity → mission/calibration FSM recovery → spot-lock

---

## Context

### Original Request
Analyze the continued failures using MRCA, then use consensus protocol to design the fixes. User reports:
- Main/smalli app shows GPS and can unlock/control the drone.
- Current Flutter/JNI branch connects but often reports no GPS fix.
- Manual thrust should work indoors/line-of-sight even when GPS features are unavailable.
- Compass calibration appears non-functional in both apps.
- Intelligent mode should work like the original app.
- Spot-lock should be added, use minimum throttle/noise, and be GPS-only when GPS is weak/unavailable.

### Interview Summary
**Key Discussions**:
- User confirmed unlock in the original app can change behavior seen in the Flutter app, proving shared device state and missing re-sync in the current runtime path.
- User explicitly wants manual control decoupled from GPS availability; only GPS-dependent features should be blocked.
- User selected **GPS-only** behavior for spot-lock when GPS quality is poor/unavailable.
- User wants stronger visual parity with the original app, but not fake/parity-only UI that hides broken runtime behavior.

**Research Findings**:
- Original smali `isGpsEnable()` uses `eph <= 300 && gpsLevel > 8`.
- Original smali rocker control uses `x` and `r` with clamp range `-1000..1000`.
- Original unlock flow is `setArmStatus(1)` followed by asynchronous state confirmation (`rayArm`).
- Original mission/intelligent mode startup is callback-driven and more complex than current simplified `setSailMode` path.
- Original compass calibration is a real callback-driven state machine with progress/orientation/success/failure states.
- Current Flutter branch has split state authority: dashboard-local `_isArmed` vs shared `BoatState.isArmed`.
- Current Flutter branch uses `fixType >= 2` as a broad GPS usability proxy, unlike the original app.

### Metis Review
**Identified Gaps** (addressed in this plan):
- Missing explicit guardrail against UI-only state authority
- Missing acceptance criteria for state confirmation latency and callback/command divergence
- Missing edge-case coverage for stale callbacks, reconnects, and GPS threshold flapping
- Missing lock-down of scope so parity recovery is prioritized over broad refactors

---

## Work Objectives

### Core Objective
Recover the Flutter/JNI control path so manual operation, unlock state, GPS reporting, mission gating, and compass calibration behave like the original PowerDolphin app, then add a GPS-only spot-lock feature optimized for low-noise fishing/trolling use.

### Concrete Deliverables
- `BoatState` becomes callback-authoritative for arm/unlock, mode, GPS quality, calibration phase, and connection freshness.
- Manual thrust path works without GPS lock, provided connection + unlock/manual-mode requirements are met.
- Intelligent mode/mission start uses original-quality GPS gating and explicit failure reasons.
- Compass calibration screen/state reflects real callback progress, orientation prompts, success, and failure.
- Resume/reconnect/app-switch re-sync path restores true device state.
- Map camera uses phone heading instead of permanent north-up when heading data is available.
- Spot-lock design and implementation path uses GPS-only hold with deadband, pulse correction, and quiet-control limits.

### Definition of Done
- [ ] Manual control works indoors with no GPS lock after unlock is confirmed by callback/state re-sync.
- [ ] GPS telemetry in Flutter matches original device telemetry quality indicators closely enough to avoid false “no fix” states.
- [ ] Intelligent mode remains unavailable without valid GPS and shows explicit reason.
- [ ] Compass calibration no longer stops at “started”; UI reflects actual callback-driven progress or explicit failure.
- [ ] App switching (original app ↔ Flutter app) does not leave Flutter UI in stale arm/mode/GPS state.
- [ ] Spot-lock enters only with valid GPS, uses minimum-throttle correction policy, and suspends cleanly on low confidence or override.

### Must Have
- Callback-authoritative state model
- Manual/GPS mission gating separation
- Original unlock parity
- Callback-driven calibration parity
- Explicit observability/logging for command sent / ack / state update / timeout

### Must NOT Have (Guardrails)
- No UI-only authority for arm, mode, GPS, or calibration state
- No global GPS gate on manual thrust/steering
- No one-shot simplification of unlock, mission start, or calibration FSMs
- No broad architecture rewrite outside the runtime-critical domains
- No “better than original” autonomy changes before parity is proven

---

## Verification Strategy (MANDATORY)

> **UNIVERSAL RULE: ZERO HUMAN INTERVENTION**
>
> All verification tasks in this plan must be executable by the agent using adb/logs/screenshots/build/test tools. Human driving the boat is not part of acceptance criteria.

### Test Decision
- **Infrastructure exists**: YES (Flutter analyze/build available)
- **Automated tests**: None for hardware runtime parity by default
- **Framework**: `flutter analyze` + build + adb/logcat + screenshot/log verification

### Runtime Contract Appendix

**Authoritative selectors**:
- `gps_raw_present`: true when lat/lon telemetry is fresh and non-zero
- `gps_autonomy_ready`: true when original-quality rule is satisfied (`eph <= 300 && sats > 8`) or an explicitly named temporary degraded-W4 rule is active
- `gps_degraded_reason`: one of `missing_eph`, `low_sats`, `bad_hdop`, `stale`, `no_position`
- `manual_control_ready`: true when link healthy + unlock confirmed + compatible manual mode; **never** depends on GPS quality
- `calibration_phase`: `idle | start_pending | started | orienting | progressing | success | failed | timeout | cancelled`
- `command_intent_state`: `idle | sent | acked | confirmed | timeout | stale | failed`

**Global timeout constants**:
- Unlock confirm timeout: **3s**
- High-rate telemetry freshness TTL: **2s**
- Mode/arm/calibration freshness TTL: **5s**
- Mission start timeout: **8s**
- Calibration start timeout: **5s**
- Calibration terminal timeout: **90s**

**GPS degraded-W4 temporary fallback rule**:
- Use only until `eph` is available in W4 callback path.
- `gps_raw_present = true` when `lat/lon != 0` and telemetry freshness TTL is valid.
- `gps_autonomy_ready = false` by default when `eph` is missing.
- Optional temporary diagnostic state: `gps_degraded_reason = missing_eph` with UI text `GPS telemetry present, autonomy confidence unavailable`.
- Mission start and spot-lock remain blocked until full autonomy-ready quality is available.

**GPS autonomy hysteresis / flapping control**:
- Enter autonomy-ready only after thresholds are satisfied continuously for **3s**.
- Exit autonomy-ready immediately on hard failure, or after **2 consecutive** degraded samples for soft failure.
- Re-entry cooldown after failure: **5s** minimum.

**Out-of-order callback policy**:
- Use monotonic timestamp or per-domain sequence when available.
- Drop stale callbacks older than the latest confirmed domain state.
- Never let stale callbacks overwrite newer confirmed arm/mode/calibration state.

**Callback timestamp source by domain**:
- GPS: bridge receive-time unless SDK payload timestamp exists
- Arm/mode: bridge receive-time
- Calibration: bridge receive-time
- Mission state: SDK payload sequence when present, otherwise bridge receive-time

**Evidence harness contract**:
- Store repeatable runtime scripts in `.sisyphus/evidence/scripts/`
- Minimum scripts:
  - `unlock_and_verify.sh`
  - `manual_without_gps.sh`
  - `intelligent_gps_gate.sh`
  - `calibration_trace.sh`
  - `cross_app_resync.sh`
- Each script must save logs/screenshots to `.sisyphus/evidence/` with deterministic filenames.

### Contract Artifacts
- `.sisyphus/contracts/runtime_parity_matrix.md` — human-readable parity table for GPS/manual/mission/calibration/unlock behaviors
- `.sisyphus/contracts/runtime_parity_contract.json` — machine-readable runtime contract (selectors, thresholds, timeouts, conflict rules)
- `.sisyphus/contracts/spot_lock_defaults.md` — initial numeric defaults and tuning envelope

### Agent-Executed QA Scenarios (MANDATORY — ALL tasks)

Scenario: Runtime state authority verified after unlock
  Tool: Bash (adb + logcat)
  Preconditions: App installed on test phone; drone powered and connected
  Steps:
    1. Clear logs: `adb logcat -c`
    2. Launch app and trigger unlock flow via UI automation or adb taps
    3. Capture logs for command send, set-arm result, and arm status callback
    4. Assert shared state reflects armed/unlocked status in UI screenshot and logs within timeout
  Expected Result: Unlock state only changes after callback/confirmed state transition
  Failure Indicators: Local UI changes before callback; stale `BoatState.isArmed`; no callback path
  Evidence: `.sisyphus/evidence/task-state-unlock.log`, `.png`
  Pass Criteria:
    - Unlock confirmed within 3s
    - No stale callback overwrite after confirmation
    - UI reflects confirmed callback state within 500ms of provider update

Scenario: Indoor/manual control without GPS lock
  Tool: Bash (adb + logcat)
  Preconditions: Drone connected, GPS poor/invalid, manual mode available
  Steps:
    1. Trigger unlock flow
    2. Send joystick movement through UI automation
    3. Capture logs for rocker packets and state gates
    4. Assert no GPS-related manual-control block message appears
  Expected Result: Manual rocker path remains active without GPS mission gate
  Failure Indicators: GPS banner blocks manual path; no rocker send; no mode/unlock confirmation
  Evidence: `.sisyphus/evidence/task-manual-indoor.log`
  Pass Criteria:
    - No manual GPS-block token appears in logs
    - Rocker packets are emitted during hold interval
    - Any stale unlock state clears within freshness TTL + 500ms

Scenario: Intelligent mode blocked on poor GPS with explicit reason
  Tool: Bash (adb + screenshot)
  Preconditions: Poor GPS / low satellites
  Steps:
    1. Open intelligent mode panel
    2. Attempt mission start
    3. Capture status text and logs
  Expected Result: Start is blocked with explicit GPS-quality reason
  Failure Indicators: Silent failure; mission appears to start; wrong reason text
  Evidence: `.sisyphus/evidence/task-intelligent-gps-block.png`
  Pass Criteria:
    - UI shows deterministic GPS/autonomy block reason
    - No mission-running confirmation arrives
    - Threshold flapping for 30s does not cause repeated enter/exit thrash

Scenario: Compass calibration state machine progresses or fails explicitly
  Tool: Bash (adb + logcat + screenshot)
  Preconditions: Device connected; calibration screen available
  Steps:
    1. Trigger calibration
    2. Capture callback events and screen changes over time
    3. Assert UI shows callback-driven progress/orientation/success/fail state
  Expected Result: More than a snackbar; real callback-backed status transitions occur
  Failure Indicators: “Started” snackbar only; no state updates; no visible callback consumption
  Evidence: `.sisyphus/evidence/task-calibration.log`, `.png`
  Pass Criteria:
    - First callback-backed state change within 5s
    - Terminal success/fail/timeout state reached within 90s or explicit cancellation path

Scenario: Spot-lock quiet hold behavior
  Tool: Bash (adb + logs)
  Preconditions: Good GPS quality, mission/autonomy path healthy, spot-lock enabled
  Steps:
    1. Activate spot-lock
    2. Simulate or observe mild drift condition
    3. Capture correction cadence, thrust values, and suspend behavior
  Expected Result: Low-frequency pulse correction within configured limits, no continuous thrash
  Failure Indicators: Oscillation, excessive thrust/noise, no suspend on low confidence
  Evidence: `.sisyphus/evidence/task-spot-lock.log`
  Pass Criteria:
    - Correction cadence remains within configured pulse policy
    - Spot-lock suspends immediately on autonomy-readiness loss or manual override

Scenario: Map follows phone heading instead of fixed north-up
  Tool: Bash (adb + screenshot/video capture)
  Preconditions: Map visible, follow mode enabled, phone heading source available
  Steps:
    1. Open map view with follow enabled
    2. Rotate phone orientation/heading while keeping map active
    3. Capture successive screenshots or screen recording frames
    4. Assert camera bearing changes with phone heading rather than staying fixed north-up
  Expected Result: Map orientation updates to phone direction; when heading is unavailable/stale, map falls back to north-up explicitly
  Failure Indicators: Bearing remains fixed north-up despite heading changes; no fallback behavior when heading unavailable
  Evidence: `.sisyphus/evidence/task-map-phone-heading.mp4`, `.png`

---

## Execution Strategy

### Parallel Execution Waves

```
Wave 1 (State Truth & Instrumentation):
├── Task 1: Build callback-authoritative state spine
├── Task 2: Add command-intent / ack / timeout observability
└── Task 3: Audit and document original parity contracts

Wave 2 (Manual Control Recovery):
├── Task 4: Restore unlock/manual control parity
└── Task 5: Fix GPS usability model, decouple manual from GPS gate, and restore map orientation semantics

Wave 3 (FSM Recovery):
├── Task 6: Restore mission/intelligent mode startup FSM
└── Task 7: Restore compass calibration FSM and UI

Wave 4 (Autonomy Addition):
├── Task 8: Implement GPS-only spot-lock runtime state machine
└── Task 9: Tune quiet-hold policy and safety limits

Wave 5 (Integration):
└── Task 10: End-to-end regression verification across app switching/reconnect paths

Go/No-Go Gate before Wave 4:
- Do not start Tasks 8-9 unless Tasks 4-7 evidence scripts pass on-device.
```

### Callback Conflict Resolution Table

| Domain | Primary ordering key | Secondary key | Winner rule |
|--------|----------------------|---------------|-------------|
| GPS | SDK timestamp if present | bridge receive-time | latest fresh sample wins |
| Arm/unlock | bridge receive-time | command-intent generation | latest callback wins; callback overrides UI intent |
| Sail/mode | bridge receive-time | command-intent generation | latest callback wins unless stale by TTL |
| Calibration | bridge receive-time | phase progression rank | higher valid phase wins; terminal states override in-progress |
| Mission | SDK sequence if present | bridge receive-time | higher sequence/current state wins unless explicitly terminal |

### Explicit Re-Sync Hook Points
- `onAppResume`
- `onConnectionRestored`
- `onForegroundAfterExternalControl`
- `onRetryAfterTimeout`

### Dependency Matrix

| Task | Depends On | Blocks | Can Parallelize With |
|------|------------|--------|----------------------|
| 1 | None | 4,5,6,7,8 | 2,3 |
| 2 | None | 10 | 1,3 |
| 3 | None | 4,5,6,7 | 1,2 |
| 4 | 1,3 | 8,10 | 5 |
| 5 | 1,3 | 6,8,10 | 4 |
| 6 | 1,3,5 | 10 | 7 |
| 7 | 1,3 | 10 | 6 |
| 8 | 1,4,5 | 9,10 | None |
| 9 | 8 | 10 | None |
| 10 | 2,4,5,6,7,9 | None | None |

### Agent Dispatch Summary

| Wave | Tasks | Recommended Agents |
|------|-------|-------------------|
| 1 | 1,2,3 | `deep` / `ultrabrain` for state model + evidence mapping |
| 2 | 4,5 | `deep` with hardware-runtime focus |
| 3 | 6,7 | `deep` + UI/UX for parity FSM restoration |
| 4 | 8,9 | `ultrabrain` for control policy + `frontend-ui-ux` for UX/state cues |
| 5 | 10 | `deep` for full-system regression verification |

---

## TODOs

- [x] 1. Make callback-fed `BoatState` the single source of truth

  **What to do**:
  - Centralize arm/unlock, mode, GPS quality, calibration phase, mission state, and telemetry freshness into shared runtime state.
  - Remove/replace dashboard-local authority for armed/unlocked truth.
  - Add explicit freshness timestamps and stale-state handling.

  **Must NOT do**:
  - Do not let UI state mutate authoritative device truth.
  - Do not infer confirmed state from command return codes alone.

  **Recommended Agent Profile**:
  - **Category**: `ultrabrain`
    - Reason: architecture/state-boundary correction across multiple runtime domains.
  - **Skills**: `git-master`
    - `git-master`: useful for tracing regressions and comparing parity behavior over history.
  - **Skills Evaluated but Omitted**:
    - `frontend-ui-ux`: not primary for state architecture.

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1
  - **Blocks**: 4,5,6,7,8
  - **Blocked By**: None

  **References**:
  - `vision_minus_flutter/lib/features/connection/connection_provider.dart` - current aggregate state flow and missing arm-status handling.
  - `vision_minus_flutter/lib/core/models/boat_state.dart` - target shared runtime state model.
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt` - all callback-fed event types already emitted.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali` - original runtime state behavior and authority patterns.

  **Acceptance Criteria**:
  - [ ] Shared boat state updates on `arm_status`, sail mode, GPS, and calibration callbacks.
  - [ ] Callback freshness TTLs and stale-drop behavior are implemented from single-source constants.
  - [ ] No screen keeps its own authoritative arm/unlock state.
  - [ ] `flutter analyze` passes.
  - [ ] adb log shows state transitions sourced from callbacks, not optimistic UI toggles.

- [x] 2. Add command-intent / ack / timeout observability

  **What to do**:
  - Track command intent separately from confirmed state for unlock, sail mode, mission, and calibration.
  - Add structured logs/event markers for sent, acked, confirmed, timed out, stale.

  **Must NOT do**:
  - Do not bury timeout/failure in snackbars only.

  **Recommended Agent Profile**:
  - **Category**: `deep`
  - **Skills**: `git-master`
  - **Skills Evaluated but Omitted**:
    - `frontend-ui-ux`: secondary here.

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1
  - **Blocks**: 10
  - **Blocked By**: None

  **References**:
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt` - callback event names.
  - `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart` - existing command triggers for unlock/rocker/recording.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$60.smali` - original unlock intent path.

  **Acceptance Criteria**:
  - [ ] Each runtime-critical command exposes pending/confirmed/failed state.
  - [ ] All runtime-critical command timeouts use shared constants.
  - [ ] Timeouts produce explicit UI reason and log evidence.
  - [ ] adb evidence file captures command + callback sequence.

- [x] 3. Document and encode original parity contracts

  **What to do**:
  - Convert smali-derived behavior into code comments, selectors, or constants for GPS usability, unlock flow, mission startup, and calibration transitions.
  - Produce a machine-readable parity matrix (markdown table + JSON or const-map equivalent) for runtime-critical behaviors.
  - Record what is parity-required vs modernization-only.

  **Must NOT do**:
  - Do not “improve” behavior before parity is captured.

  **Recommended Agent Profile**:
  - **Category**: `writing`
  - **Skills**: `git-master`

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1
  - **Blocks**: 4,5,6,7
  - **Blocked By**: None

  **References**:
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:4212-4236` - GPS usability rule.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$60.smali` - unlock slide behavior.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:16760-16771` - GPS `eph/satellites_visible` update path.
  - `fresh_approach/.../MagCalibrationStartActivity.smali` - calibration callback-driven UI flow.

  **Acceptance Criteria**:
  - [ ] Parity matrix exists for GPS, manual, mission, calibration, and unlock.
  - [ ] Machine-readable parity artifact exists for execution/reference use.
  - [ ] Each later task references a parity contract.

- [x] 4. Restore original unlock/manual control parity

  **What to do**:
  - Recreate original water-lock/unlock semantics end-to-end.
  - Ensure unlock only becomes “armed/unlocked” after callback confirmation.
  - Re-sync true unlock/arm state on app resume and after cross-app switching.
  - Ensure rocker control uses original field mapping and keeps a valid control stream cadence.

  **Must NOT do**:
  - Do not keep local fake lock toggles.
  - Do not GPS-gate manual control.

  **Recommended Agent Profile**:
  - **Category**: `deep`
  - **Skills**: `git-master`

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2
  - **Blocks**: 8,10
  - **Blocked By**: 1,3

  **References**:
  - `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart` - current unlock/manual control path.
  - `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniW4Native.kt` - rocker/arm callback bridge.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$60.smali` - original unlock command.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$63.smali` - asynchronous arm-state update.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:13166-13535` - rocker mapping and clamp contract.

  **Acceptance Criteria**:
  - [ ] Manual thrust works with poor/no GPS when unlock is confirmed.
  - [ ] Cross-app unlock state is rehydrated correctly on resume.
  - [ ] `cross_app_resync.sh` proves original-app state mutations are reflected after Flutter resume.
  - [ ] adb logs show rocker packets with original field contract and no manual GPS block.

- [x] 5. Fix GPS usability model and separate raw GPS from GPS-ready-for-autonomy

  **What to do**:
  - Separate “raw GPS telemetry present” from “GPS usable for intelligent mode/spot-lock.”
  - Restore parity with original `eph + satellites` quality logic where possible.
  - If W4 callback lacks `eph`, add explicit degraded state instead of pretending no GPS exists.
  - Add phone-heading-up map behavior; when phone heading is unavailable/stale, fall back to north-up explicitly.

  **Must NOT do**:
  - Do not use `fixType` alone as the global UX truth for GPS.

  **Recommended Agent Profile**:
  - **Category**: `deep`
  - **Skills**: `git-master`

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2
  - **Blocks**: 6,8,10
  - **Blocked By**: 1,3

  **References**:
  - `vision_minus_flutter/lib/core/models/gps_position.dart` - current `hasFix` proxy.
  - `vision_minus_flutter/lib/features/connection/connection_provider.dart` - GPS event ingestion path.
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt` - W4 vs AP03 GPS callback schemas.
  - `vision_minus_flutter/lib/features/map/map_widget.dart` - current camera updates are position-only, no bearing.
  - `vision_minus_flutter/lib/features/map/map_provider.dart` - current map providers lack phone-heading state.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:4212-4236` - original GPS usability rule.
  - `fresh_approach/.../ShipMainActivity.smali:16760-16771` - original eph/sats update path.

  **Acceptance Criteria**:
  - [ ] UI can show GPS telemetry without falsely claiming “no fix” when data exists.
  - [ ] Manual mode remains available without GPS-ready state.
  - [ ] Temporary degraded-W4 rule is explicitly named and surfaced in UI/logs if used.
  - [ ] Intelligent mode gate uses explicit GPS-quality selector.
  - [ ] Map uses phone-heading-up orientation when heading is available and falls back to north-up when unavailable/stale.

- [ ] 6. Restore original mission/intelligent mode startup FSM

  **What to do**:
  - Replace simplified mission start path with callback-driven upload/mode transition/listener sequence matching original behavior.
  - Make start failure reasons explicit: GPS quality, mode error, stale arm state, upload failure, missing home/position.

  **Must NOT do**:
  - Do not reduce mission start to `setSailMode` only.

  **Recommended Agent Profile**:
  - **Category**: `ultrabrain`
  - **Skills**: `git-master`

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 3
  - **Blocks**: 10
  - **Blocked By**: 1,3,5

  **References**:
  - `vision_minus_flutter/lib/features/navigation/navigation_provider.dart` - current simplified mission start path.
  - `fresh_approach/smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$3.smali` - original start/upload flow.
  - `fresh_approach/...$3$1$1.smali`, `$3$2$1.smali` - mode transition callback handling.
  - `fresh_approach/ShipMainActivity.smali:11001-11103` - original `isAIEnable` gate.

  **Acceptance Criteria**:
  - [ ] Mission start follows explicit upload → mode → run-confirm sequence.
  - [ ] Poor GPS blocks start with correct reason.
  - [ ] Mission start timeout and stale-callback handling are deterministic and logged.
  - [ ] Good GPS path shows confirmed run state, not optimistic UI only.

- [ ] 7. Restore callback-driven compass calibration UI/state machine

  **What to do**:
  - Build calibration state UI from `mag_calibration_status` callbacks.
  - Mirror original visible states: start success, orientation guidance, progress, side-done markers, success, failure/timeout.
  - Handle “pending/already completed” distinctly from “started.”

  **Must NOT do**:
  - Do not stop at snackbar-only UX.

  **Recommended Agent Profile**:
  - **Category**: `visual-engineering`
  - **Skills**: `frontend-ui-ux`
    - `frontend-ui-ux`: required for parity-quality calibration UX reconstruction.
  - **Skills Evaluated but Omitted**:
    - `playwright`: mobile adb/screenshots are primary verification path here.

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 3
  - **Blocks**: 10
  - **Blocked By**: 1,3

  **References**:
  - `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt:243-245` - existing callback forwarding.
  - `vision_minus_flutter/lib/features/settings/settings_panel.dart` - current snackbar-only behavior.
  - `fresh_approach/.../MagCalibrationStartActivity.smali` - original calibration state transitions.
  - `fresh_approach/res/layout/aircraft_mag_calibration_start_layout.xml` - original screen structure.

  **Acceptance Criteria**:
  - [ ] Calibration start produces callback-backed state updates, not just a snackbar.
  - [ ] Success/failure terminal states are visible and distinct.
  - [ ] Calibration timeout uses shared constants and explicit timeout UI state.
  - [ ] Timeout path is explicit.

- [ ] 8. Implement GPS-only spot-lock runtime state machine

  **What to do**:
  - Add state machine: Idle → AcquireLock → QuietHold → PulseCorrect → Reacquire → Suspend.
  - Require valid GPS quality before engagement.
  - Suspend immediately on low confidence, manual override, disarm, or control-link loss.

  **Must NOT do**:
  - Do not attempt fake spot-lock without GPS.
  - Do not continuously thrash motors for tight position error.

  **Recommended Agent Profile**:
  - **Category**: `ultrabrain`
  - **Skills**: `frontend-ui-ux`
    - `frontend-ui-ux`: needed for clear mode/status/suspend messaging.

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential Wave 4
  - **Blocks**: 9,10
  - **Blocked By**: 1,4,5

  **References**:
  - `vision_minus_flutter/lib/features/navigation/navigation_provider.dart` - current mission/autonomy provider foundation.
  - `vision_minus_flutter/lib/core/models/gps_position.dart` - available GPS fields.
  - `fresh_approach/ShipMainActivity.smali` GPS gate references - original quality semantics.

  **Acceptance Criteria**:
  - [ ] Spot-lock cannot be engaged without valid GPS-quality selector.
  - [ ] Manual override cancels immediately.
  - [ ] Status text distinguishes Holding / Correcting / Suspended.

- [ ] 9. Tune low-noise spot-lock correction policy

  **What to do**:
  - Define deadband, hysteresis, thrust floor/cap, pulse cadence, cooldown, and drift thresholds for fishing/trolling use.
  - Seed Wave-4 defaults for repeatable testing:
    - deadband radius: **3.0 m**
    - enter-hold hysteresis: **2.5 m**, exit-hold at **3.5 m**
    - pulse cadence: **1 correction burst per 2s max**
    - cooldown after burst: **1.5s**
    - thrust floor: **4%**
    - thrust cap: **12%**
    - suspend on autonomy-readiness loss: immediate
  - Prefer minimal audible thrust usage over tight position hold.

  **Must NOT do**:
  - Do not optimize for “perfect station keeping” at the cost of constant motor noise.

  **Recommended Agent Profile**:
  - **Category**: `artistry`
    - Reason: low-noise behavior tuning is non-conventional and requires nuanced trade-offs.
  - **Skills**: `frontend-ui-ux`

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential Wave 4
  - **Blocks**: 10
  - **Blocked By**: 8

  **References**:
  - Spot-lock design decisions from this planning session.
  - Runtime state selectors produced in Tasks 1/5/8.

  **Acceptance Criteria**:
  - [ ] Correction bursts remain within configured quiet-use limits.
  - [ ] No rapid oscillation around deadband.
  - [ ] Suspension reasons are surfaced clearly.

- [ ] 10. Run end-to-end regression verification across reconnect/app-switch/runtime edge cases

  **What to do**:
  - Verify connect/disconnect/retry, app switching with original app, unlock/manual control, GPS mission gate, calibration state machine, and spot-lock gating.
  - Capture evidence for stale callback, out-of-order callback, and timeout handling.

  **Must NOT do**:
  - Do not declare parity from static analysis only.

  **Recommended Agent Profile**:
  - **Category**: `deep`
  - **Skills**: `git-master`

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Final integration wave
  - **Blocks**: None
  - **Blocked By**: 2,4,5,6,7,9

  **References**:
  - All runtime-critical screens and providers touched above.
  - `adb` and `logcat` evidence patterns established in this session.

  **Acceptance Criteria**:
  - [ ] Manual control works with poor/no GPS after confirmed unlock.
  - [ ] Intelligent mode blocked with reason when GPS poor; available when GPS good.
  - [ ] Calibration shows callback-driven state changes.
  - [ ] App switching does not leave stale arm/mode/GPS state.
  - [ ] All evidence harness scripts run and produce deterministic output artifacts.
  - [ ] Spot-lock obeys GPS-only gate and quiet-hold policy.

---

## Commit Strategy

| After Task | Message | Files | Verification |
|------------|---------|-------|--------------|
| 1-3 | `refactor(runtime): centralize callback-authoritative boat state` | runtime/provider/event files | `flutter analyze` |
| 4-5 | `fix(control): restore unlock parity and separate gps gating` | dashboard/provider/native bridge files | adb + logs |
| 6-7 | `fix(runtime): restore mission and calibration state machines` | navigation/settings/UI files | adb + screenshots |
| 8-9 | `feat(spot-lock): add gps-only quiet hold controller` | autonomy/provider/UI files | log-based scenario verification |
| 10 | `test(runtime): verify parity across reconnect and app switching` | evidence/docs if needed | full regression script |

---

## Success Criteria

### Verification Commands
```bash
"/Volumes/Video 1/dev-tools/flutter/bin/flutter" analyze
# Expected: No issues found

"/Volumes/Video 1/dev-tools/flutter/bin/flutter" build apk --debug
# Expected: APK builds successfully

adb logcat -d --pid=$(adb shell pidof com.visionminus.vision_minus)
# Expected: callback-confirmed unlock/mode/calibration transitions visible in logs
```

### Final Checklist
- [ ] Callback-authoritative state spine replaces UI-local truth
- [ ] Manual thrust is not GPS-gated
- [ ] GPS mission/spot-lock gate uses original-quality semantics or explicit degraded fallback state
- [ ] Unlock state re-sync works after cross-app switching/resume
- [ ] Mission/intelligent mode startup matches original callback-driven sequence
- [ ] Compass calibration reflects actual callback progress and terminal states
- [ ] Spot-lock is GPS-only, low-noise, and suspend-safe
