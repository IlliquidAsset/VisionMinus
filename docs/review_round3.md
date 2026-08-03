# Round 3 Safety Review

Round 3 did not trust Round 1 or Round 2. It re-read their claims, traced the live Flutter → bridge → Kotlin → JNI paths end to end, and checked behavioral correctness against the 16 user requests.

## Request verification

### Request #1: "thrust doesn't work"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/widgets/ship_rocker.dart:36-53`, `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:595-619`, `vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart:229-242`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:315-323`, `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniW4Native.kt:49-57`
**Behavior:** Vertical rocker motion becomes `_leftY`, `_sendRocker()` maps that to rocker `x`, the bridge forwards it unchanged, Kotlin builds a W4 rocker with the same `x/r`, and JNI sends it to firmware. Output is zeroed only when disconnected or still locked.
**Gap:** None.
**Fix:** N/A

### Request #2: "compass calibration does nothing"
**Status:** PARTIAL
**Code path:** `vision_minus_flutter/lib/features/settings/settings_panel.dart:649-689,786-837`, `vision_minus_flutter/lib/features/connection/connection_provider.dart:188-207,586-667`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:382-387`, `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniW4Native.kt:154-156`
**Behavior:** Start/cancel commands are real, and `mag_calibration_status` callbacks can move the UI out of the dead timeout path Round 2 fixed. But the Flutter FSM still fabricates per-side progress/orientation from a single integer status callback.
**Gap:** The app can show progress, sides, and orientation guidance that are inferred locally, not proven by distinct W4 callback payloads.
**MRCA:**
- **Proximate:** `connection_provider.dart:586-667` synthesizes progress/orientation from guessed status handling; `settings_panel.dart:786-837` treats that synthesized state as authoritative UI progress.
- **Systemic:** The bridge exposes only one raw mag-calibration integer, but the Flutter UI pretends it has richer callback semantics than the bridge actually carries.
- **Process:** Rounds 1-2 verified timeout handling, not whether the displayed calibration progression was grounded in real W4 callback fields.
- **Consensus:** YES — three senior engineers would all call this only partially verified because the UI is extrapolating beyond the native data contract.
**Fix:** N/A

### Request #3: "spot-lock — least throttle, intelligent vector"
**Status:** PARTIAL
**Code path:** `vision_minus_flutter/lib/features/spot_lock/spot_lock_controller.dart:102-144,175-366`, `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:595-619`, `vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart:229-242`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:315-323`
**Behavior:** Spot-lock requires sane autonomy-ready GPS, stores an anchor, computes relative bearing to that anchor, scales thrust from 4% to 12%, and sends pulsed `x/r` rocker corrections using boat yaw compensation.
**Gap:** The controller is direction-aware, but it is still an open-loop approximation. It does not prove “least throttle”; it just clamps to a small fixed range. It also assumes the `r` steering channel is a good enough stand-in for positional vector correction.
**MRCA:**
- **Proximate:** `spot_lock_controller.dart:313-326` converts displacement into fixed-range pulsed `x/r` rocker commands rather than a measured minimum-throttle controller.
- **Systemic:** Autonomous hold logic is built as heuristic pulse shaping instead of a validated position controller tied to observed drift response.
- **Process:** Rounds 1-2 checked gating and suspension safety, not whether the actual hold behavior matched the user’s “least throttle, intelligent vector” intent.
- **Consensus:** YES — this is only partially verified behavior, not a proven implementation of the requested control law.
**Fix:** N/A

### Request #4: "map oriented direction of phone, not north up"
**Status:** FAIL
**Code path:** `vision_minus_flutter/lib/features/map/map_provider.dart:28-45,83-85`, `vision_minus_flutter/lib/features/map/map_widget.dart:50-55,113-118,188-235,383-411`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PhoneHeadingSensorManager.kt:25-45,68-91`
**Behavior:** The map defaulted to phone-follow mode, but the Android heading stream was using the raw device rotation vector without compensating for display rotation. In a landscape control app, that makes the map bearing wrong even when heading callbacks arrive.
**Gap:** “Phone-oriented” was false. It was “sensor-natural-orientation-oriented.”
**MRCA:**
- **Proximate:** `PhoneHeadingSensorManager.kt:25-45` previously called `getOrientation()` on the raw rotation matrix and ignored screen rotation.
- **Systemic:** Sensor-frame data was treated as screen-frame truth.
- **Process:** Rounds 1-2 checked whether heading callbacks existed, not whether the reported heading actually matched the way the user was holding the phone.
- **Consensus:** YES — if the app is landscape and the heading is not display-compensated, the feature is wrong.
**Fix:** Added display-rotation remapping before emitting `phone_heading`, so the map bearing now tracks phone orientation instead of raw north-up sensor frame.

### Request #5: "Manual control works indoors without GPS"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:469-509,595-619`, `vision_minus_flutter/lib/features/connection/connection_provider.dart:364-395`, `vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart:134-138,229-242`
**Behavior:** Unlock and manual rocker output have no GPS gate. Indoors with zero GPS, the app can still unlock and send rocker commands as long as the link is connected and unlock is confirmed.
**Gap:** None.
**Fix:** N/A

