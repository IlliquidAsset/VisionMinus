## [2026-03-03] Task 1: Skip Splash Screen

### Changes Made
- Removed LAUNCHER intent-filter from WelcomeActivity (AndroidManifest.xml line 36-37)
- Added LAUNCHER intent-filter to HomeActivity (AndroidManifest.xml line 94-97)
- Created backup: AndroidManifest.xml.bak

### Build Verification
- `apktool b . -o modified.apk` → SUCCESS (exit code 0)
- APK built successfully with resources rebuilt
- Signed with debug keystore (SHA1 warnings expected)

### Findings
- WelcomeActivity previously showed 5-second splash before navigating to HomeActivity
- HomeActivity already configured as singleTask with hardwareAccelerated=true
- No permission request code found in WelcomeActivity.smali (checked - permissions likely handled elsewhere)
- ADB not available in build environment - manual device testing required

### Next Steps
- User should test on physical device:
  - Install: `adb install -r modified.apk`
  - Launch and verify no splash delay
  - Check logcat for crashes: `adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"`

## [2026-03-03] Wave 2: Tasks 2-5 (Chinese SDK removal, activity disabling, connectivity fix)

### Changes Made
- Deleted 1237 files across 6 directories (ShareSDK, Mob, QQ social, Lewis share)
- Removed all Chinese social SDK manifest entries (Mob, ShareSDK, QQ, Line, WeChat, Weibo)
- Removed Amap API key and APSService from manifest
- Removed testgeoac.xml and testgeoac_googlemap.xml test layouts (+ public.xml entries)
- Added android:enabled="false" to 22 activities (aircraft, login, user, service, handheld)
- Changed www.baidu.com → www.google.com in both NetUtils files

### Build Issues
- Deleting layout files requires also removing their entries from res/values/public.xml
- .bak files in smali directories cause build warnings (moved to .sisyphus/backups/)

### Key Directories
- ARouter is in smali/ (not smali_classes4/)
- Bugly is in smali_classes5/
- Chinese social SDKs were spread across smali/, smali_classes2/, smali_classes5/

## [2026-03-03] Wave 3: Tasks 6-7 (Rebrand + SDK version)

### Changes Made
- Changed pv_app_name from "Vision+2" to "VisionMinus" in res/values/strings.xml
- Only one locale file had pv_app_name (no locale-specific overrides)
- Updated targetSdkVersion 29→31 in apktool.yml
- Updated compileSdkVersion 30→31, platformBuildVersionCode 30→31 in AndroidManifest.xml
- Added BLUETOOTH_CONNECT permission (required for API 31+)
- Verified Apache HTTP legacy library declaration preserved

## [2026-03-03] Task 8: Bathymetric Maps Research

### Findings
- OpenSeaMap has free tile overlay but Cherokee Lake coverage is sparse/empty
- Navionics/Garmin has best data but NO public API
- User has Lowrance FS7 with personal bathymetric maps uploaded to community portal
- Lowrance export → tile conversion → Google Maps overlay is the viable path
- DEFERRED to separate project due to complexity

## [2026-03-03] Task 9: Integration Verification

### Results
- Clean build: apktool b . -o modified.apk → PASS
- APK size: 103MB (down from 104MB baseline — 1MB saved from SDK removal)
- Signed with debug keystore
- All safety checks PASS (ARouter, Bugly, login bypass, network config intact)
- Device testing pending user (ADB not available in build environment)
