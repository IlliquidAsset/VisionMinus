# VisionMinus Modernization & Simplification

## TL;DR

> **Quick Summary**: Strip a bloated reverse-engineered PowerVision Android APK down to a lean, PowerDolphin-only controller app. Remove dead Chinese SDKs, non-dolphin drone code, and splash screens. Rebrand to "VisionMinus". Optimize Google Maps loading. Bump targetSdkVersion to 31.
> 
> **Deliverables**:
> - App launches directly to dolphin setup/controller (no splash)
> - All Chinese social SDKs removed (~729 files)
> - All non-PowerDolphin drone UI disabled
> - Chinese map alternatives removed
> - Rebranded as "VisionMinus"
> - targetSdkVersion updated to 31
> - Google Maps loads faster
> - Builds and runs on modern Android devices
> 
> **Estimated Effort**: Large
> **Parallel Execution**: YES - 3 waves
> **Critical Path**: Task 0 (verify build) → Task 1 (splash skip) → Tasks 2-5 (parallel removal) → Tasks 6-8 (branding/SDK/maps)

---

## Context

### Original Request
User hasn't worked on this project in a long time. Wants to modernize the decompiled APK for PowerDolphin-only use. Specifically: fix slow Google Maps loading, remove dead code for other drones and Chinese services, remove splash screens and go straight to controller, simplify and rebrand.

### Interview Summary
**Key Discussions**:
- Conservative cleanup approach — remove clearly dead code, leave questionable shared utilities intact
- Keep firmware upgrade capability (local firmware files possible)
- Keep media gallery (needed for dolphin photos/videos)
- Physical Android device available for testing
- App name: "VisionMinus"
- Build status unknown — must verify first

**Research Findings**:
- App startup: WelcomeActivity (5-sec splash) → HomeActivity (menu) → Guides → ShipMainActivity (controller)
- Login bypass already working in SharedPreferencesUtils.getBoolean("isLogin")
- NationMapView custom class wraps Google Maps — Gaode/Amap references are just layout IDs, not actual Chinese map SDK usage
- ~729 files of Chinese social SDKs (WeChat, QQ, Weibo, ShareSDK, Mob)
- ~60+ PowerRay camera callback files, ~20+ aircraft activities
- targetSdkVersion 29, uses deprecated Apache HTTP library
- Hardcoded Google Maps API key in AndroidManifest.xml
- Two separate NetUtils classes both ping www.baidu.com for connectivity checks

### Metis Review
**Identified Gaps** (addressed):

