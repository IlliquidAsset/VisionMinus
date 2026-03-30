# Draft: Slow Trolling Speed Control + Flutter Rebuild Assessment

## Research Findings

### Motor Control Architecture (Complete Chain)

```
UI Joystick (ShipRockerView)
  → onAngleChange / onDistanceLevel callbacks
    → ShipMainActivity.onRockerChanged()
      → Rocker object { x: int, y: int, r: int, z: int }
        → Values divided by mRockerEffectivePercent (default 1.0)
        → Clamped to range [-1000, +1000]
          → PVSDK_W4_API.controlRocker(Rocker)
            → JniW4Native.controlRocker(Rocker) [native method]
              → libPowerSDK.so: Pvw4Ship::controlRocker(short, short, short, short, unsigned short)
                → MAVLink message over TCP → PowerDolphin hardware
```

### Rocker Model
- File: `smali_classes4/com/powervision/natives/model/Rocker.smali`
- Fields: `x` (int), `y` (int), `r` (int), `z` (int)
- x = forward/backward thrust, r = yaw/steering
- Range: [-1000, +1000] enforced by Math.min(1000, Math.max(-1000, value))

### Speed Mode System (C/N/U)
- UI: ShipCNUView with radio buttons (C, N, U)
- C → setSpeedMode(1) = RAY_CONSTANT_SPEED_MODE_LOW
- N → setSpeedMode(2) = RAY_CONSTANT_SPEED_MODE_MID
- U → setSpeedMode(0) = (likely uncapped/turbo)
- This is a FIRMWARE-LEVEL speed cap, not just UI scaling
- Native: JniW4Native.setSpeedMode(int) → Pvw4Ship::setSpeedMode(int)

### mRockerEffectivePercent
- Stored in SharedPreferences as "rocker_effective_percent"
- Default: 1.0f
- Used as DIVISOR: raw_value / mRockerEffectivePercent = sent_value
- Higher value = lower effective range
- There's already UI for adjusting this (ShipMainActivity$67)

### "Speed Too Low" Warning
- Layout: ship_speed_too_low
- Mipmap: w4_speed_too_low
- String: "speedTooLow" referenced in ShipMainActivity$2 and $3
- Suggests firmware has MINIMUM speed threshold

### Fixed Speed Cruise
- Native callback: onFixedSpeedCruiseStatus
- FixedSpeedCruiseStatusInfo in native SDK
- Cruise control feature exists in firmware

### Key Insight: Where Minimum Speed Is Enforced
The minimum speed likely comes from TWO places:
1. **ESC/firmware level**: Brushless motor ESCs have a minimum PWM duty cycle threshold. Below it, motors don't spin at all.
2. **Firmware logic**: The "speed too low" warning suggests the dolphin firmware itself rejects or warns about values below some threshold.

## Options for Slow Trolling

### Option A: Scale Down Rocker Values (mRockerEffectivePercent)
- SIMPLEST change - modify SharedPreferences default or add UI
- Change mRockerEffectivePercent from 1.0 to e.g. 3.0 or 5.0
- This divides ALL joystick values, reducing sensitivity
- Risk: May hit firmware "speed too low" threshold
- Approach: Modify SpStore.getRockerEffectivePercent() default OR add a "trolling mode" toggle

### Option B: Add Ramping/Interpolation
- Modify ShipMainActivity's rocker handling to gradually increase values
- Instead of: user pushes stick → value jumps to 500
- Do: user pushes stick → value ramps 0→50→100→150...→500 over ~2 seconds
- Requires Smali modification in ShipMainActivity (complex but doable)

### Option C: Pulsed Trolling Mode
- Send minimum-viable speed for X ms, then 0 for Y ms, repeat
- Creates very slow average speed from minimum motor speed
- Like PWM at the application level
- Would need a timer/handler loop in ShipMainActivity

### Option D: Fixed Speed Trolling
- Leverage the existing FixedSpeedCruise firmware feature
- May already support very slow fixed speeds
- Need to test what minimum the firmware accepts

## Flutter Rebuild Assessment

### App Scope
- 60+ Activities, 50+ Fragments = 110+ screens
- Features: drone control, camera streaming (RTSP), sonar, mapping (OpenGL), firmware updates, media editing, user management, flight logs
- 82 JNI native methods in libPowerSDK.so

### Critical Dependency: libPowerSDK.so
ALL communication goes through the native library:
- controlRocker → native → MAVLink → dolphin
- setSpeedMode → native → MAVLink → dolphin
- Video streaming → native RTSP
- Every single hardware interaction → native

