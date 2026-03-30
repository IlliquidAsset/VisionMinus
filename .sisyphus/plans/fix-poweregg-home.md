# Fix PowerEgg X Showing on Home Screen

## TL;DR

> **Quick Summary**: PowerEgg X still shows on launch because Android's FragmentManager restored orphaned PVW4HomeFragment from saved state (preserved by `adb install -r`). The orphan renders on top of the correct PowerDolphin fragment. Fix by clearing app data, patching dead PVW4 connection handler, and hiding pagination dots.
> 
> **Deliverables**:
> - HomeFragment.smali: PVW4 connection handler patched (setCurrentItem(1) → setCurrentItem(0))
> - home_fragment_home.xml: Pagination dot container hidden (android:visibility="gone")
> - Fresh build installed with app data cleared
> - On-device ADB screenshot verification BEFORE reporting to user
> 
> **Estimated Effort**: Quick
> **Parallel Execution**: NO — sequential (diagnosis → fix → build → verify)
> **Critical Path**: Diagnostic → Code Fixes → Build → Install → Verify

---

## Context

### Original Request
User tested previous build. PowerEgg X still shows on launch instead of PowerDolphin. Cannot swipe to PowerDolphin page. User demands on-device verification via ADB before being asked to test.

### Root Cause (Metis-Validated)

**Orphaned Fragment Persistence** — NOT simple cache miss:

1. Old APK had 2 ViewPager pages: position 0 = AP03HomeFragment (PD), position 1 = PVW4HomeFragment (Egg X)
2. `adb install -r` preserves app data including FragmentManager saved instance state
3. On launch, FragmentManager restores **BOTH** fragments — both attached to the ViewPager container
4. New adapter has `getCount()=1`, so ViewPager's `populate()` manages position 0 but never calls `destroyItem(1)`
5. PVW4HomeFragment at tag `:1` is **orphaned** — still attached, still visible, unmanaged by ViewPager
6. PVW4 was added AFTER AP03 (higher z-order), so it renders **on top**, hiding the PowerDolphin page

**The PowerDolphin IS there — it's just hidden underneath the orphaned PowerEgg X overlay.**

### Previous Fix Status
- HomeFragmentPagerAdapter.smali: CORRECT (already modified — array size 1, only AP03HomeFragment at index 0)
- HomeActivity.smali: CORRECT (requestPermissions added, android:exported=true)
- SPHelperUtils.smali: CORRECT (disclaimer bypassed)

### Metis Review
**Identified Gaps** (addressed):
- Root cause mechanism was wrong (orphaned fragment, not cache position mismatch) — corrected in plan
- `updatePVW4ConnectStatus` lambda still targets page 1 — included as code fix
- Dot indicators still visible for 2-page setup — included as layout fix
- Build pipeline in QA used old jarsigner command — corrected to apksigner

---

## Work Objectives

### Core Objective
Ensure the home screen shows PowerDolphin (AP03HomeFragment) on launch, with no PowerEgg X overlay, no stale pagination dots, and no dead code paths that could re-break on connection events.

### Concrete Deliverables
- Patched `HomeFragment.smali` (PVW4 handler targets page 0)
- Patched `home_fragment_home.xml` (dots hidden)
- Working APK installed on device with cleared app data
- ADB screenshot proof that PowerDolphin shows correctly

### Definition of Done
- [ ] App launches showing PowerDolphin (AP03) home screen
- [ ] No PowerEgg X visible on launch
- [ ] No pagination dots at bottom of home screen
- [ ] No crashes in logcat after launch
- [ ] ADB screenshot saved as evidence

### Must Have
- Clear app data (`pm clear`) BEFORE every install to flush orphaned fragments
- ADB screenshot verification BEFORE reporting to user
- Backup of HomeFragment.smali before modification

### Must NOT Have (Guardrails)
- DO NOT modify HomeFragmentPagerAdapter.smali — it is already correct
- DO NOT delete PVW4HomeFragment.smali or its inner classes — other code references the class
- DO NOT modify AP03HomeFragment.smali — it works correctly
- DO NOT modify startConnectAnimation() — it controls dot animation, irrelevant once dots are hidden
- DO NOT modify workDotSelect() — dead code once dots are hidden; removing risks breaking access$200 synthetic accessor
- DO NOT change setOffscreenPageLimit — harmless at 2, no visible benefit from reducing
- DO NOT refactor ViewPager to ViewPager2 — massive scope creep
- DO NOT modify lib/, login bypass, network config, or native JNI bridge
- DO NOT touch HomeActivity.smali — outer navigation works fine

---

## Verification Strategy