| Gap | Resolution |
|-----|-----------|
| Tencent Bugly (crash reporting) actively initialized in BaseApplication — removing "all Tencent" = instant crash | **KEEP Bugly** (`com/tencent/bugly/`). Only remove QQ social SDKs (`com/tencent/connect/`, `com/tencent/open/`, `com/tencent/tauth/`) |
| ARouter (Alibaba) is the app's activity navigation system (74 call sites) — not a removable Chinese SDK | **KEEP ARouter** (`com/alibaba/android/arouter/`). It's infrastructure, not bloat. |
| Umeng analytics actively initialized in BaseApplication.init() — removing = crash | **Stub UmengUtils.init()** before removing Umeng files, OR keep Umeng entirely |
| Alibaba OSS is the firmware download CDN, not a social SDK | **KEEP Alibaba OSS** — part of firmware upgrade capability user wants to preserve |
| targetSdkVersion 33 removes Apache HTTP library entirely — not just deprecated, GONE | **Cap at 31** (not 33). Apache HTTP legacy still works at 31. Full HTTP migration is a separate project. |
| MobSDK.init() in VisionApplication.initBusinessInThread() is dead code (never called) | Safe to remove both the method and SDK files |
| www.baidu.com connectivity check in BOTH NetUtils files | Change to google.com |
| WelcomeActivity handles runtime permissions — skipping may break camera/location | Verify HomeActivity or ShipMainActivity also request permissions; add permission requests if not |
| Java package name embedded in ARouter routes, FileProvider, SharedPreferences, content URIs | **DO NOT change package name** (`com.powervision.newvisionplus`). Only change display strings. |
| Removing manifest activities may crash ARouter if routes still reference them | Disable in manifest only (don't delete smali files). Check RouterUtil route strings. |

---

## Work Objectives

### Core Objective
Transform VisionMinus from a bloated multi-device PowerVision app into a lean, PowerDolphin-only controller that launches fast, skips dead splash screens, and runs cleanly on modern Android (API 31+).

### Concrete Deliverables
- Modified `AndroidManifest.xml` with updated launcher, removed dead activities, updated branding
- Cleaned `smali*/` directories with dead SDK files removed
- Updated `apktool.yml` with targetSdkVersion 31
- Updated string resources with "VisionMinus" branding
- Rebuilt `modified.apk` that installs and runs on Android 12+ device

### Definition of Done
- [ ] `apktool b . -o modified.apk` exits code 0
- [ ] APK installs on physical device without errors
- [ ] App launches directly (no 5-second splash delay)
- [ ] `adb logcat *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"` returns empty during use
- [ ] Google Maps loads in dolphin controller
- [ ] App displays "VisionMinus" as its name

### Must Have
- PowerDolphin controller functionality preserved (connection, camera, motors, telemetry, maps)
- Login bypass preserved (SharedPreferencesUtils.getBoolean("isLogin") → true)
- Media gallery functional
- Firmware upgrade code present
- Google Maps working in ShipMainActivity
- Builds successfully with apktool

### Must NOT Have (Guardrails)
- **DO NOT** change the Java package name (`com.powervision.newvisionplus`) — only display strings
- **DO NOT** delete Tencent Bugly files (`com/tencent/bugly/`) — crash reporting, actively initialized
- **DO NOT** delete ARouter files (`com/alibaba/android/arouter/`) — activity navigation system
- **DO NOT** delete Umeng files without stubbing `UmengUtils.init()` — actively initialized
- **DO NOT** delete Alibaba OSS files — firmware download CDN
- **DO NOT** set targetSdkVersion higher than 31 — Apache HTTP removed in 33
- **DO NOT** modify `BaseApplication.smali` init() method chain without understanding all 11 init calls
- **DO NOT** modify or touch `lib/` native .so files
- **DO NOT** modify the login bypass in SharedPreferencesUtils
- **DO NOT** change network IPs/ports (192.168.x.x, port 22222)
- **DO NOT** delete smali files for non-dolphin activities (manifest-disable only in this plan)
- **DO NOT** remove any class referenced from JNI bridge files (JniDl01Native, etc.)
- **DO NOT** delete resource XML entries without confirming all R$id references are also handled
- **DO NOT** add unnecessary abstractions, documentation files, or "improvements" beyond the stated scope
- **ALWAYS** create `.bak` backup of every file before modification
- **ALWAYS** build-verify after every batch of changes

---

## Verification Strategy (MANDATORY)

> **UNIVERSAL RULE: ZERO HUMAN INTERVENTION**
>
> ALL tasks in this plan MUST be verifiable WITHOUT any human action.
> The executing agent verifies via `adb logcat`, build commands, and Bash tools.

### Test Decision
- **Infrastructure exists**: NO (decompiled Smali APK — no test framework possible)
- **Automated tests**: None (Smali bytecode, not compilable Java source)
- **Framework**: N/A

### Agent-Executed QA Scenarios (MANDATORY — ALL tasks)

Every task uses this verification pattern:

**Build Gate** (after every change batch):
```
Tool: Bash
Steps:
  1. apktool b . -o modified.apk
  2. Assert: exit code 0
  3. Assert: modified.apk exists and size > 5MB
```

**Install Gate** (after build passes — for integration tasks):
```
Tool: Bash
Steps:
  1. jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-debug-key.keystore modified.apk alias_name
  2. adb install -r modified.apk
  3. Assert: output contains "Success"
```

**Crash Gate** (after install — for integration tasks):
```
Tool: Bash (interactive_bash for launch)
Steps:
  1. adb shell am start -n com.powervision.newvisionplus/.home.ui.activity.HomeActivity
  2. Wait 5 seconds
  3. adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"
  4. Assert: empty output (no crashes)
```

---

## Execution Strategy

### Parallel Execution Waves

```
Wave 0 (MUST COMPLETE FIRST — Gate for everything):
└── Task 0: Verify current build & create safety baseline

Wave 1 (After Wave 0):
└── Task 1: Skip splash — change launcher to HomeActivity

Wave 2 (After Task 1 verified):
├── Task 2: Remove Chinese social SDKs (ShareSDK, Mob, QQ social, Weibo)
├── Task 3: Remove Chinese map references (Gaode/Amap/Baidu)
├── Task 4: Disable non-PowerDolphin activities in manifest
└── Task 5: Fix www.baidu.com connectivity check → google.com

Wave 3 (After Wave 2):
├── Task 6: Rebrand to "VisionMinus"
├── Task 7: Update targetSdkVersion to 31
└── Task 8: Optimize Google Maps loading

Wave 4 (Final):
└── Task 9: Full integration build, sign, install, smoke test

Critical Path: Task 0 → Task 1 → Task 2 → Task 9
Parallel Speedup: ~30% faster than sequential (Wave 2 tasks are independent)
```

### Dependency Matrix

| Task | Depends On | Blocks | Can Parallelize With |
|------|------------|--------|---------------------|
| 0 | None | 1, 2, 3, 4, 5, 6, 7, 8 | None (gate) |
| 1 | 0 | 9 | None (quick, do first) |
| 2 | 0 | 9 | 3, 4, 5 |
| 3 | 0 | 9 | 2, 4, 5 |
| 4 | 0 | 9 | 2, 3, 5 |
| 5 | 0 | 9 | 2, 3, 4 |
| 6 | 0 | 9 | 7, 8 |
| 7 | 0 | 9 | 6, 8 |
| 8 | 0 | 9 | 6, 7 |
| 9 | 1, 2, 3, 4, 5, 6, 7, 8 | None | None (final) |

### Agent Dispatch Summary

| Wave | Tasks | Recommended Agents |
|------|-------|--------------------|
| 0 | 0 | task(category="quick", load_skills=[], run_in_background=false) |
| 1 | 1 | task(category="quick", load_skills=[], run_in_background=false) |
| 2 | 2, 3, 4, 5 | dispatch parallel: task(category="unspecified-low") each |
| 3 | 6, 7, 8 | dispatch parallel: task(category="unspecified-low") each |
| 4 | 9 | task(category="unspecified-high", load_skills=[], run_in_background=false) |

---

## TODOs

- [x] 0. Verify Current Build & Create Safety Baseline

  **What to do**:
  - Run `apktool b . -o modified.apk` to verify the app currently builds
  - If build fails, diagnose and fix the build error FIRST before proceeding
  - Create a git tag or snapshot of the current working state: `git tag pre-modernization`
  - Record the current APK size for comparison
  - Verify keystore exists: `ls my-debug-key.keystore`
  - If keystore missing, create one: `keytool -genkey -v -keystore my-debug-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000`

  **Must NOT do**:
  - Do not modify any files
  - Do not proceed to other tasks if build fails

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Single verification command, no code changes
  - **Skills**: []
    - No special skills needed — just bash commands
  - **Skills Evaluated but Omitted**:
    - `git-master`: Could use for tagging, but standard git commands suffice

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Wave 0 (solo)
  - **Blocks**: ALL other tasks
  - **Blocked By**: None

  **References**:

  **Pattern References**:
  - `AGENTS.md:Building` — Build and signing commands

  **API/Type References**:
  - `apktool.yml` — Current build configuration and version info

  **Acceptance Criteria**:

  ```
  Scenario: APKTool builds the current codebase successfully
    Tool: Bash
    Preconditions: apktool installed, repo at current state
    Steps:
      1. Run: apktool b . -o modified.apk
      2. Assert: exit code is 0
      3. Assert: modified.apk exists
      4. Run: ls -la modified.apk
      5. Assert: file size > 5MB
    Expected Result: APK builds without errors
    Evidence: Build output captured, file size recorded

  Scenario: Git safety baseline created
    Tool: Bash
    Steps:
      1. Run: git status (check for uncommitted changes)
      2. Run: git tag pre-modernization (or git stash if dirty)
      3. Assert: tag exists via git tag -l pre-modernization
    Expected Result: Rollback point established
    Evidence: git log --oneline -1 output captured

  Scenario: Build fails — diagnose and report
    Tool: Bash
    Preconditions: apktool b fails with non-zero exit
    Steps:
      1. Capture full error output
      2. Identify the specific error (resource conflict, smali syntax, manifest issue)
      3. Fix the build error
      4. Re-run apktool b . -o modified.apk
      5. Assert: exit code 0
    Expected Result: Build fixed before proceeding
    Evidence: Error output and fix documented
  ```

  **Commit**: YES
  - Message: `chore: verify build baseline and create pre-modernization tag`
  - Files: None (tag only, or build fix if needed)
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 1. Skip Splash Screen — Launch Directly to HomeActivity

  **What to do**:
  - Backup `AndroidManifest.xml` to `AndroidManifest.xml.bak`
  - In `AndroidManifest.xml`: Move the LAUNCHER intent-filter from `WelcomeActivity` to `HomeActivity`
  - Specifically: Remove `<intent-filter>` with `MAIN`/`LAUNCHER` from the `WelcomeActivity` `<activity>` tag
  - Add `<intent-filter><action android:name="android.intent.action.MAIN"/><category android:name="android.intent.category.LAUNCHER"/></intent-filter>` to the `HomeActivity` `<activity>` tag
  - Verify HomeActivity handles runtime permissions — check if it requests CAMERA, LOCATION, STORAGE permissions
  - If HomeActivity does NOT request permissions: check if `ShipMainActivity` requests them. If neither does, add a permission check to the HomeActivity smali entry point (or keep WelcomeActivity as a minimal permission-requesting launcher that immediately forwards to HomeActivity after permissions granted)
  - Build and verify

  **Must NOT do**:
  - Do not delete WelcomeActivity smali files (conservative approach)
  - Do not modify the HomeActivity smali code unless needed for permissions
  - Do not change ARouter routing paths

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Single manifest edit + permission verification
  - **Skills**: []
    - No special skills needed
  - **Skills Evaluated but Omitted**:
    - `frontend-ui-ux`: Not relevant — no UI design work

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Wave 1 (solo — quick win, proves workflow)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `AndroidManifest.xml:36-41` — Current WelcomeActivity with LAUNCHER intent-filter
  - `AndroidManifest.xml:97-102` — Current HomeActivity definition (already has USB_ACCESSORY intent-filter)
  - `smali_classes4/com/powervision/newvisionplus/WelcomeActivity.smali` — Current splash activity (check permission request code)
  - `smali_classes4/com/powervision/newvisionplus/WelcomeActivity$WelcomeHandler.smali` — Handler that navigates to HomeActivity via ARouter after 5-second delay

  **Why Each Reference Matters**:
  - AndroidManifest.xml:36-41 — This is what we're editing: moving the LAUNCHER filter
  - AndroidManifest.xml:97-102 — This is the target: HomeActivity needs to receive the LAUNCHER filter
  - WelcomeActivity.smali — Check if it requests runtime permissions that HomeActivity doesn't
  - WelcomeHandler.smali — Understand the ARouter navigation path to ensure HomeActivity can be entered directly

  **Acceptance Criteria**:

  ```
  Scenario: App launches directly to HomeActivity (no splash delay)
    Tool: Bash
    Preconditions: Modified APK built and installed
    Steps:
      1. adb shell am force-stop com.powervision.newvisionplus
      2. adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity
      3. Wait 3 seconds
      4. adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"
      5. Assert: empty output
      6. adb shell dumpsys activity activities | grep "mResumedActivity"
      7. Assert: output contains "HomeActivity"
    Expected Result: HomeActivity launches without crash, no 5-second splash delay
    Evidence: logcat output captured, activity dump captured

  Scenario: Build succeeds after manifest change
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Clean build
    Evidence: Build output captured
  ```

  **Commit**: YES
  - Message: `feat: skip splash screen — launch directly to HomeActivity`
  - Files: `AndroidManifest.xml`
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 2. Remove Chinese Social SDKs (ShareSDK, Mob, QQ Social, Weibo)

  **What to do**:
  - **Step 1: Map what's safe to remove** by grepping for `invoke` references from `com/powervision/` code to each SDK
  - **Step 2: Remove the following SDK directories** (these have ZERO references from powervision code based on Metis analysis):
    - `smali/cn/sharesdk/` — ShareSDK framework (WeChat, QQ, Weibo, Twitter, Line, OneKeyShare)
    - `smali/com/mob/` — Mob analytics SDK
    - `smali/cn/smssdk/` — SMS SDK (if exists)
    - Remove from ALL smali_classes* directories where these appear
  - **Step 3: Remove QQ social SDK files** (confirmed zero references from powervision code):
    - `smali*/com/tencent/connect/` — QQ connect
    - `smali*/com/tencent/open/` — QQ open platform  
    - `smali*/com/tencent/tauth/` — QQ auth
  - **Step 4: KEEP these — DO NOT REMOVE**:
    - `smali*/com/tencent/bugly/` — Crash reporting (actively initialized in BaseApplication)
    - `smali*/com/alibaba/android/arouter/` — Activity navigation (74 call sites)
  - **Step 5: Remove dead init code**:
    - In `VisionApplication.smali`: The `initBusinessInThread()` method contains `MobSDK.init()` — this method is NEVER CALLED (dead code). Remove or stub it.
    - Remove `VisionApplication$1.smali` if it's the thread that calls `initBusinessInThread()`
  - **Step 6: Clean AndroidManifest.xml** — remove entries for:
    - `com.mob.guard.MobTranPullUpActivity`
    - `com.mob.guard.MobTranPullLockActivity`
    - `com.mob.guard.MobGuardPullUpService`
    - `com.mob.MobACService`
    - `com.mob.tools.MobUIShell`
    - `cn.sharesdk.tencent.qq.ReceiveActivity`
    - `com.tencent.tauth.AuthActivity`
    - `com.tencent.connect.common.AssistActivity`
    - `cn.sharesdk.line.LineHandlerActivity`
    - Activity-alias `.lineapi.LineAuthenticationCallbackActivity`
    - `cn.sharesdk.wechat.utils.WechatHandlerActivity`
    - Activity-alias `.wxapi.WXEntryActivity`
    - `cn.sharesdk.framework.loopshare.RestoreTempActivity`
    - `cn.sharesdk.loopshare.LoopShareActivity`
    - `com.lewis.share.activity.ShareActivity`
    - MobProvider
    - ShareSDKFileProvider
    - Remove `mob_guard_version` meta-data
    - Remove `Mob-AppKey` and `Mob-AppSecret` meta-data
  - **Step 7: Build and verify**

  **Must NOT do**:
  - Do NOT remove `com/tencent/bugly/` — it's crash reporting, actively initialized
  - Do NOT remove `com/alibaba/android/arouter/` — it's the navigation system
  - Do NOT modify `BaseApplication.smali` init() method (Bugly/ARouter/Umeng init calls live there)
  - Do NOT remove resource files referenced by remaining code (check R$id before removing)

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Bulk file deletion and manifest editing — straightforward but large scope
  - **Skills**: []
    - No special skills needed — file operations and grep
  - **Skills Evaluated but Omitted**:
    - `security-audit`: Not relevant — we're removing code, not auditing

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 3, 4, 5)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `AndroidManifest.xml:47-68` — Mob guard activities/services to remove
  - `AndroidManifest.xml:207-216` — MobProvider and ShareSDK provider entries
  - `AndroidManifest.xml:217-246` — QQ, Line, WeChat, ShareSDK activities to remove
  - `smali_classes4/com/powervision/newvisionplus/VisionApplication.smali` — Contains dead `initBusinessInThread()` method with MobSDK.init()
  - `smali_classes3/com/powervision/base/base/BaseApplication.smali` — Contains init() method with Bugly, ARouter, Umeng initialization (DO NOT TOUCH)

  **Why Each Reference Matters**:
  - AndroidManifest.xml entries — Must be removed or app will crash looking for deleted classes on certain intents
  - VisionApplication.smali — Dead init code that references Mob SDK; remove the dead method
  - BaseApplication.smali — Shows which SDKs are ACTIVELY USED (Bugly, ARouter, Umeng) and must be kept

  **Acceptance Criteria**:

  ```
  Scenario: Build succeeds after SDK removal
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
      3. Assert: modified.apk size is smaller than pre-removal baseline
    Expected Result: Clean build, smaller APK
    Evidence: Build output, file size comparison

  Scenario: No remaining references to removed SDKs in manifest
    Tool: Bash
    Steps:
      1. grep -c "sharesdk\|com.mob\|MobGuard\|MobUIShell\|tencent.tauth\|tencent.connect\|tencent.open" AndroidManifest.xml
      2. Assert: output is 0
    Expected Result: Manifest clean of removed SDK references
    Evidence: grep output

  Scenario: Preserved SDKs still referenced correctly
    Tool: Bash
    Steps:
      1. ls smali_classes5/com/tencent/bugly/ (or wherever Bugly lives)
      2. Assert: directory exists with files
      3. ls smali*/com/alibaba/android/arouter/
      4. Assert: directory exists with files
    Expected Result: Bugly and ARouter untouched
    Evidence: directory listings
  ```

  **Commit**: YES
  - Message: `refactor: remove dead Chinese social SDKs (ShareSDK, Mob, QQ social, Weibo)`
  - Files: `AndroidManifest.xml`, deleted smali directories
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 3. Remove Chinese Map References (Gaode/Amap/Baidu)

  **What to do**:
  - Backup all files before modifying
  - **Step 1: Remove Amap service** from AndroidManifest.xml:
    - Remove `<service android:name="com.amap.api.location.APSService"/>`
    - Remove `<meta-data android:name="com.amap.api.v2.apikey" .../>` (line 152)
  - **Step 2: Remove Amap SDK smali files** (if they exist in smali_classes* directories):
    - `smali*/com/amap/` — Amap SDK classes
    - Verify first: grep for `invoke.*com/amap` from `com/powervision/` code to ensure no active usage
  - **Step 3: Clean MapUtil** — `smali_classes2/com/powervision/aircraft/utils/MapUtil.smali`:
    - This contains Baidu Map and Amap navigation intents (amap://route, baidumap://direction, autonavi.minimap package check)
    - This file is in the `aircraft` package (flying drones), NOT the `ship` (dolphin) package
    - Since aircraft activities will be disabled in Task 4, MapUtil references become dead code
    - Leave MapUtil for now (conservative approach) — it won't be called with aircraft disabled
  - **Step 4: Handle gaode layout IDs**:
    - The `gaode_mapview`, `gaode_layer_standard`, `gaode_layer_satellite` IDs in layouts are used by NationMapView and ShipMainActivity
    - **DO NOT remove these IDs** — they're just names, not actual Gaode SDK usage
    - Optionally: rename them in a future phase (cosmetic, not functional)
  - **Step 5: Remove Amap test layout**:
    - `res/layout/testgeoac.xml` references `com.amap.api.maps.TextureMapView` — remove this test layout
    - Check if it's referenced anywhere; if not, safe to delete
  - **Step 6: Build and verify**

  **Must NOT do**:
  - Do NOT remove `gaode_mapview`, `gaode_layer_standard`, `gaode_layer_satellite` resource IDs — they're used by NationMapView/ShipMainActivity
  - Do NOT modify NationMapView.smali — it already uses Google Maps
  - Do NOT remove Google Maps configuration or API key

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Targeted file removal and manifest cleanup
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - `frontend-ui-ux`: Not relevant — layout IDs are kept as-is

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 2, 4, 5)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `AndroidManifest.xml:152` — Amap API key meta-data to remove
  - `AndroidManifest.xml:154` — Amap location service to remove
  - `res/layout/gcs_ship_main_layout.xml:11` — `gaode_mapview` ID used by NationMapView (DO NOT REMOVE)
  - `res/layout/ship_popup_layer_switch.xml:6-7` — `gaode_layer_standard/satellite` IDs (DO NOT REMOVE)
  - `res/layout/testgeoac.xml:4` — Amap TextureMapView test layout (REMOVE)
  - `smali_classes3/com/powervision/condition/view/NationMapView.smali` — Already uses Google Maps directly, confirmed

  **Why Each Reference Matters**:
  - AndroidManifest entries must be removed to prevent Amap service from running
  - Layout files show which IDs are actively used (gaode_ names) and must be preserved despite the name
  - testgeoac.xml is a test layout for Amap that's safe to remove
  - NationMapView confirms the abstraction already uses Google Maps — no functional change needed

  **Acceptance Criteria**:

  ```
  Scenario: Build succeeds after Chinese map removal
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Clean build
    Evidence: Build output

  Scenario: Amap references removed from manifest
    Tool: Bash
    Steps:
      1. grep -c "amap\|APSService" AndroidManifest.xml
      2. Assert: output is 0
    Expected Result: No Amap entries in manifest
    Evidence: grep output

  Scenario: NationMapView layout IDs preserved
    Tool: Bash
    Steps:
      1. grep "gaode_mapview" res/layout/gcs_ship_main_layout.xml
      2. Assert: match found (ID preserved)
    Expected Result: Ship layout intact
    Evidence: grep output
  ```

  **Commit**: YES
  - Message: `refactor: remove Chinese map alternatives (Amap/Gaode service and SDK)`
  - Files: `AndroidManifest.xml`, removed smali/res files
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 4. Disable Non-PowerDolphin Activities in Manifest

  **What to do**:
  - Backup `AndroidManifest.xml`
  - **Disable (set `android:enabled="false"`) these activity entries** — do NOT delete the entries, just disable them:
    - Aircraft (flying drone) activities:
      - `com.powervision.aircraft.ui.activity.AirCraftControlActivity`
      - `com.powervision.aircraft.ui.activity.AircraftSelfCheckActivity`
      - `com.powervision.aircraft.ui.activity.FindAircraftActivity`
      - `com.powervision.aircraft.ui.activity.IMUCalibrationStartActivity`
      - `com.powervision.aircraft.ui.activity.MagCalibrationStartActivity`
      - `com.powervision.aircraft.ui.activity.NewIMUCalibrationActivity`
    - Handheld device activities:
      - `com.powervision.handheld.ui.activity.NewHandheldDeviceActivity`
      - `com.powervision.handheld.ui.activity.TestActivity`
    - Login/registration activities (servers dead):
      - `com.powervision.login.ui.activity.CreateLoginActivity`
      - `com.powervision.login.ui.activity.ServiceAgreementActivity`
      - `com.powervision.login.ui.activity.InputVerifyCodeActivity`
      - `com.powervision.login.ui.activity.SelectCountryActivity`
    - User management activities (servers dead):
      - `com.powervision.user.ui.activity.SettingActivity`
      - `com.powervision.user.ui.activity.ModifyPersonalInfoActivity`
      - `com.powervision.user.ui.activity.PhoneBindActivity`
      - `com.powervision.user.ui.activity.EmailBindActivity`
      - `com.powervision.user.ui.activity.UserRealNameIntroductionActivity`
      - `com.powervision.user.ui.activity.UserRealNameRegisterActivity`
      - `com.powervision.user.ui.activity.UserRealNameNewAddActivity`
      - `com.powervision.user.ui.activity.UserRealNameNewAddSrActivity`
    - Service/support activity (server-dependent):
      - `com.powervision.service.MainActivity`
      - `com.powervision.service.ui.activity.ServiceImageActivity`
  - **Check ARouter route definitions**: Grep `smali*/com/powervision/` for route strings pointing to disabled activities. If found, verify calling code handles null/missing gracefully.
  - **Build and verify**

  **Must NOT do**:
  - Do NOT delete the `<activity>` entries — only add `android:enabled="false"`
  - Do NOT delete the corresponding smali files (conservative approach)
  - Do NOT disable any `ship` package activities
  - Do NOT disable `HomeActivity`, any `Guide*` activity, `Media*` activities, or `Firmware*` activities

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Manifest editing only — add enabled="false" attributes
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - None relevant

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 2, 3, 5)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `AndroidManifest.xml:71-80` — Aircraft activities to disable
  - `AndroidManifest.xml:114-117` — Login activities to disable
  - `AndroidManifest.xml:129-137` — User management activities to disable
  - `AndroidManifest.xml:138-139` — Service activities to disable
  - `AndroidManifest.xml:140-145` — Handheld activities to disable

  **Why Each Reference Matters**:
  - Each line range shows the exact activities to add `android:enabled="false"` to
  - Disabling in manifest prevents launch without deleting code (safe, reversible)

  **Acceptance Criteria**:

  ```
  Scenario: Build succeeds after disabling activities
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Clean build
    Evidence: Build output

  Scenario: Disabled activities have enabled=false
    Tool: Bash
    Steps:
      1. grep "AirCraftControlActivity" AndroidManifest.xml
      2. Assert: output contains 'enabled="false"'
      3. grep "CreateLoginActivity" AndroidManifest.xml
      4. Assert: output contains 'enabled="false"'
    Expected Result: Activities disabled in manifest
    Evidence: grep output

  Scenario: Ship activities still enabled
    Tool: Bash
    Steps:
      1. grep "ShipMainActivity" AndroidManifest.xml
      2. Assert: output does NOT contain 'enabled="false"'
    Expected Result: Dolphin controller still active
    Evidence: grep output
  ```

  **Commit**: YES
  - Message: `refactor: disable non-PowerDolphin activities (aircraft, handheld, login, user)`
  - Files: `AndroidManifest.xml`
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 5. Fix Connectivity Check — baidu.com → google.com

  **What to do**:
  - Backup both NetUtils files
  - **File 1**: `smali_classes3/com/powervision/gcs/utils/NetUtils.smali`
    - Find the string `"www.baidu.com"` and replace with `"www.google.com"`
  - **File 2**: `smali_classes3/com/powervision/base/utils/NetUtils.smali`
    - Find the string `"www.baidu.com"` and replace with `"www.google.com"`
  - Build and verify

  **Must NOT do**:
  - Do not change anything else in these files
  - Do not modify the ping method logic, only the target hostname

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Two simple string replacements
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - None relevant

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 2 (with Tasks 2, 3, 4)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `smali_classes3/com/powervision/gcs/utils/NetUtils.smali` — Contains `www.baidu.com` string for connectivity ping
  - `smali_classes3/com/powervision/base/utils/NetUtils.smali` — Second copy with same `www.baidu.com` string

  **Why Each Reference Matters**:
  - These are the ONLY two files with the connectivity check target
  - In the US, pinging baidu.com will be slow or fail, making the app think there's no internet

  **Acceptance Criteria**:

  ```
  Scenario: Baidu references replaced in both files
    Tool: Bash
    Steps:
      1. grep -r "www.baidu.com" smali_classes3/com/powervision/
      2. Assert: no matches
      3. grep -r "www.google.com" smali_classes3/com/powervision/
      4. Assert: 2 matches (one per NetUtils file)
    Expected Result: Both NetUtils files updated
    Evidence: grep output

  Scenario: Build succeeds
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Clean build
    Evidence: Build output
  ```

  **Commit**: YES (groups with Task 3)
  - Message: `fix: change connectivity check from baidu.com to google.com for US use`
  - Files: `smali_classes3/com/powervision/gcs/utils/NetUtils.smali`, `smali_classes3/com/powervision/base/utils/NetUtils.smali`
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 6. Rebrand to "VisionMinus"

  **What to do**:
  - **Step 1: Update app name string** — find `@string/pv_app_name` in `res/values/strings.xml` and change value to "VisionMinus"
  - Also update in ALL locale directories: `res/values-*/strings.xml` (search for `pv_app_name`)
  - **Step 2: Update manifest label** — `AndroidManifest.xml` line 35: `android:label="@string/pv_app_name"` (this already references the string, so updating the string resource is sufficient)
  - **Step 3: Search for other PowerVision branding strings**:
    - Grep `res/values*/strings.xml` for "PowerVision", "Vision+", "Vision Plus"
    - Replace visible user-facing strings with "VisionMinus" equivalents
    - Do NOT change internal/technical strings (API paths, package names, etc.)
  - **Step 4: DO NOT change**:
    - Java package name (`com.powervision.newvisionplus`) — breaks everything
    - Manifest package attribute
    - FileProvider authorities
    - ARouter route paths
    - Any `const-string` in smali that's a package name or class path

  **Must NOT do**:
  - Do NOT rename the Java package (`com.powervision.newvisionplus`)
  - Do NOT change any internal identifiers, only user-visible display strings
  - Do NOT change the launcher icon file names (just the label text)

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: String resource editing across locale files
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - `frontend-ui-ux`: Not relevant — text changes only, no visual design

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 3 (with Tasks 7, 8)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `AndroidManifest.xml:35` — `android:label="@string/pv_app_name"` — references the app name string
  - `res/values/strings.xml` — Contains `pv_app_name` string definition

  **Why Each Reference Matters**:
  - The manifest already uses a string resource for the app name, so we only need to update the string value
  - Multiple locale directories may have translations that also need updating

  **Acceptance Criteria**:

  ```
  Scenario: App name changed to VisionMinus
    Tool: Bash
    Steps:
      1. grep "pv_app_name" res/values/strings.xml
      2. Assert: value is "VisionMinus"
    Expected Result: App name string updated
    Evidence: grep output

  Scenario: No remaining "Vision+" or "PowerVision" in user-facing strings
    Tool: Bash
    Steps:
      1. grep -ri "Vision+" res/values*/strings.xml (escape the +)
      2. grep -ri "PowerVision" res/values*/strings.xml
      3. Assert: no user-facing display strings remain (internal/technical strings OK)
    Expected Result: Branding cleaned
    Evidence: grep output

  Scenario: Build succeeds
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Clean build
    Evidence: Build output
  ```

  **Commit**: YES
  - Message: `feat: rebrand app to VisionMinus`
  - Files: `res/values*/strings.xml`
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 7. Update targetSdkVersion to 31

  **What to do**:
  - Backup `apktool.yml` and `AndroidManifest.xml`
  - **Step 1: Update apktool.yml**:
    - Change `targetSdkVersion: 29` to `targetSdkVersion: 31`
  - **Step 2: Update AndroidManifest.xml**:
    - Change `android:compileSdkVersion="30"` to `android:compileSdkVersion="31"`
    - Change `compileSdkVersionCodename="11"` to `compileSdkVersionCodename="12"` 
    - Change `platformBuildVersionCode="30"` to `platformBuildVersionCode="31"`
    - Change `platformBuildVersionName="11"` to `platformBuildVersionName="12"`
  - **Step 3: Verify Apache HTTP legacy** — the `<uses-library android:name="org.apache.http.legacy" android:required="false"/>` entry at AndroidManifest.xml:70 should remain. At API 31, Apache HTTP legacy is deprecated but still available. At API 33 it's removed entirely — this is why we cap at 31.
  - **Step 4: Add BLUETOOTH_CONNECT permission** (required for API 31+):
    - Add `<uses-permission android:name="android.permission.BLUETOOTH_CONNECT"/>` to manifest
  - **Step 5: Verify network security config** — `res/xml/network_security_config.xml` must allow cleartext traffic to drone IPs (192.168.x.x). Read the file to confirm.
  - **Step 6: Build and verify**

  **Must NOT do**:
  - Do NOT set targetSdkVersion higher than 31
  - Do NOT remove the Apache HTTP legacy uses-library declaration
  - Do NOT change storage permission model (requestLegacyExternalStorage=true still works at 31)
  - Do NOT add scoped storage migration (that's a separate project)

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Config file updates with specific version numbers
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - None relevant

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 3 (with Tasks 6, 8)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `apktool.yml:9-10` — sdkInfo with minSdkVersion 21 and targetSdkVersion 29
  - `AndroidManifest.xml:2` — compileSdkVersion="30" and platformBuildVersionCode="30"
  - `AndroidManifest.xml:70` — Apache HTTP legacy library declaration (KEEP)
  - `res/xml/network_security_config.xml` — Network security config for cleartext traffic

  **Why Each Reference Matters**:
  - apktool.yml is the primary SDK version config for APKTool builds
  - AndroidManifest attributes must match for consistency
  - Apache HTTP legacy MUST remain at API 31 — removing it breaks networking
  - Network security config must allow cleartext to drone WiFi IPs

  **Acceptance Criteria**:

  ```
  Scenario: SDK version updated to 31
    Tool: Bash
    Steps:
      1. grep "targetSdkVersion" apktool.yml
      2. Assert: value is 31
      3. grep "compileSdkVersion" AndroidManifest.xml
      4. Assert: value is 31
    Expected Result: SDK version bumped
    Evidence: grep output

  Scenario: Apache HTTP legacy preserved
    Tool: Bash
    Steps:
      1. grep "org.apache.http.legacy" AndroidManifest.xml
      2. Assert: match found
    Expected Result: Legacy HTTP library still declared
    Evidence: grep output

  Scenario: Build succeeds
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Clean build
    Evidence: Build output
  ```

  **Commit**: YES
  - Message: `feat: update targetSdkVersion to 31 for modern Android compatibility`
  - Files: `apktool.yml`, `AndroidManifest.xml`
  - Pre-commit: `apktool b . -o modified.apk`

---

- [ ] 8. Optimize Google Maps Loading (DEFERRED — replaced with Lowrance FS7 bathymetric overlay, separate project)

  **What to do**:
  - **Step 1: Investigate current map initialization** — Read `NationMapView.smali`'s `initMap(Context)` method to understand initialization flow
  - **Step 2: Check MapsInitializer** — Find where `MapsInitializer.initialize()` is called. If it's called synchronously on the UI thread, this is likely the performance bottleneck.
  - **Step 3: If synchronous initialization found**: Move the `MapsInitializer.initialize()` call to happen earlier (e.g., in `BaseApplication.init()` or `HomeActivity.onCreate()`) so the map tiles are pre-cached by the time ShipMainActivity opens
  - **Step 4: Check Google Maps API key** — The key `AIzaSyDHAiRxnUMKQNO-McTPGYN5Pz6VUFahOjc` is hardcoded in AndroidManifest.xml:153. Verify it's still valid and not rate-limited. Consider whether the user needs to use their own key.
  - **Step 5: Check for Renderer preference** — Modern Google Maps SDK supports `MapsInitializer.Renderer.LATEST` for better performance. If the current code doesn't specify a renderer, adding this preference can improve load times.
  - **Step 6: Build and verify**

  **Must NOT do**:
  - Do NOT remove the Google Maps API key
  - Do NOT modify NationMapView's map interaction logic (route drawing, markers, etc.)
  - Do NOT change the map view type or layout structure
  - Do NOT replace Google Maps with another map provider

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Performance investigation and targeted Smali edits
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - `frontend-ui-ux`: Not relevant — backend map initialization

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 3 (with Tasks 6, 7)
  - **Blocks**: Task 9
  - **Blocked By**: Task 0

  **References**:

  **Pattern References**:
  - `smali_classes3/com/powervision/condition/view/NationMapView.smali` — Contains `init()` and `initMap(Context)` methods (search for `.method` directives)
  - `smali/com/google/android/gms/maps/MapsInitializer.smali` — Maps initialization API
  - `AndroidManifest.xml:153` — Google Maps API key

  **Why Each Reference Matters**:
  - NationMapView.init() shows the initialization chain
  - initMap(Context) shows when the map is actually created (likely blocking UI thread)
  - MapsInitializer shows what SDK initialization options are available
  - API key validity affects tile loading speed

  **Acceptance Criteria**:

  ```
  Scenario: Map initialization investigated and optimized
    Tool: Bash
    Steps:
      1. apktool b . -o modified.apk
      2. Assert: exit code 0
    Expected Result: Build passes with any map optimizations applied
    Evidence: Build output, investigation notes

  Scenario: Google Maps API key still present
    Tool: Bash
    Steps:
      1. grep "com.google.android.geo.API_KEY" AndroidManifest.xml
      2. Assert: match found with API key value
    Expected Result: Maps API key preserved
    Evidence: grep output
  ```

  **Commit**: YES
  - Message: `perf: optimize Google Maps initialization for faster loading`
  - Files: Modified smali files (if changes made)
  - Pre-commit: `apktool b . -o modified.apk`

---

- [x] 9. Full Integration Build, Sign, Install & Smoke Test (build+sign verified; device test pending user)

  **What to do**:
  - **Step 1: Clean build** — `rm -f modified.apk && apktool b . -o modified.apk`
  - **Step 2: Sign** — `jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-debug-key.keystore modified.apk alias_name`
  - **Step 3: Install** — `adb install -r modified.apk`
  - **Step 4: Launch and crash check**:
    - `adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity`
    - Wait 10 seconds
    - `adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"` — must be empty
  - **Step 5: Verify app name** — `adb shell dumpsys package com.powervision.newvisionplus | grep "applicationLabel"` — should show "VisionMinus"
  - **Step 6: Verify no splash** — App should launch directly to HomeActivity without delay
  - **Step 7: Navigate to dolphin controller** — Use `adb logcat` to monitor as user navigates to ShipMainActivity
  - **Step 8: Check map loading** — `adb logcat | grep -i "onMapReady"` — should fire when map loads
  - **Step 9: Record final APK size** — compare to baseline from Task 0
  - **Step 10: Create git tag** — `git tag post-modernization-v1`

  **Must NOT do**:
  - Do not make any code changes in this task — this is verification only
  - If issues found, create a new task to fix them

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
    - Reason: Multi-step integration verification requiring device interaction
  - **Skills**: []
  - **Skills Evaluated but Omitted**:
    - `playwright`: Not relevant — this is ADB device testing, not browser

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Wave 4 (solo — final)
  - **Blocks**: None
  - **Blocked By**: ALL previous tasks (1-8)

  **References**:

  **Pattern References**:
  - `AGENTS.md:Building` — Build, sign, install commands
  - `AndroidManifest.xml:97` — HomeActivity (expected launch target)

  **Why Each Reference Matters**:
  - AGENTS.md has the canonical build/sign/install workflow
  - AndroidManifest HomeActivity entry confirms the expected launcher

  **Acceptance Criteria**:

  ```
  Scenario: Full build, sign, install succeeds
    Tool: Bash
    Preconditions: All previous tasks completed
    Steps:
      1. rm -f modified.apk
      2. apktool b . -o modified.apk
      3. Assert: exit code 0
      4. jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-debug-key.keystore modified.apk alias_name
      5. Assert: exit code 0
      6. adb install -r modified.apk
      7. Assert: output contains "Success"
    Expected Result: APK built, signed, installed
    Evidence: All command outputs captured

  Scenario: App launches without crash
    Tool: Bash
    Steps:
      1. adb shell am force-stop com.powervision.newvisionplus
      2. adb logcat -c
      3. adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity
      4. sleep 10
      5. adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"
      6. Assert: empty output
    Expected Result: Clean launch, no crashes
    Evidence: logcat output captured to .sisyphus/evidence/task-9-launch.txt

  Scenario: App name displays as VisionMinus
    Tool: Bash
    Steps:
      1. adb shell dumpsys package com.powervision.newvisionplus | grep -i "label\|name"
      2. Assert: output contains "VisionMinus"
    Expected Result: Rebranding visible
    Evidence: dumpsys output captured

  Scenario: APK size reduced from baseline
    Tool: Bash
    Steps:
      1. ls -la modified.apk
      2. Compare to baseline size from Task 0
      3. Assert: size is smaller (removed ~700+ files of dead SDKs)
    Expected Result: Measurable size reduction
    Evidence: Size comparison documented

  Scenario: No crash during 60-second soak
    Tool: Bash
    Steps:
      1. adb logcat -c
      2. sleep 60
      3. adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL|ANR"
      4. Assert: empty output
    Expected Result: App stable for 60 seconds
    Evidence: logcat output captured
  ```

  **Commit**: YES
  - Message: `chore: integration verification complete — tag post-modernization-v1`
  - Files: None (tag only)
  - Pre-commit: `apktool b . -o modified.apk`

---

## Commit Strategy

| After Task | Message | Key Files | Verification |
|------------|---------|-----------|--------------|
| 0 | `chore: verify build baseline and create pre-modernization tag` | (tag only) | apktool b |
| 1 | `feat: skip splash screen — launch directly to HomeActivity` | AndroidManifest.xml | apktool b + adb launch |
| 2 | `refactor: remove dead Chinese social SDKs` | AndroidManifest.xml, smali dirs | apktool b |
| 3 | `refactor: remove Chinese map alternatives` | AndroidManifest.xml, smali/res | apktool b |
| 4 | `refactor: disable non-PowerDolphin activities` | AndroidManifest.xml | apktool b |
| 5 | `fix: change connectivity check to google.com` | 2x NetUtils.smali | apktool b |
| 6 | `feat: rebrand app to VisionMinus` | res/values*/strings.xml | apktool b |
| 7 | `feat: update targetSdkVersion to 31` | apktool.yml, AndroidManifest.xml | apktool b |
| 8 | `perf: optimize Google Maps initialization` | smali files | apktool b |
| 9 | `chore: integration verification — tag post-modernization-v1` | (tag only) | full pipeline |

---

## Success Criteria

### Verification Commands
```bash
apktool b . -o modified.apk              # Expected: exit 0
adb install -r modified.apk              # Expected: "Success"
adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity  # Expected: no crash
adb logcat -d *:E | grep -E "ClassNotFound|NoClassDef|NoSuchMethod|FATAL"  # Expected: empty
```

### Final Checklist
- [ ] App launches directly to HomeActivity (no splash)
- [ ] No ClassNotFoundException or NoClassDefFoundError in logcat
- [ ] App name shows "VisionMinus"
- [ ] APK size reduced from baseline
- [ ] targetSdkVersion is 31
- [ ] No references to baidu.com in connectivity checks
- [ ] Chinese social SDK manifest entries removed
- [ ] Non-dolphin activities disabled
- [ ] Google Maps loads in ShipMainActivity
- [ ] Login bypass still works (isLogin returns true)
- [ ] All modified files have .bak backups
