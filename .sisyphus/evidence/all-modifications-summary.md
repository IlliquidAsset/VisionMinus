# VisionMinus APK Modifications Summary

## All Patches Applied (Build-Verified)

### 1. Slow Trolling Mode (Phase 1 — Earlier Session)
**Files:** ShipMainActivity.smali, ShipMainActivity$67.smali
- **ShipMainActivity.smali:10807** — `const v1, 0x40400000` (3.0f divisor for joystick → ±333 range)
- **ShipMainActivity$67.smali:43** — `const v1, 0x40400000` (3.0f floor guard via Math.max)
- **Effect:** Reduces joystick sensitivity by 3x for slow trolling

### 2. Route Speed Floor (Task 4)
**File:** ShipMainActivity$2.smali
- **Line 430** — Changed `0x3ecccccd` (0.4f) → `0x3dcccccd` (0.1f)
- **Effect:** Route planner speed slider now goes from 10% to 90% (was 40-90%)

### 3. GPS Gating Relaxation (Task 6)
**File:** ShipMainActivity.smali (isGpsEnable method at line 4212)
- **EPH threshold** — Changed `0x12c` (300) → `0x1f4` (500) — more forgiving of on-water GPS multipath
- **Satellite threshold** — Changed `0x8` (8) → `0x6` (6) — allows fewer visible satellites
- **Affects:** AI route start, RTH, and safe-zone confirmation (all 3 callers of isGpsEnable)

### 4. Auto-Close Loop (Task 5a)
**File:** ShipMainActivity$3.smali (onStart method)
- Inserted before sendAirlinePoint call
- Gets first and last waypoints from latLngLinkedList
- If list.size >= 2 AND first != last → appends first point to close loop
- **Effect:** Every route automatically returns to its starting position

### 5. Continuous Loop Mode (Task 5b)
**File:** ShipMainActivity$ShipMainHandler.smali (pswitch_3 / message 22)
- Replaced airline mission completion handler
- Instead of stopping (lineOpenClose, setSailMode(0), cleanup), re-sends the mission
- Safety fallback: if waypoints empty, falls through to original stop behavior
- **Effect:** Route repeats continuously until user presses Pause/Reset

## Backup Files
All modified files have `.bak` backups alongside them:
- `ShipMainActivity.smali.bak`
- `ShipMainActivity$2.smali.bak`
- `ShipMainActivity$3.smali.bak`
- `ShipMainActivity$67.smali.bak`
- `ShipMainActivity$ShipMainHandler.smali.bak`

## Rollback Instructions
To revert ANY patch, copy the .bak file over the modified file:
```bash
cd smali_classes3/com/powervision/gcs/ui/aty/ship/
cp ShipMainActivity.smali.bak ShipMainActivity.smali          # reverts GPS + trolling
cp ShipMainActivity\$2.smali.bak ShipMainActivity\$2.smali    # reverts speed floor
cp ShipMainActivity\$3.smali.bak ShipMainActivity\$3.smali    # reverts auto-close
cp ShipMainActivity\$67.smali.bak ShipMainActivity\$67.smali  # reverts trolling floor
cp ShipMainActivity\$ShipMainHandler.smali.bak ShipMainActivity\$ShipMainHandler.smali  # reverts loop
```
Then rebuild: `apktool b . -o modified.apk`

## Compass Calibration Finding
The compass calibration warning is **firmware-originated**, not app-side.
- `compass_adjust` string (0x7f120c5d) exists in R$string but is NOT referenced in any UI/dialog code
- Native lib (libPowerSDK.so) contains mag calibration functions and callbacks
- **Cannot fix in Smali** — the warning comes from the drone's firmware/hardware state

## Bathymetry Research
- **MVP:** GEBCO + OpenSeaMap contours via MapLibre Native Android
- **US Fallback:** NOAA BlueTopo (public domain, high-res)
- **Practical Alt:** OpenCPN in split-screen (avoids risky in-app integration)

## Build & Install
```bash
apktool b . -o modified.apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-debug-key.keystore modified.apk alias_name
adb shell pm clear com.powervision.newvisionplus
adb install -r modified.apk
```