> **UNIVERSAL RULE: ZERO HUMAN INTERVENTION**
>
> ALL verification is executed by the agent using ADB tools. The user is NOT asked to verify until the agent has confirmed success via screenshot.

### Test Decision
- **Infrastructure exists**: NO (no unit test framework for smali)
- **Automated tests**: None (not applicable to decompiled APK)
- **Framework**: N/A

### Agent-Executed QA Scenarios (MANDATORY)

**Verification Tool by Deliverable Type:**

| Type | Tool | How Agent Verifies |
|------|------|-------------------|
| **APK Build** | Bash (apktool) | Exit code 0, output contains "Built apk" |
| **On-device UI** | Bash (adb screencap + uiautomator dump) | Screenshot + UI hierarchy inspection |
| **Crash check** | Bash (adb logcat) | No FATAL EXCEPTION, no IndexOutOfBoundsException |

---

## Execution Strategy

### Sequential Pipeline (No Parallelization)

Each step depends on the previous:

```
Task 1: Diagnostic — Confirm root cause via pm clear + screenshot
    ↓
Task 2: Code fixes — Patch HomeFragment.smali + home_fragment_home.xml
    ↓
Task 3: Build + Install — apktool → zipalign → apksigner → pm clear → install
    ↓
Task 4: On-device verification — ADB screenshot + logcat + UI dump
```

---

## TODOs

