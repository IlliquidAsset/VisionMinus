# Safety Architecture Review

Review object: `main` at `a3e55c7c08727b80eb406c6e1d4ec944057f265d`.

## Verdict
Continue Flutter → Kotlin → JNI → `libPowerSDK.so`. This is the right maintainable replacement for the Smali application. Current `main` is not safe for hardware or on-water use.

## Boundaries

### Dart / Flutter owns
- UI and persistent safety presentation.
- Input validation and command intent.
- Explicit arm and autonomous-mode state machines.
- GPS-quality, mission, RTH, and spot-lock policy.
- Pure control transforms and shutdown sequencing.

### Kotlin owns
- Android USB/accessory permissions and descriptor ownership.
- Serialized SDK lifecycle, deterministic library loading, callback generation, and channel adaptation.
- Defensive argument/range validation.
- An injectable SDK gateway for tests without hardware.

### Native contract remains intact
- Bundled `libPowerSDK.so` for arm64-v8a and armeabi-v7a.
- Exact `com.powervision.natives.*` names, JNI signatures, callbacks, overloads, and visible field layouts.
- No firmware/reset/upgrade exposure during migration.

## Critical unresolved items
1. **Arm polarity:** archived Smali maps callback `0` to arm while current Dart uses `status == 1`. Resolve from call sites and controlled bench telemetry. Never guess.
2. **Rocker axes:** four JNI fields exist, but that does not prove hull semantics. Produce a signed-axis parity table and dry/propulsion-disabled evidence before changing mapping.
3. **Native loading:** USB can reach JNI before a loader is guaranteed. Centralize and test load-before-first-call.
4. **Disconnect:** intentional disconnect bypasses ordered zero → exit autonomy → disarm → confirmation/timeout.
5. **Autonomy:** current spot-lock treats yaw as lateral translation. Manual safety closes before autonomy work.
6. **Lifecycle:** fd ownership, reader replacement, stale callback generations, executor/sink cleanup, and main-thread native calls need hardening.

## Safety invariants
- Nonzero thrust requires confirmed armed plus the current connected session generation.
- Uncertain arm state is potentially armed for shutdown, never armed for enabling thrust.
- Release, cancel, mode transition, background, disconnect, and autonomous suspension send zero-rocker.
- Every command distinguishes requested, accepted, confirmed, failed, and timed-out/unknown.
- Autonomous control requires continuously fresh sane GPS, heading, and telemetry.
- Only the Kotlin transport owner closes an fd.
- Stale callbacks cannot mutate the current session.

## Phases
1. Freeze JNI/parity contract; resolve arm polarity and rocker semantics before behavioral edits.
2. Build pure safety state machines and deterministic tests.
3. Add injectable Kotlin/JNI contract tests and lifecycle hardening.
4. Phone smoke test without boat control.
5. Propulsion-disabled hardware-in-loop comparison.
6. Restrained manual propulsion test with physical kill path.
7. Autonomous features only after manual-control closure.

## Immediate stop conditions
- Arm polarity or rocker mapping remains ambiguous at a physical-control step.
- Any nonzero thrust occurs while disconnected, disarming, timed out, or unknown.
- Release/cancel does not yield verified zero.
- USB attach/detach or native load crashes or blocks.
- Intentional disconnect tears transport down before shutdown resolution.
- Stale callbacks survive generation changes.
- GPS/heading becomes stale during autonomy.
