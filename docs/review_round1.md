### [HIGH] #1: Speed modes were sending the wrong values and never changed rocker behavior
**MRCA:**
- Proximate: `vision_minus_flutter/lib/features/dashboard/widgets/bottom_info_bar.dart:99-101`, `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:100,183,621-740`, `vision_minus_flutter/lib/features/settings/settings_panel.dart:609-618` used `0/1/2` button values and only scaled thrust, while the original app’s speed modes are distinct rocker layouts.
- Systemic: Speed mode was treated as a cosmetic multiplier instead of a protocol/stateful control mode with UI consequences.
- Process: Previous reviews checked that `setSpeedMode()` existed, not whether mode semantics matched the original app.
**Consensus:** YES — three senior engineers would all call this real because the original smali shows distinct low/medium/high rocker layouts, and the Flutter layer collapsed them into the same control scheme.
**User request affected:** #12
**Verification:**
1. Open the dashboard.
2. Tap each speed mode button.
3. Before the fix: controls stayed effectively the same apart from thrust scaling.
4. After the fix: L = left vertical/right horizontal, M = left horizontal/right vertical, H = single-stick drive.
**Fix:** FIXED — remapped UI speed mode values to `1/2/3`, removed fake thrust scaling, added layout-specific rocker rendering, and updated labels to Low/Medium/High.

### [HIGH] #2: Dashboard RTH bypassed the only home-position safety gate
**MRCA:**
- Proximate: `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:480-493` previously called `PowerSdkBridge.rtl()` directly from the slide action instead of using the guarded RTH provider path.
- Systemic: Safety-critical commands were issued from multiple UI entry points instead of one verified command path.
- Process: Review focused on whether RTH existed, not whether every trigger used the same safety checks.
**Consensus:** YES — bypassing the only home verification path in a damaged-drone app is not debatable.
**User request affected:** #15
**Verification:**
1. Launch the dashboard without having verified phone home in this session.
2. Trigger slide-to-RTH.
3. Before the fix: dashboard could call RTL directly.
4. After the fix: dashboard routes through `rthProvider`, sets home if needed, then returns status to the user.
**Fix:** FIXED — RTH slide action now uses `rthProvider`, performs home setup when missing, and surfaces provider status.

### [HIGH] #3: Spot-lock kept operating after GPS quality dropped
**MRCA:**
- Proximate: `vision_minus_flutter/lib/features/spot_lock/spot_lock_controller.dart:196-202` now shows the missing runtime checks; previously spot-lock only gated GPS quality at enable time and kept correcting on raw fix alone.
- Systemic: GPS quality was treated as a one-time admission check instead of a continuous operating constraint.
- Process: Review checked the enable gate and missed the far more dangerous question: “what happens after quality degrades mid-hold?”
**Consensus:** YES — continuous GPS-dependent control without continuous GPS-quality gating is an obvious safety defect.
**User request affected:** #3, #16
**Verification:**
1. Enable spot-lock outdoors with a valid fix.
2. Force degraded telemetry or loss of autonomy-ready GPS.
3. Before the fix: controller could keep pulsing corrections.
4. After the fix: spot-lock suspends on `gps_degraded`, stale telemetry, or connection loss.
**Fix:** FIXED — added continuous checks for `isGpsAutonomyReady`, telemetry freshness, and connection state before any correction pulse.

### [HIGH] #4: Compass calibration UI timed out too fast and discarded late callbacks as stale
**MRCA:**
- Proximate: `vision_minus_flutter/lib/core/models/boat_state.dart:58` and `vision_minus_flutter/lib/features/settings/settings_panel.dart:794-803` used a 5-second start timeout and treated post-timeout callbacks as stale noise.
- Systemic: Calibration lifecycle logic assumed perfect callback latency on a noisy native stack.
- Process: Earlier reviews looked for a button-handler bug instead of testing delayed callback delivery.
**Consensus:** YES — a 5-second timeout on native calibration start with stale-drop behavior is a real bug, not style.
**User request affected:** #2
**Verification:**
1. Start compass calibration on a slow or callback-laggy session.
2. Wait >5 seconds for the first native callback.
3. Before the fix: UI timed out and then ignored the callback path.
4. After the fix: timeout is 15 seconds and late-start callbacks can recover the UI state.
**Fix:** FIXED — increased calibration start timeout to 15 seconds and stopped auto-classifying post-timeout start callbacks as stale.

### [HIGH] #5: Map follow logic was self-sabotaging, and compact PiP could steal taps
**MRCA:**
- Proximate: `vision_minus_flutter/lib/features/map/map_widget.dart:189-232,363-368` animated the camera from build-driven follow logic and let `onCameraMove` immediately flip follow mode to free; the compact map was also fully interactive.
- Systemic: Programmatic map movement and user movement were never separated.
- Process: Earlier reviews noticed symptoms (jitter/PiP issues) but missed the event-loop cause.
**Consensus:** YES — camera animations triggering their own follow-cancel path and interactive PiP blocking taps is a concrete control/UI defect.
**User request affected:** #4, #13
**Verification:**
1. Open the map and enable follow.
2. Watch the camera under live updates.
3. Before the fix: jitter and follow dropouts could happen; compact PiP taps were unreliable.
4. After the fix: compact map ignores pointer events, programmatic camera moves are tracked, and follow mode is not cancelled by its own animation.
**Fix:** FIXED — wrapped compact map with `IgnorePointer`, added programmatic camera move tracking, `onCameraIdle` reset, and change-threshold checks before animating.

### [HIGH] #6: Connection-loss handling while armed was still too passive
**MRCA:**
- Proximate: `vision_minus_flutter/lib/features/connection/connection_provider.dart:723-728` shows the new mitigation path; previously the code only attempted a best-effort disarm on loss.
- Systemic: Link-loss safety relied on one unverifiable command instead of a layered shutdown attempt.
- Process: Prior review accepted a comment about “best effort” in a codebase with a known damaged vehicle.
**Consensus:** YES — if link loss already damaged hardware, a single best-effort disarm is not enough.
**User request affected:** #15
**Verification:**
1. Arm the boat.
2. Simulate transport loss.
3. Before the fix: app only attempted disarm.
4. After the fix: app also disables spot-lock, sends zero rocker, forces sail mode 0, then sends disarm.
**Fix:** FIXED — widened the loss handler to send layered shutdown commands and disable autonomous correction locally before reconnect.

### [LOW] #7: The widget test was asserting obsolete UI copy and was useless as a regression guard
**MRCA:**
- Proximate: `vision_minus_flutter/test/widget_test.dart:7-9` expected `Water Drone Controller`, text that no longer exists.
- Systemic: Test coverage drifted away from the current UI contract.
- Process: No one ran the tests after UI copy changed.
**Consensus:** YES — a permanently failing baseline test is noise, not protection.
**User request affected:** None directly
**Verification:**
1. Run `flutter test`.
2. Before the fix: the only test failed on stale text.
3. After the fix: test passes and at least verifies app bootstraps.
**Fix:** FIXED — updated the test to assert the current app shell instead of deleted copy.

## Verification commands
- `flutter analyze` — passed
- `flutter test` — passed
- `flutter build apk --debug` — passed