### Flutter Rebuild Verdict
- **Full rebuild**: NOT practical. 12-18 months, still needs native lib via platform channels.
- **You'd be writing a Flutter UI shell around the same .so** — net gain is minimal vs just modifying the existing app.
- **HOWEVER**: AIB-dolphin already implements direct MAVLink TCP communication in Python. If that protocol is complete, a NEW app (Flutter/React Native/anything) could talk directly to the dolphin WITHOUT libPowerSDK.so.

### The Real Question
Not "should we rebuild in Flutter?" but rather:
- **Path A**: Keep modifying this decompiled APK (Smali changes for trolling mode)
- **Path B**: Complete AIB-dolphin's protocol implementation, then build ANY frontend you want
- Path B gives you: platform independence, clean code, full control, but requires complete protocol RE

## Decisions Made
- **AIB-dolphin status**: Early stage / not started. Cannot be relied on for quick fix.
- **Current speed mode**: Already on C (Comfort/Low) — the LOWEST available. setSpeedMode won't help further.
- **Priority**: Quick fix for fishing ASAP. Modify this APK directly.
- **Flutter rebuild**: OFF THE TABLE. Not practical (110+ screens, 82 JNI methods), and AIB-dolphin protocol not ready to build on.

## Scope
- **IN**: Smali modifications to this APK for slow trolling
- **OUT**: Flutter rebuild, AIB-dolphin work, new app

## Additional User Answers
- **Existing sensitivity slider**: Did NOT know about it. Has never adjusted mRockerEffectivePercent.
- **Fishing needs**: BOTH smooth starts AND lower minimum speed, equally important.

## Technical Approach (Decided)
Phased, iterative — each phase builds on the last, stop when fishing is satisfactory:

1. **Phase 1 (trivial)**: Change default mRockerEffectivePercent from 1.0 → 3.0-5.0
   - One-line Smali change in SpStore.getRockerEffectivePercent()
   - Immediately reduces all joystick values by 3-5x
   - Build, test on water

2. **Phase 2 (moderate)**: Add ramping/acceleration curve to controlRocker calls
   - Intercept rocker values in ShipMainActivity
   - Gradually interpolate from current to target over ~1.5s
   - Smooths start/stop/speed-change transitions
   
3. **Phase 3 (complex, only if needed)**: Pulsed trolling mode
   - Alternate between sending minimum speed and zero
   - Achieves sub-minimum average speed
   - Requires timer/handler loop + UI toggle

## Open Questions
- NONE. All requirements clear. Ready for plan generation.

## Post-Phase-1 Field Feedback (New)
- **Critical regression**: Thrust no longer works at all after Phase 1 build, while phone and PD connection still appear healthy.
- **GPS/Compass issue**: App repeatedly reports compass calibration needed despite 9-10 satellites.
- **Route planning ("AI" button) pain points**:
  - Minimum thrust in route planner appears capped at ~40%; user wants 1% (or firmware minimum) for slow trolling.
  - Route cannot be completed without adding a return point.
  - Tapping points opens delete dialog, which may block route-loop completion UX.
  - Return-home reports weak GPS signal and does not function.
- **User discovery**: U mode provides finer-grain manual speed control and is helpful.
- **User request**: Investigate open-source bathymetric map options.
- **User offered logs**: Will connect phone for log retrieval if needed.

## Revised Priority
1. **Restore reliable thrust first** (highest priority, blocker for all fishing use).
2. Address route-planner minimum thrust and completion UX.
3. Investigate compass/GPS calibration behavior and RTH weak-signal gate.
4. Explore bathymetric map integration options.

## New Open Questions
- Which exact build is currently installed (Phase 1 only, or any local tweaks after that)?
- Does manual joystick thrust fail in all modes (C/N/U), or only one mode/path?
- Are route-planner issues reproducible every session, or intermittent?
- Can we capture `adb logcat` during: connect -> joystick thrust command -> no movement?

## User Clarification Update
- User clarified thrust is currently working.
- User priority selection for next pass: **all requested areas**, not one-by-one.

## Decision Update (Confirmed)
- Route speed floor first-pass target: **10% equivalent** (floor 0.10 path).
- If controller/firmware floor prevents further reduction, **pulse mode fallback is acceptable**.
- Route completion UX: prefer first-point tap completing loop; first confirm intended current behavior in code, then force #1 behavior if ambiguous.
- GPS policy: **RTH stricter than AI route start**.
- RTH weak-lock preference: support a bounded near-home margin approach using available phone/remote position context.
