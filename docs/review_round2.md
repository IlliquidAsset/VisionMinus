# Round 2 Safety Review

Round 1 found obvious failures. Round 2 found the deeper ones Round 1 missed, re-verified the claimed fixes, and checked whether the fixes themselves were unsafe.

## Round 1 fix verification

- **Speed mode layout change:** implemented in Flutter, not just relabeled. `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:628-727`, `vision_minus_flutter/lib/features/dashboard/widgets/bottom_info_bar.dart:91-132`
- **Dashboard RTH routed through provider:** implemented, but Round 1 missed that the provider still marked home as verified even when native home upload failed. `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:477-495`, `vision_minus_flutter/lib/features/rth/rth_provider.dart:118-146`
- **Spot-lock runtime GPS degradation suspend:** implemented. `vision_minus_flutter/lib/features/spot_lock/spot_lock_controller.dart:188-203`
- **Map follow jitter / PiP tap fix:** partial; Round 1 fixed the feedback loop, but invalid non-zero GPS could still render on the map path. `vision_minus_flutter/lib/features/map/map_widget.dart:49-50, 61-63, 83-86, 121-126`
- **Connection-loss shutdown:** Round 1 widened the shutdown set, but it did not enforce command order. `vision_minus_flutter/lib/features/connection/connection_provider.dart:747-773`

## New findings Round 1 missed

### [HIGH] #1: Connection-loss shutdown commands were fired concurrently, so the claimed safe order was fiction
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/connection/connection_provider.dart:751-773` previously launched `disable()`, zero-rocker, sail-mode reset, and disarm with separate `unawaited(...)` calls.
- **Systemic:** Safety-critical shutdown relied on call ordering in source code, not enforced runtime ordering.
- **Process:** Round 1 verified that more commands were added, not that they executed in a deterministic sequence.
**Consensus:** YES — three senior engineers would call this real because “listed in order” is not the same thing as “executed in order.”
**Fix:** FIXED — shutdown now routes through one awaited helper that disables spot-lock, then sends zero rocker, then sail mode 0, then disarm. `vision_minus_flutter/lib/features/connection/connection_provider.dart:756, 766-773`

### [HIGH] #2: RTH still bypassed the home-verification gate by treating failed native home uploads as success
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/rth/rth_provider.dart:118-146` previously ignored the return codes from `setReturnPoint()` and `setUserLocation()`, then set `_homeVerified = true` anyway.
- **Systemic:** The safety gate trusted “method returned without throwing” instead of native command success.
- **Process:** Round 1 checked routing through the provider but did not verify the provider’s success criteria.
**Consensus:** YES — if home setup fails and the app still says home is verified, the gate is fake.
**Fix:** FIXED — provider now blocks verification unless both native calls return `0`. `vision_minus_flutter/lib/features/rth/rth_provider.dart:118-146`

### [HIGH] #3: W4 GPS autonomy gating was impossible, so intelligent GPS features could stay permanently blocked
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/connection/connection_provider.dart:490-519` previously treated every `w4_gps` callback as a hard `missingEph` failure, making `gpsAutonomyReady` impossible to latch from W4 telemetry.
- **Systemic:** Quality logic assumed AP03-style EPH telemetry was mandatory on hardware that reports a different schema.
- **Process:** Round 1 verified “continuous degradation checks” but missed that the ready-state could never become true in the first place on W4-only telemetry.
**Consensus:** YES — a gate that can never open is a functional safety defect, not just a UX bug.
**User requests affected:** #3, #16
**Fix:** FIXED — W4 GPS now evaluates readiness from W4 fields (`fixType`, `satellites`) instead of auto-failing for missing EPH. `vision_minus_flutter/lib/features/connection/connection_provider.dart:490-519`

### [HIGH] #4: Mission start still accepted corrupted non-zero GPS coordinates
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/navigation/navigation_provider.dart:779-806` previously required raw GPS presence and autonomy readiness, but not `boat.gps.isSane`.
- **Systemic:** Mission gating split “has data” from “data is plausible,” then forgot to enforce both.
- **Process:** Round 1 focused on obvious 0,0 / no-fix cases and missed the non-zero-corruption path.
**Consensus:** YES — accepting insane coordinates into autonomous mode is a control-path defect.
**Fix:** FIXED — mission preflight now rejects insane boat coordinates before autonomy checks. `vision_minus_flutter/lib/features/navigation/navigation_provider.dart:779-797`

### [HIGH] #5: Device log recording still lost data and lied about a clean stop
**MRCA:**
- **Proximate:** `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/DeviceLogRecorder.kt:45-87` previously turned recording off before logging “Recording stopped,” used a shared non-thread-safe `SimpleDateFormat`, and returned from `stop()` before flush completion.
- **Systemic:** Logging was treated as best-effort debug noise even though user request #9 depends on log integrity.
- **Process:** Round 1 verified that file logging existed, not that it survived concurrent callback traffic or guaranteed final flush.
**Consensus:** YES — a logger that silently drops its terminal event and can return before its write finishes is broken.
**User requests affected:** #9
**Fix:** FIXED — stop message is logged before disabling recording, flush can block on stop, and timestamp formatting is now thread-local. `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/DeviceLogRecorder.kt:22-24, 45-87`

### [MEDIUM] #6: Event sinks could leak across engine detach and were not thread-safe to read/write
**MRCA:**
- **Proximate:** `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt:18-23` and `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:134-146` used mutable global sinks, only cleared `phoneHeadingSink`, and did not mark sinks volatile.
- **Systemic:** JNI callback plumbing depended on global mutable singleton state without a full detach cleanup contract.
- **Process:** Round 1 focused on callback presence, not lifecycle hygiene under engine restarts.
**Consensus:** YES — stale sinks on a persistent callback bridge are a real lifecycle bug.
**Fix:** FIXED — all sinks are now volatile and all are cleared on engine detach. `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkEventHandler.kt:18-23`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:134-146`

### [MEDIUM] #7: Map rendering still trusted invalid non-zero boat coordinates
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/map/map_widget.dart:49-50, 61-63, 83-86, 121-126` previously used `hasFix` / `latE7 != 0` in render paths while only `_animateCameraTarget()` enforced coordinate sanity.
- **Systemic:** Coordinate sanity was enforced on write paths and camera paths, but not consistently on render paths.
- **Process:** Round 1 focused on jitter and tap interception, not on corrupt telemetry rendering.
**Consensus:** YES — drawing garbage coordinates is exactly how “GPS shows Africa” keeps resurfacing.
**User requests affected:** #10
**Fix:** FIXED — map now derives `boatHasSaneFix` once and reuses it across focus, markers, RTH path, initial camera, and follow triggers. `vision_minus_flutter/lib/features/map/map_widget.dart:49-50, 61-63, 83-86, 121-126`

## Still risky after Round 2

### [RISKY] #8: Arm intent lifecycle can still show timeout/stale even if a definitive callback arrives late
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/connection/connection_provider.dart:301-304, 397-414` clears `armCommandTargetStatus` on timeout, so a late `set_arm_result` no longer has a target to reconcile against.
- **Systemic:** Intent lifecycle and actual arm state are partially decoupled; late callbacks can recover state but not always intent narrative.
- **Process:** Both rounds focused on preventing false disarm, not on callback race cleanup after timeout.
**Consensus:** YES — three senior engineers would agree this is a real race, but they may rank it below the fixed command-path issues above.

## Verification commands

- `flutter analyze`
- `flutter build apk --debug`
