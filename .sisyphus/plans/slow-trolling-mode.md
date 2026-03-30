# Slow Trolling Mode for PowerDolphin Fishing

## TL;DR

> **Quick Summary**: Modify the decompiled VisionMinus APK to enable ultra-slow trolling speeds for wacky rig stick bait fishing. Three phases: (1) reduce joystick sensitivity via existing divisor mechanism, (2) add smooth ramping so motors don't jerk on startup, (3) optionally add pulsed trolling for sub-minimum speeds. Each phase is independently testable on the water — stop when fishing is satisfactory.

## Context

- PowerDolphin is controlled via virtual joystick → `Rocker{x, y, r, z}` (range ±1000) → JNI `controlRocker()` → native `libPowerSDK.so` → MAVLink TCP → dolphin motors
- User is already on Comfort mode (lowest firmware speed cap) — still too fast/torquey at minimum input
- An existing `mRockerEffectivePercent` divisor mechanism (default 1.0) reduces joystick values before sending — user never knew about it
- The existing RockerCalibrateFragment UI only allows values 0.2-1.0 (amplification only, can't reduce below default)
- "Speed too low" warning is scan-mode only — no evidence of firmware minimum for manual rocker input
- Only `x` (thrust) and `r` (yaw) axes are used in manual mode; `y` and `z` are unused
- `ShipMainHandler` already exists with `postDelayed` — infrastructure for Phase 2 ramping
- Flutter rebuild rejected (110+ screens, 82 JNI methods, all comms via native .so)
- AIB-dolphin protocol RE is early stage — can't rely on it

## Guardrails

### MUST

- Back up every file before modification (`.bak` alongside original per AGENTS.md)
- Test build (`apktool b . -o modified.apk`) after EVERY file change
- Only modify files in root `smali_classes3/` (working copy), NEVER `fresh_approach/`
- Preserve all existing functionality — trolling changes must not break normal operation
- Clear app data on device before first install: `adb shell pm clear com.powervision.newvisionplus`

### MUST NOT

- Modify `lib/` (native .so binaries)
- Touch `isLogin()` bypass
- Change network config (IPs, ports, 192.168.x.x, 22222)
- Change any method signatures (breaks JNI bridge)
- Add new Activities or Fragments (scope creep)
- Set `mRockerEffectivePercent` to 0.0 or negative (division by zero → full speed)

---

## Phase 1: Reduce Joystick Sensitivity (Trivial — ~15 min)

### Goal
Make full joystick deflection send much smaller values to the motors, immediately reducing speed and torque.

### Why Not Just Change the Default
Metis identified that `SpStore.getRockerEffectivePercent()` returns a SharedPreferences value with 1.0f as fallback. If the app has EVER stored a value, changing the fallback constant does nothing. Also, the existing `RockerCalibrateFragment` UI only allows 0.2-1.0 and would overwrite our higher value if the user accidentally opens it.

### Approach: Hardcode divisor in ShipMainActivity initialization

Instead of relying on SharedPreferences, hardcode the initial `mRockerEffectivePercent` to 3.0 where it's set during activity startup.

### Files to Modify

#### 1. `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali`

**Change A — Force initial divisor to 3.0 (line ~951)**

Find where `mRockerEffectivePercent` is initialized to default:
```smali
# BEFORE (line 951 area):
iput v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mRockerEffectivePercent:F
# v3 is likely 0 or loaded from elsewhere
```

Change the initialization at line ~2031 where it's set from SpStore:
```smali
# FIND (line ~10804-10808):
invoke-static {}, Lcom/powervision/gcs/utils/SpStore;->getRockerEffectivePercent()F
move-result p1
iput p1, p0, ...;->mRockerEffectivePercent:F

# REPLACE WITH:
const/high16 p1, 0x40400000    # 3.0f
iput p1, p0, ...;->mRockerEffectivePercent:F
```

This bypasses SharedPreferences entirely and forces 3.0 as the divisor. Full stick = ±333 instead of ±1000.

**Change B — Protect against calibration UI override (line ~2031)**

Find the `onConstantSpeedModelChanged` or wherever `mRockerEffectivePercent` gets written from the calibration fragment callback. In `ShipMainActivity$67.onFragmentInteraction(F)`:
```smali
# FIND (ShipMainActivity$67.smali, line 44):
invoke-static {v0, p1}, ...ShipMainActivity;->access$9002(...;F)F

# ADD AFTER (floor at 3.0):
const/high16 v0, 0x40400000    # 3.0f
invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F
move-result p1
```

This ensures even if the calibration dialog is opened, the divisor never drops below 3.0.

### Verification
- `apktool b . -o modified.apk` succeeds
- Sign and install: `jarsigner ... && adb install -r modified.apk`
- Clear app data first: `adb shell pm clear com.powervision.newvisionplus`
- On water: full joystick should produce ~1/3 the speed of before
- Steering should still work (r axis also divided by same factor)

### Tuning
If 3.0 isn't enough, change `0x40400000` to:
- `0x40800000` = 4.0f (full stick = ±250)
- `0x40a00000` = 5.0f (full stick = ±200)
- `0x41200000` = 10.0f (full stick = ±100)

### Success Criteria
- [ ] Motors noticeably slower at all joystick positions
- [ ] No jerk/torque reduction (that's Phase 2)
- [ ] Steering still functional
- [ ] Build succeeds
- [ ] No crashes on connect/control

### Stop Here If
Reduced sensitivity alone gives you satisfactory trolling speeds. If motors still start too aggressively or minimum speed is still too high, continue to Phase 2.

---

## Phase 2: Add Smooth Ramping (Moderate — ~45 min)

### Goal
Eliminate the motor startup jerk by gradually ramping rocker values from current to target over ~1.5 seconds.

### Approach
Intercept the `controlRocker()` calls in ShipMainActivity. Instead of sending the joystick value directly, store it as a TARGET and use `ShipMainHandler.postDelayed()` to interpolate from CURRENT → TARGET in 50ms steps (~30 steps over 1.5s).

### Files to Modify

#### 1. `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali`

**Add fields** (after existing `rocker` field):
```smali
.field private targetRockerX:I
.field private targetRockerR:I
.field private currentRockerX:I
.field private currentRockerR:I
.field private isRamping:Z
```

**Modify the three `controlRocker()` call sites** (lines 13305, 13458, 13535):

Instead of:
```smali
iget-object p1, p0, ...;->rocker:...Rocker;
invoke-static {p1}, ...PVSDK_W4_API;->controlRocker(...)V
```

Replace with logic that:
1. Stores `rocker.x` and `rocker.r` as `targetRockerX` and `targetRockerR`
2. If not already ramping, starts a ramp loop via `ShipMainHandler.postDelayed(rampRunnable, 50)`
3. The ramp Runnable:
   - Moves `currentRockerX` toward `targetRockerX` by step size (e.g., ±30 per tick)
   - Moves `currentRockerR` toward `targetRockerR` by same step
   - Sets `rocker.x = currentRockerX`, `rocker.r = currentRockerR`
   - Calls `controlRocker(rocker)`
   - If current != target, `postDelayed(this, 50)` again
   - If current == target, sets `isRamping = false`
4. When joystick returns to center (both values 0): immediately send zero (don't ramp to stop — safety)

### Key Implementation Details
- Step size of 30 per 50ms tick = ramps from 0→333 in ~550ms (with Phase 1's 3.0 divisor)
- Must handle direction changes mid-ramp (update target, keep ramping)
- Must zero immediately on stick release (safety — check `if-eqz` at lines 13292-13299)
- Use existing `ShipMainHandler` field (line 253) — no new Handler needed
- Ramp Runnable needs to be a new inner class (ShipMainActivity already has 67+, one more is fine)

### Verification
- Build succeeds
- On water: pushing joystick forward → motor gently accelerates over ~1 second
- Releasing joystick → motor stops immediately (no coast)
- Rapid direction changes don't cause erratic behavior

### Success Criteria
- [ ] Motor starts smoothly without jerk
- [ ] Stop is still immediate
- [ ] Both dual-stick and single-stick modes work
- [ ] No lag that makes control feel unresponsive
- [ ] Build succeeds

---

## Phase 3: Pulsed Trolling Mode (Complex — ~1 hour, ONLY IF NEEDED)

### Goal
Achieve speeds BELOW the motor ESC's physical minimum by alternating between minimum-speed and zero commands.

### Approach
When a "trolling" flag is set and joystick values are below a threshold (e.g., ±100), switch to pulsed mode:
- Send the value for N ms, then zero for M ms, repeating
- Duty cycle controls average speed: 50% duty = half of minimum speed
- Toggle via existing UI mechanism (e.g., long-press on C button, or repurpose the calibration button)

### This phase is speculative
We don't know if the ESC has a hard minimum floor until Phase 1 is tested on water. If Phase 1's reduced values produce smooth low-speed movement, Phase 3 is unnecessary.

### Success Criteria
- [ ] Can maintain sub-walking-speed trolling
- [ ] Easy to toggle on/off
- [ ] Motor stops immediately when joystick centers
- [ ] No overheating from rapid on/off cycling

---

## Flutter Rebuild — Assessment (No Action)

**Verdict: Not practical.**

- 60+ Activities, 50+ Fragments, 82 JNI native methods
- ALL hardware communication goes through `libPowerSDK.so` — Flutter would just be a UI shell calling the same native library via platform channels
- Estimated 12-18 months for full port with significant functionality compromises
- AIB-dolphin (direct MAVLink TCP) is the correct long-term path — when that protocol is complete, ANY frontend can be built on it
- For now: keep modifying this APK. It works.

---

## Build & Deploy Checklist

```bash
# 1. Build
apktool b . -o modified.apk

# 2. Sign
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 \
  -keystore my-debug-key.keystore modified.apk alias_name

# 3. Clear old data (first time only)
adb shell pm clear com.powervision.newvisionplus

# 4. Install
adb install -r modified.apk
```

## Key File Reference

| File | Purpose |
|------|---------|
| `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali` | Main control — rocker handling, controlRocker calls, mRockerEffectivePercent |
| `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$67.smali` | Calibration callback — sets mRockerEffectivePercent from UI |
| `smali_classes3/com/powervision/gcs/utils/SpStore.smali` | SharedPreferences store — getRockerEffectivePercent (line 296) |
| `smali_classes3/com/powervision/gcs/view/RockerCalibrateFragment$3.smali` | Calibration confirm handler — floor at 0.2, sends to listener |
| `smali_classes3/com/powervision/gcs/view/ship/ShipRockerView.smali` | UI joystick — generates angle/distance values |
| `smali_classes3/com/powervision/gcs/view/ship/shipcnuview/ShipCNUView.smali` | C/N/U speed mode switcher |
| `smali_classes4/com/powervision/natives/model/Rocker.smali` | Rocker model — x, y, r, z (ints) |
| `smali_classes4/com/powervision/natives/JniW4Native.smali` | Native JNI bridge — controlRocker, setSpeedMode |
| `smali_classes4/com/powervision/natives/PVSDK_W4_API.smali` | SDK API wrapper |