### Request #6: "Left stick both directions forward, no reverse"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/widgets/ship_rocker.dart:36-59`, `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:688-725,610-618`
**Behavior:** Vertical drag inverts `_y`, so up becomes positive thrust and down becomes negative thrust. Negative `_leftY` becomes negative rocker `x`.
**Gap:** None.
**Fix:** N/A

### Request #7: "Tank turns"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:610-618`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:315-323`, `vision_minus_flutter/android/app/src/main/kotlin/com/powervision/natives/JniW4Native.kt:49-57`
**Behavior:** With `_leftY = 0` and `_rightX != 0`, the app sends `x=0` and `r!=0`, which is pure rotation command input.
**Gap:** None.
**Fix:** N/A

### Request #8: "Differential steering"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:610-618`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:315-323`
**Behavior:** With forward thrust and steering together, the app sends simultaneous non-zero `x` and `r`, which is the required curved-drive input path rather than spin-only input.
**Gap:** None.
**Fix:** N/A

### Request #9: "Log recording without adb"
**Status:** FAIL
**Code path:** `vision_minus_flutter/lib/features/connection/connection_provider.dart:52-56`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/DeviceLogRecorder.kt:29-52,91-119`, `vision_minus_flutter/lib/core/sdk/power_sdk_bridge.dart:389-419`, `vision_minus_flutter/lib/features/settings/settings_panel.dart:346-374,752-818`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/PowerSdkPlugin.kt:415-424`
**Behavior:** Recording already started automatically and log files were written under `externalFilesDir/runtime_logs`, but the Flutter app exposed no way to list or read them. Without adb, the user still had no retrieval path.
**Gap:** “Recording exists” is not “logs retrievable later without adb.”
**MRCA:**
- **Proximate:** `connection_provider.dart:54` started recording, but no Flutter screen consumed `getLogPath()` or `listLogFiles()` and there was no bridge method to open a saved log.
- **Systemic:** The logging feature stopped at storage, not retrieval.
- **Process:** Round 2 verified write integrity and stop flushing, not whether a user without adb could actually get the file back.
- **Consensus:** YES — hidden files in app-private storage are not user-retrievable behavior.
**Fix:** Added in-app runtime log listing and log-file viewing in the Maintenance panel, plus a native `readLogFile` bridge method guarded to `runtime_logs/`.

### Request #10: "GPS shows Africa"
**Status:** PARTIAL
**Code path:** `vision_minus_flutter/lib/features/map/map_widget.dart:48-126,347-381`, `vision_minus_flutter/lib/core/models/gps_position.dart:164-176`, `vision_minus_flutter/lib/features/map/map_provider.dart:47-56`
**Behavior:** Marker rendering, focus actions, initial camera, and RTH path were already rejecting insane/0,0 coordinates. But breadcrumb trail storage was still accepting non-zero insane coordinates, so old bad samples could still pollute the map.
**Gap:** The marker path was fixed; the trail path was not.
**MRCA:**
- **Proximate:** `map_provider.dart:50-53` previously admitted any non-zero fix into the trail, even when `gps.isSane` was false.
- **Systemic:** Coordinate sanity checks were applied inconsistently across visual layers.
- **Process:** Round 2 verified marker/focus paths and missed the independent breadcrumb state path.
- **Consensus:** YES — one remaining render path is enough for “GPS shows Africa” to resurface.
**Fix:** Tightened breadcrumb storage to require sane coordinates before adding any point to the trail.

### Request #11: "Locator toggle drone/phone"
**Status:** FAIL
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:384-413`, `vision_minus_flutter/lib/features/map/map_provider.dart:80-88`, `vision_minus_flutter/lib/features/map/map_widget.dart:56-76,383-411`
**Behavior:** The “Locate Drone” / “Locate Phone” menu items only recentered once. They did not switch `MapFollowMode`, so the heading source stayed whatever it was before.
**Gap:** Center changed. Heading source did not. The toggle was fake.
**MRCA:**
- **Proximate:** `dashboard_screen.dart:396-404` previously set only `mapFocusCommandProvider` and never switched `mapFollowModeProvider`.
- **Systemic:** One-shot focus and persistent follow/heading state were split, but the UI label implied they were the same action.
- **Process:** Rounds 1-2 looked at the camera move and PiP issues, not at whether the locator command updated the persistent mode state.
- **Consensus:** YES — a locator toggle that does not change the follow/heading mode is not implementing the request.
**Fix:** Menu actions now switch both centering target and follow/heading source by setting `MapFollowMode.drone` or `MapFollowMode.phone` together with the focus command.

### Request #12: "Modes supposed to be different"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:621-727`, `vision_minus_flutter/lib/features/dashboard/widgets/bottom_info_bar.dart:91-132`, `vision_minus_flutter/lib/features/settings/settings_panel.dart:609-620`
**Behavior:** L/M/H are now different control layouts, not just labels or thrust multipliers.
**Gap:** None.
**Fix:** N/A

