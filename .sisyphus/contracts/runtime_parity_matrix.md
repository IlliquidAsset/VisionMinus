# Runtime Parity Matrix (PowerDolphin)

Scope: runtime-critical parity for GPS usability, manual rocker control, unlock flow, mission startup gate, and calibration transitions.

## Parity Matrix

| Domain | Selector / Trigger | Source Evidence | Legacy Behavior (smali/plan) | Parity Required | Modernization-Only |
|---|---|---|---|---|---|
| GPS usability | `gps_autonomy_ready` | `ShipMainActivity.smali:4212-4236` | `isGpsEnable() == (eph <= 300 && gpsLevel > 8)` | **Yes** | None until parity proven |
| GPS telemetry update path | `updateEphChanged(eph, satellites_visible)` | `ShipMainActivity.smali:16760-16771` | `GpsRawIntParam.eph` and `satellites_visible` are fed into UI/state update path | **Yes** | Optional telemetry labeling only |
| GPS hysteresis | `gps_autonomy_ready` state transitions | Plan appendix lines `132-136` | Enter after 3s continuous pass; exit immediate on hard fail or after 2 consecutive soft fails; re-entry cooldown 5s | **Yes** | None |
| Manual control gating | `manual_control_ready` | Plan appendix lines `113` | Manual control depends on link + unlock + compatible mode; never blocked by GPS quality | **Yes** | None |
| Rocker command mapping | `rocker.r`, `rocker.x` + `controlRocker` | `ShipMainActivity.smali:13166-13535` | Input scaled by `mRockerEffectivePercent`, clamped to `[-1000, 1000]` per axis, zeroed when centered, then `PVSDK_W4_API.controlRocker()` | **Yes** | Input smoothing/curves only after parity |
| Unlock slide command | slide unlock `returnSlide()` | `ShipMainActivity$60.smali:53-76` | Slide hides unlock view and sends arm request via `PVSDK_W4_API.setArmStatus(1)` | **Yes** | None |
| Unlock confirmation callback | `rayArm()` callback path | `ShipMainActivity.smali:13604-13627`, `ShipMainActivity$63.smali:38-70`, `ShipMainActivity.smali:13829` | Arm status is listener-driven (`setArmStatusListener`); callback updates handler/UI and arm state (`isShipArm=true`) asynchronously | **Yes** | UI cosmetics after confirmed callback |
| Command intent lifecycle | `command_intent_state` | Plan appendix lines `115`, `137-140` | `idle -> sent -> acked -> confirmed` with stale drop policy; stale callbacks cannot overwrite newer confirmed state | **Yes** | richer debug traces |
| Mission startup | mission start command/ack | Plan appendix lines `121`, `130` | Mission start timeout 8s; mission/spot-lock blocked unless autonomy-ready quality is true | **Yes** | New mission UX text only |
| Calibration FSM | `calibration_phase` + callback methods | `MagCalibrationStartActivity.smali:1013-1316`, `111-611` | Callback-driven state machine with handler message IDs: start success(1), progress(2), orientation(3), side done(4), success(5), fail/timeout(6), start failed(7) | **Yes** | Animation/theme changes only |
| Calibration start timeout | calibration phase timeout | Plan appendix lines `122` | Start must confirm within 5s | **Yes** | None |
| Calibration terminal timeout | calibration phase timeout | Plan appendix lines `123` | Terminal success/fail expected by 90s | **Yes** | None |
| Telemetry freshness TTL | GPS + mode/arm/calibration freshness | Plan appendix lines `119-120` | High-rate telemetry TTL 2s; mode/arm/calibration TTL 5s | **Yes** | None |
| Spot-lock defaults | deadband / pulse / thrust limits | Plan appendix + inherited defaults | Deadband 3.0m; pulse 1s on / 2s off; thrust 4%-12% | **Yes (as initial contract defaults)** | Auto-tuning only after parity baseline |

## Runtime Constants (Parity Contract Summary)

| Constant | Value | Required Class |
|---|---:|---|
| `GPS_EPH_MAX` | 300 | parity-required |
| `GPS_LEVEL_MIN_EXCLUSIVE` | 8 (`gpsLevel > 8`) | parity-required |
| `UNLOCK_CONFIRM_TIMEOUT_MS` | 3000 | parity-required |
| `MISSION_START_TIMEOUT_MS` | 8000 | parity-required |
| `CALIBRATION_START_TIMEOUT_MS` | 5000 | parity-required |
| `CALIBRATION_TERMINAL_TIMEOUT_MS` | 90000 | parity-required |
| `TELEMETRY_HIGH_RATE_TTL_MS` | 2000 | parity-required |
| `MODE_ARM_CAL_TTL_MS` | 5000 | parity-required |
| `GPS_HYSTERESIS_ENTER_MS` | 3000 | parity-required |
| `GPS_HYSTERESIS_EXIT_SOFT_CONSECUTIVE` | 2 | parity-required |
| `GPS_HYSTERESIS_REENTRY_COOLDOWN_MS` | 5000 | parity-required |
| `ROCKER_MIN` | -1000 | parity-required |
| `ROCKER_MAX` | 1000 | parity-required |
| `SPOT_LOCK_DEADBAND_M` | 3.0 | modernization-only tuning envelope around parity default |
| `SPOT_LOCK_PULSE_ON_MS` | 1000 | modernization-only tuning envelope around parity default |
| `SPOT_LOCK_PULSE_OFF_MS` | 2000 | modernization-only tuning envelope around parity default |
| `SPOT_LOCK_THRUST_MIN_PCT` | 4 | modernization-only tuning envelope around parity default |
| `SPOT_LOCK_THRUST_MAX_PCT` | 12 | modernization-only tuning envelope around parity default |

## Subsequent Task Prompt Reference

Every follow-on runtime task should reference:
- `.sisyphus/contracts/runtime_parity_matrix.md`
- `.sisyphus/contracts/runtime_parity_contract.json`
- `.sisyphus/contracts/spot_lock_defaults.md`