- [ ] 1. Diagnostic: Confirm Orphaned Fragment Root Cause

  **What to do**:
  - Check ADB device is connected: `adb devices | grep -w "device"`
  - Clear app data to flush orphaned FragmentManager state: `adb shell pm clear com.powervision.newvisionplus`
  - Launch app: `adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity`
  - Wait 8 seconds for fragments to load
  - Take screenshot: `adb exec-out screencap -p > /tmp/diagnostic_after_clear.png`
  - Dump UI hierarchy: `adb shell uiautomator dump /sdcard/window_dump.xml && adb pull /sdcard/window_dump.xml /tmp/diagnostic_dump.xml`
  - Analyze screenshot — confirm PowerDolphin (AP03) is visible, not PowerEgg X
  - If PowerEgg X STILL shows after `pm clear`: **STOP. Root cause is different. Do NOT proceed with code fixes. Investigate AP03HomeFragment layout for PowerEgg imagery.**
  - If PowerDolphin shows: Root cause confirmed. Proceed to Task 2.

  **Must NOT do**:
  - Do NOT modify any files in this task — diagnosis only
  - Do NOT reinstall the APK — just clear data on the existing install

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Simple ADB commands, no code changes
  - **Skills**: []
    - No special skills needed — just ADB bash commands

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential — must complete before Task 2
  - **Blocks**: Tasks 2, 3, 4
  - **Blocked By**: None

  **References**:
  - `AndroidManifest.xml:71` — HomeActivity launcher declaration (package and activity class name for am start)
  - `.sisyphus/plans/visionminus-modernization.md` — Contains the full build/install pipeline commands

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Confirm pm clear flushes orphaned PVW4 fragment
    Tool: Bash (adb)
    Preconditions: Device RFCY61AS2MN connected via USB, current APK installed
    Steps:
      1. adb devices | grep -w "device"
         Assert: Output contains "RFCY61AS2MN" or at least one device line
      2. adb shell pm clear com.powervision.newvisionplus
         Assert: Output is "Success"
      3. adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity
         Assert: Output contains "Starting:" (no error)
      4. sleep 8
      5. adb exec-out screencap -p > /tmp/diagnostic_after_clear.png
         Assert: File exists and is >10KB (valid PNG)
      6. Open and analyze /tmp/diagnostic_after_clear.png
         Assert: Shows PowerDolphin UI (AP03 content — device silhouette, connect button)
         Assert: Does NOT show PowerEgg X content (drone image, different layout)
    Expected Result: After clearing data, the home screen shows PowerDolphin
    Failure Indicators: PowerEgg X still visible, or blank screen, or crash
    Evidence: /tmp/diagnostic_after_clear.png
  ```

  **Commit**: NO

---

- [ ] 2. Patch HomeFragment.smali and home_fragment_home.xml

  **What to do**:
  - Back up HomeFragment.smali: copy `smali_classes4/com/powervision/home/ui/fragment/HomeFragment.smali` to `.sisyphus/backups/HomeFragment.smali.bak`
  - Back up home_fragment_home.xml: copy `res/layout/home_fragment_home.xml` to `.sisyphus/backups/home_fragment_home.xml.bak`
  
  **Fix 1 — HomeFragment.smali: Patch updatePVW4ConnectStatus lambda**
  
  In method `lambda$updatePVW4ConnectStatus$2$HomeFragment` (around line 596-604):
  
  The current code at line 600 sets the ViewPager to page 1 (PowerEgg X — no longer exists):
  ```smali
  const/4 v0, 0x1    # page index 1 = PowerEgg X (REMOVED)
  const/4 v1, 0x0
  invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V
  ```
  
  Change to target page 0 (PowerDolphin):
  ```smali
  const/4 v0, 0x0    # VisionMinus: target page 0 (PowerDolphin only)
  const/4 v1, 0x0
  invoke-virtual {p1, v0, v1}, Lcom/powervision/base/views/NoScrollViewPager;->setCurrentItem(IZ)V
  ```

  Specifically, change line 600 from:
  ```
      const/4 v0, 0x1
  ```
  to:
  ```
      const/4 v0, 0x0    # VisionMinus: page 0 (PowerDolphin only, PowerEgg X removed)
  ```

  **Fix 2 — home_fragment_home.xml: Hide dot indicator container**
  
  On line 8, the LinearLayout `ll_home_dot_select` contains 2 pagination dots (for the old 2-page ViewPager). With only 1 page, these are meaningless.
  
  Add `android:visibility="gone"` to the LinearLayout on line 8:
  
  Change from:
  ```xml
  <LinearLayout android:gravity="center" android:orientation="horizontal" android:id="@id/ll_home_dot_select" ...>
  ```
  
  To:
  ```xml
  <LinearLayout android:gravity="center" android:orientation="horizontal" android:id="@id/ll_home_dot_select" android:visibility="gone" ...>
  ```

  **Must NOT do**:
  - Do NOT modify HomeFragmentPagerAdapter.smali — it is already correct
  - Do NOT delete PVW4HomeFragment.smali
  - Do NOT modify startConnectAnimation() or workDotSelect()
  - Do NOT modify AP03HomeFragment.smali

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Two small edits to known files with exact line references
  - **Skills**: []
    - No special skills needed — simple text edits

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential — after Task 1 confirms root cause
  - **Blocks**: Task 3
  - **Blocked By**: Task 1

  **References**:

  **Pattern References**:
  - `.sisyphus/backups/HomeFragmentPagerAdapter.smali.bak` — Backup naming pattern to follow
  - `smali_classes3/com/powervision/base/utils/SPHelperUtils.smali:643` — Example of previous VisionMinus comment style in smali patches

  **File References (exact locations)**:
  - `smali_classes4/com/powervision/home/ui/fragment/HomeFragment.smali:596-604` — The lambda method `lambda$updatePVW4ConnectStatus$2$HomeFragment` containing `const/4 v0, 0x1` that targets page 1. Change line 600: `const/4 v0, 0x1` → `const/4 v0, 0x0`
  - `res/layout/home_fragment_home.xml:8` — The LinearLayout `ll_home_dot_select` — add `android:visibility="gone"` attribute

  **Context References (DO NOT modify these, reference only)**:
  - `smali_classes4/com/powervision/home/ui/fragment/HomeFragment.smali:567-582` — `lambda$updateDeviceConnectStatus$1$HomeFragment` — already targets page 0, no change needed
  - `smali_classes4/com/powervision/home/ui/adapter/HomeFragmentPagerAdapter.smali` — ALREADY CORRECT (array size 1, AP03 at index 0). Do NOT modify.

  **Acceptance Criteria**:

  - [ ] `.sisyphus/backups/HomeFragment.smali.bak` exists (backup created)
  - [ ] `.sisyphus/backups/home_fragment_home.xml.bak` exists (backup created)
  - [ ] `HomeFragment.smali` line ~600: `const/4 v0, 0x0` (was 0x1)
  - [ ] `home_fragment_home.xml` line 8: contains `android:visibility="gone"` on the LinearLayout

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Verify smali patch applied correctly
    Tool: Bash (grep)
    Preconditions: HomeFragment.smali has been edited
    Steps:
      1. grep -n "lambda\$updatePVW4ConnectStatus" smali_classes4/com/powervision/home/ui/fragment/HomeFragment.smali
         Assert: Method exists (line ~585)
      2. Search for the setCurrentItem call within that method
         Assert: The const/4 before setCurrentItem is 0x0 (not 0x1)
      3. grep -c "const/4 v0, 0x1" within that specific method
         Assert: 0 occurrences of const/4 v0, 0x1 in the PVW4 lambda
    Expected Result: The PVW4 connect handler now targets page 0
    Evidence: grep output
  
  Scenario: Verify dot container hidden in layout
    Tool: Bash (grep)
    Preconditions: home_fragment_home.xml has been edited
    Steps:
      1. grep "ll_home_dot_select" res/layout/home_fragment_home.xml
         Assert: Line contains android:visibility="gone"
    Expected Result: Dot indicator container is hidden
    Evidence: grep output
  ```

  **Commit**: YES (groups with Task 2 only)
  - Message: `fix(home): patch orphaned PVW4 fragment visibility and hide pagination dots`
  - Files: `smali_classes4/com/powervision/home/ui/fragment/HomeFragment.smali`, `res/layout/home_fragment_home.xml`
  - Pre-commit: `apktool b . -o modified-unaligned.apk` (build must succeed)