### Request #13: "PIP tap blocked"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:157-165,350-368`, `vision_minus_flutter/lib/features/dashboard/widgets/map_pip_widget.dart:14-30`, `vision_minus_flutter/lib/features/map/map_widget.dart:188-235`
**Behavior:** Compact map ignores pointer events and the parent `GestureDetector` receives the tap. The compact video PiP is also wrapped directly in a tap handler.
**Gap:** None, beyond full-screen overlays intentionally blocking input while active.
**Fix:** N/A

### Request #14: "Intent notification in header, auto-fade"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:519-561`, `vision_minus_flutter/lib/features/dashboard/widgets/top_telemetry_bar.dart:66-74`
**Behavior:** Terminal intent states trigger an immediate fade-out over 5 seconds, then the header chip is reset to idle and removed.
**Gap:** None for fade/disappear behavior.
**Fix:** N/A

### Request #15: "Drone damaged on WiFi loss"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/connection/connection_provider.dart:747-774`, `vision_minus_flutter/lib/features/spot_lock/spot_lock_controller.dart:132-144,359-367`
**Behavior:** On connected→disconnected/error while armed, the shutdown helper awaits: disable spot-lock, zero rocker, set sail mode 0, then send disarm. Spot-lock is stopped locally first.
**Gap:** None in ordering. The only caveat is physical link death may still prevent command delivery.
**Fix:** N/A

### Request #16: "Spot-lock GPS-only when quality poor"
**Status:** PASS
**Code path:** `vision_minus_flutter/lib/features/spot_lock/spot_lock_controller.dart:102-111,188-208`, `vision_minus_flutter/lib/features/connection/connection_provider.dart:417-567`, `vision_minus_flutter/lib/core/models/boat_state.dart:165-182`
**Behavior:** Spot-lock refuses to enable without autonomy-ready GPS and suspends mid-hold when GPS quality degrades, telemetry goes stale, unlock is lost, or connection drops.
**Gap:** None.
**Fix:** N/A

## Additional findings beyond the 16 requests

### [MEDIUM] Calibration UI still overstates what the W4 callback proves
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/connection/connection_provider.dart:586-667` infers side/progress/orientation from a single raw status integer.
- **Systemic:** UI richness exceeds bridge fidelity.
- **Process:** Previous rounds verified liveliness, not evidentiary accuracy.
- **Consensus:** YES

### [MEDIUM] Empty catch still swallows USB cleanup failures
**MRCA:**
- **Proximate:** `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/UsbConnectionManager.kt:237-241`
- **Systemic:** Native lifecycle cleanup still prefers silence over diagnosability.
- **Process:** Earlier rounds focused on runtime behavior, not observability debt.
- **Consensus:** YES

### [LOW] Hardcoded network endpoints remain scattered
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/dashboard/widgets/video_feed_widget.dart:13`, `vision_minus_flutter/lib/features/dashboard/dashboard_screen.dart:437`, `vision_minus_flutter/lib/features/media/media_gallery_screen.dart:108`, `vision_minus_flutter/lib/features/settings/settings_panel.dart:276`, `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/connection/WifiTransportController.kt:203`
- **Systemic:** Device network assumptions are embedded in UI and transport code instead of one runtime configuration source.
- **Process:** Previous rounds prioritized behavior and safety gating over configuration hygiene.
- **Consensus:** YES

### [LOW] Video player lifetime is effectively process-wide
**MRCA:**
- **Proximate:** `vision_minus_flutter/lib/features/dashboard/widgets/video_feed_widget.dart:21-24,99-104` keeps a static shared `Player` and never disposes it.
- **Systemic:** Media lifetime is handled as a global singleton without an explicit shutdown contract.
- **Process:** Previous rounds focused on control safety, not long-session resource retention.
- **Consensus:** YES

## Sanity checks requested by user

- **TODO/FIXME/HACK:** found only generic Gradle TODOs in `vision_minus_flutter/android/app/build.gradle:23,35`
- **Empty catch blocks:** confirmed in `vision_minus_flutter/android/app/src/main/kotlin/com/visionminus/vision_minus/UsbConnectionManager.kt:240`
- **Hardcoded IPs/ports:** confirmed; see additional finding above
- **Infinite loops / unbounded recursion:** none found in the traced Flutter/Kotlin control paths
- **Memory leaks from uncancelled subscriptions:** no uncancelled Riverpod/stream subscriptions found in the traced control paths, but the static shared video player remains a resource-retention risk