---

- [ ] 3. Build, Sign, Clear Data, and Install

  **What to do**:
  - Build: `apktool b . -o modified-unaligned.apk`
  - Verify build succeeded (exit code 0, no errors)
  - Zipalign (REQUIRED for SDK 31+): `/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/zipalign -f 4 modified-unaligned.apk modified.apk`
  - Sign with apksigner (NOT jarsigner — SHA1 disabled in newer Java):
    ```bash
    export JAVA_HOME=/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home
    /opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/apksigner sign --ks my-debug-key.keystore --ks-pass pass:android --key-pass pass:android modified.apk
    ```
  - **CRITICAL**: Clear app data BEFORE install to flush orphaned fragments:
    ```bash
    adb shell pm clear com.powervision.newvisionplus
    ```
  - Install: `adb install -r modified.apk`
  - Launch: `adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity`

  **IMPORTANT BUILD PIPELINE NOTE**:
  - Do NOT use `jarsigner` — Java disables SHA1 on newer JDK
  - Do NOT skip `zipalign` — SDK 31+ requires resources.arsc uncompressed and 4-byte aligned
  - The correct pipeline is: `apktool b → zipalign → apksigner`
  - The keystore password is `android`

  **Must NOT do**:
  - Do NOT skip `pm clear` — without it, the orphaned PVW4 fragment will persist from saved state
  - Do NOT use jarsigner (use apksigner)
  - Do NOT skip zipalign

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: Standard build pipeline with known commands
  - **Skills**: []
    - No special skills needed

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential — after Task 2 code fixes
  - **Blocks**: Task 4
  - **Blocked By**: Task 2

  **References**:
  - `apktool.yml` — Build configuration (targetSdkVersion=31)
  - `my-debug-key.keystore` — Debug signing key (password: android, alias: alias_name)
  - Build tools at: `/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/`

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Full build pipeline succeeds
    Tool: Bash
    Preconditions: Code fixes applied in Task 2
    Steps:
      1. apktool b . -o modified-unaligned.apk
         Assert: Exit code 0
         Assert: Output contains "Built apk" or similar success message
         Assert: Output does NOT contain "error" or "Exception"
      2. /opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/zipalign -f 4 modified-unaligned.apk modified.apk
         Assert: Exit code 0
         Assert: modified.apk exists and is >50MB
      3. export JAVA_HOME=/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home && /opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/apksigner sign --ks my-debug-key.keystore --ks-pass pass:android --key-pass pass:android modified.apk
         Assert: Exit code 0
      4. adb shell pm clear com.powervision.newvisionplus
         Assert: Output is "Success"
      5. adb install -r modified.apk
         Assert: Output contains "Success"
      6. adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity
         Assert: Output contains "Starting:" (no error)
    Expected Result: APK built, signed, installed, and launched
    Evidence: Command outputs captured
  ```

  **Commit**: NO (build artifacts, not source changes)

---

- [ ] 4. On-Device Verification via ADB (MANDATORY — Do This BEFORE Reporting to User)

  **What to do**:
  - Wait 8 seconds after launch for fragments to load and animations to complete
  - Take screenshot: `adb exec-out screencap -p > .sisyphus/evidence/task-4-home-screen.png`
  - Dump UI hierarchy: `adb shell uiautomator dump /sdcard/window_dump.xml && adb pull /sdcard/window_dump.xml .sisyphus/evidence/task-4-ui-dump.xml`
  - Analyze screenshot — confirm PowerDolphin (AP03) content is visible, NOT PowerEgg X
  - Analyze UI dump — confirm no PVW4HomeFragment in attached fragment hierarchy
  - Check for pagination dots — confirm they are NOT visible in screenshot
  - Check logcat for crashes: `adb logcat -d | grep -iE "FATAL|AndroidRuntime.*Exception|IndexOutOfBounds" | head -20`
  - If ALL checks pass: Report success to user with screenshot path
  - If ANY check fails: Debug, fix, rebuild, and re-verify. Do NOT ask user to check.

  **Must NOT do**:
  - Do NOT report success without taking and analyzing the screenshot
  - Do NOT ask the user to "check on your phone" — the agent does the checking
  - Do NOT skip logcat crash check

  **Recommended Agent Profile**:
  - **Category**: `quick`
    - Reason: ADB screenshot and analysis
  - **Skills**: []
    - No special skills needed

  **Parallelization**:
  - **Can Run In Parallel**: NO
  - **Parallel Group**: Sequential — final verification after install
  - **Blocks**: None (final task)
  - **Blocked By**: Task 3

  **References**:
  - Device serial: `RFCY61AS2MN` (Samsung)
  - Use `adb exec-out screencap -p` (NOT `adb shell screencap`) to avoid encoding issues when piping binary data

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Home screen shows PowerDolphin after fix
    Tool: Bash (adb) + image analysis
    Preconditions: Fresh install from Task 3 complete, app launched
    Steps:
      1. sleep 8
      2. mkdir -p .sisyphus/evidence
      3. adb exec-out screencap -p > .sisyphus/evidence/task-4-home-screen.png
         Assert: File exists, size > 10KB
      4. Analyze screenshot visually
         Assert: Shows PowerDolphin device silhouette (water drone shape)
         Assert: Does NOT show PowerEgg X (drone/quadcopter shape)
         Assert: No pagination dots visible at bottom
      5. adb shell uiautomator dump /sdcard/window_dump.xml && adb pull /sdcard/window_dump.xml .sisyphus/evidence/task-4-ui-dump.xml
         Assert: File exists
      6. Search UI dump for fragment classes
         Assert: Contains "AP03HomeFragment" references
         Assert: Does NOT contain "PVW4HomeFragment" in visible/attached hierarchy
    Expected Result: PowerDolphin home screen with no PowerEgg overlay
    Evidence: .sisyphus/evidence/task-4-home-screen.png, .sisyphus/evidence/task-4-ui-dump.xml

  Scenario: No crashes after launch
    Tool: Bash (adb logcat)
    Preconditions: App launched and running
    Steps:
      1. adb logcat -d | grep -iE "FATAL|AndroidRuntime.*Exception|IndexOutOfBounds|Force finishing.*powervision" | head -20
         Assert: Empty output (no crash lines)
      2. adb shell pidof com.powervision.newvisionplus
         Assert: Returns a PID (process is running, not crashed)
    Expected Result: App running without crashes
    Evidence: logcat output, PID confirmation

  Scenario: App survives force-stop and relaunch (no stale state)
    Tool: Bash (adb)
    Preconditions: App currently running from fresh install
    Steps:
      1. adb shell am force-stop com.powervision.newvisionplus
      2. adb shell am start -n com.powervision.newvisionplus/com.powervision.home.ui.activity.HomeActivity
      3. sleep 8
      4. adb exec-out screencap -p > .sisyphus/evidence/task-4-relaunch.png
         Assert: Still shows PowerDolphin, not PowerEgg X
      5. adb logcat -d | grep -iE "FATAL|AndroidRuntime" | tail -5
         Assert: No new crashes
    Expected Result: App shows PowerDolphin on relaunch too (no stale state regression)
    Evidence: .sisyphus/evidence/task-4-relaunch.png
  ```

  **Commit**: NO

---

## Commit Strategy

| After Task | Message | Files | Verification |
|------------|---------|-------|--------------|
| 2 | `fix(home): patch orphaned PVW4 fragment visibility and hide pagination dots` | HomeFragment.smali, home_fragment_home.xml | apktool b succeeds |

---

## Success Criteria

### Verification Commands
```bash
# Build succeeds
apktool b . -o modified-unaligned.apk  # Expected: exit 0, "Built apk"

# App shows PowerDolphin
adb exec-out screencap -p > /tmp/verify.png  # Expected: PowerDolphin visible

# No crashes
adb logcat -d | grep -iE "FATAL|AndroidRuntime"  # Expected: empty output

# Process running
adb shell pidof com.powervision.newvisionplus  # Expected: PID number
```

### Final Checklist
- [ ] PowerDolphin (AP03) shows on home screen launch
- [ ] No PowerEgg X visible anywhere on home screen
- [ ] No pagination dots visible at bottom of home screen
- [ ] App does not crash on launch
- [ ] App does not crash on force-stop + relaunch
- [ ] ADB screenshot evidence saved to .sisyphus/evidence/
- [ ] HomeFragment.smali backup exists at .sisyphus/backups/
- [ ] home_fragment_home.xml backup exists at .sisyphus/backups/
