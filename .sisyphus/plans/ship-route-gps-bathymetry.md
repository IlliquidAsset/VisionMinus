# Ship Route, GPS, and Bathymetry Plan

## TL;DR

> **Quick Summary**: Deliver one integrated pass that fixes ship route-planner usability (speed floor + completion UX), stabilizes GPS gating behavior for route/RTH actions, and produces an implementation-ready bathymetry research brief.
>
> **Deliverables**:
> - Route-planner speed-floor fix in ship pathing flow
> - Route completion UX fix (no accidental delete-blocking)
> - GPS gating tuning plan + implementation for route/RTH checks
> - Compass warning root-cause findings (app-side vs firmware-side)
> - Bathymetry integration brief (source, license, offline strategy)
>
> **Estimated Effort**: Medium
> **Parallel Execution**: YES (3 waves)
> **Critical Path**: Baseline mapping -> Route/GPS fixes -> Validation

---

## Context

### Original Request
- GPS keeps requesting compass calibration despite 9-10 satellites.
- Route planner ("AI" button) needs: lower minimum thrust floor (toward 1%), workable route completion, and non-broken return-home behavior.
- Also asked for open-source bathymetric map options.

### Interview Summary
- User clarified thrust is currently working.
- User requested all three areas be handled together.
- User is open to device log collection if needed.

### Metis Review Highlights (Applied)
- Route speed floor in `ShipMainActivity$2.onSpeedChanged(I)V` uses formula with explicit `0.4f` floor and a separate "speedTooLow" dialog guard.
- GPS gating is centralized in `ShipMainActivity.isGpsEnable()` and currently checks both EPH and satellite count.
- Compass warning may be firmware/native-originated; do not assume app-side fix until traced.
- Keep existing trolling modifications intact in `ShipMainActivity*.smali` while changing nearby logic.

---

## Work Objectives

### Core Objective
Improve ship route usability and reliability without breaking existing control behavior, and define a practical bathymetry path.

### Concrete Deliverables
- Adjust route-speed floor logic for lower controllable speeds.
- Remove/redirect the waypoint-tap delete interaction that blocks route completion flow.
- Tune GPS gating for route/RTH decisions with safer threshold behavior.
- Produce findings on compass warning source.
- Produce bathymetry integration recommendation (MVP + constraints).

### Definition of Done
- [ ] APK builds successfully after each changed file (`apktool b . -o modified.apk`).
- [ ] Route planner allows route completion without forced delete-dialog detours.
- [ ] Route-speed control allows values below previous floor behavior.
- [ ] GPS gating logic updated and verified by code-level checks.
- [ ] Compass warning source documented with evidence.
- [ ] Bathymetry findings documented with licensing and offline viability.

### Must Have
- File backups (`.bak`) before each smali edit.
- No `lib/` changes.
- No auth bypass changes.
- No network IP/port changes.

### Must NOT Have (Guardrails)
- No blanket bypass of `isAIEnable()` or `isGpsEnable()` safety checks.
- No edits to `fresh_approach/`.
- No regression of existing trolling constants in:
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali`
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$67.smali`

---

## Verification Strategy (Mandatory)

All verification is agent-executed. No manual-only acceptance criteria.

### Test Decision
- **Infrastructure exists**: NO (no stable app-level automated test harness for this decompiled APK)
- **Automated tests**: None
- **Primary verification**: Smali constant/path checks + apktool build + adb/logcat runtime checks

### Agent-Executed QA Scenarios (Global)

Scenario: Build integrity after each change
  Tool: Bash
  Preconditions: Edited smali file saved
  Steps:
    1. Run: `apktool b . -o modified.apk`
    2. Assert command exits 0
    3. Assert `modified.apk` exists
  Expected Result: Build passes, apk emitted
  Evidence: command output capture

Scenario: Preserve prior trolling patch while editing same class
  Tool: Bash
  Preconditions: Any edit touches `ShipMainActivity*.smali`
  Steps:
    1. `grep -n "0x40400000" smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali`
    2. `grep -n "Math;->max(FF)F" smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$67.smali`
  Expected Result: Existing trolling constants/guards still present
  Evidence: grep output capture

---

## Execution Strategy

### Parallel Execution Waves

Wave 1 (Baseline Mapping)
- Task 1: Route planner path + threshold mapping
- Task 2: GPS/compass gating mapping
- Task 3: Bathymetry source selection brief

Wave 2 (Implementation)
- Task 4: Route speed-floor adjustment
- Task 5: Route completion UX fix (waypoint tap behavior)
- Task 6: GPS gating refinement

Wave 3 (Verification + Hardening)
- Task 7: Runtime/log verification package
- Task 8: Final decision notes and rollback cookbook

Critical Path: 1 -> 4 -> 7

---

## TODOs

- [ ] 1. Map route-planner control flow and constants

  **What to do**:
  - Trace "AI" entry to route creation and execution in ship mode.
  - Confirm all code paths touching speed floor and route completion.

  **Must NOT do**:
  - No code edits; mapping only.

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: YES (Wave 1)
  - **Blocked By**: None

  **References**:
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:2205` - `airline_scheme()` core route flow
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:9861` - `delete_airline_point` dialog string use
  - `smali_classes3/com/powervision/gcs/view/ship/ShipFunctionListView.smali:379` - route planner entry click
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$2.smali` - speed callback path with 0.4 floor

  **Acceptance Criteria**:
  - [ ] A mapping table exists with method-level route flow and thresholds.
  - [ ] All constants affecting floor/completion are enumerated.

- [ ] 2. Map GPS/compass/RTH gating logic and message origins

  **What to do**:
  - Trace `isGpsEnable()` call sites and conditions.
  - Identify if compass warning is app string path or native/firmware event passthrough.

  **Must NOT do**:
  - No blanket disabling of safety checks.

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: YES (Wave 1)

  **References**:
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:4212` - `isGpsEnable()` gate
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:11072` - AI enable gate usage
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:15438` - confirm-detail GPS gate usage
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:16770` - satellite count ingestion
  - `smali_classes3/com/powervision/gcs/R$string.smali:6329` - compass_adjust resource id

  **Acceptance Criteria**:
  - [ ] Condition table produced: EPH threshold, satellite threshold, per-call-site impact.
  - [ ] Compass warning origin classified: app-side or firmware-side.

- [ ] 3. Bathymetry integration brief (research output)

  **What to do**:
  - Produce a concise MVP recommendation with data source, legal constraints, and offline path.

  **Must NOT do**:
  - No map code changes in this task.

  **Recommended Agent Profile**:
  - **Category**: `writing`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: YES (Wave 1)

  **References**:
  - GEBCO web services (WMS/tiles)
  - EMODnet/NOAA/OpenSeaMap licensing notes

  **Acceptance Criteria**:
  - [ ] Written brief includes source/coverage/license/offline size/attribution.
  - [ ] One MVP recommendation and one fallback recommendation documented.

- [ ] 4. Lower route speed floor safely

  **What to do**:
  - Edit speed-floor constant in ship route speed callback.
  - Reconcile with "speedTooLow" dialog condition so UX matches new floor.
  - Set first-pass floor target to **0.10**.
  - If firmware/controller enforces a hidden minimum, enable pulse fallback for very low effective speed.

  **Must NOT do**:
  - Do not set floor to zero by default.
  - Do not remove all safety dialogs globally.

  **Recommended Agent Profile**:
  - **Category**: `quick`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: NO (depends on Task 1)

  **References**:
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$2.smali:368` - `onSpeedChanged(I)V`
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$2.smali:427` - floor constant (`0.4f`)

  **Acceptance Criteria**:
  - [ ] Old floor constant no longer present where formula floor is applied.
  - [ ] Build passes immediately after change.
  - [ ] Floor evaluates to 0.10 at slider minimum in code path.
  - [ ] Fallback pulse mode path documented if sub-floor behavior is clamped by firmware.

  **Agent-Executed QA Scenario**:
  Scenario: Constant replacement integrity
    Tool: Bash
    Steps:
      1. `grep -n "0x3ecccccd" smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$2.smali`
      2. Assert either no match or only non-floor references remain.
      3. `apktool b . -o modified.apk`
    Expected Result: Floor updated and build green.

- [ ] 5. Fix route completion UX around waypoint taps

  **What to do**:
  - First, verify intended behavior by tracing current route-close logic and first-point tap semantics.
  - Adjust marker tap behavior so completion action is not blocked by delete dialog in completion context.
  - Preserve delete behavior where explicit delete intent exists.

  **Must NOT do**:
  - Do not disable delete functionality globally.

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: NO (depends on Task 1)

  **References**:
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:9820` - `deleteAirlinePointAction(I)V`
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:5701` - waypoint marker-click route path

  **Acceptance Criteria**:
  - [ ] Intended behavior documented (from code path evidence).
  - [ ] Completion flow reachable without mandatory delete dialog interruptions.
  - [ ] Delete dialog still available in explicit edit/delete mode.
  - [ ] Build passes after edit.

- [ ] 6. Refine GPS gate behavior for AI route and RTH

  **What to do**:
  - Tune `isGpsEnable()` thresholds and split stricter RTH vs looser AI route-start checks.
  - Add anti-flap behavior if threshold jitter causes repeated enable/disable.
  - Add margin-based "RTH near home" fallback behavior definition using phone/remote position context when full lock is weak.

  **Must NOT do**:
  - Do not hard-force true for all GPS checks.

  **Recommended Agent Profile**:
  - **Category**: `unspecified-high`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: NO (depends on Task 2)

  **References**:
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali:4212` - `isGpsEnable()`
  - `smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity$59.smali` - return-home slide handler path

  **Acceptance Criteria**:
  - [ ] GPS condition logic documented and modified intentionally (not bypassed).
  - [ ] Warning message path still works when GPS is truly bad.
  - [ ] RTH remains stricter than AI route start.
  - [ ] Margin policy for weak-lock return is specified and bounded by safety limits.
  - [ ] Build passes.

- [ ] 7. Runtime evidence capture package (optional but recommended)

  **What to do**:
  - Prepare reproducible log capture script for on-device verification.

  **Recommended Agent Profile**:
  - **Category**: `quick`
  - **Skills**: `planning-with-files`

  **Parallelization**:
  - **Can Run In Parallel**: YES (Wave 3)

  **Acceptance Criteria**:
  - [ ] `adb logcat` filter commands documented for route/GPS/compass events.
  - [ ] Evidence file paths specified under `.sisyphus/evidence/`.

- [ ] 8. Final hardening + rollback cookbook

  **What to do**:
  - Validate each modified file has `.bak` backup.
  - Document exact rollback commands.

  **Acceptance Criteria**:
  - [ ] Backup files exist for every edited smali file.
  - [ ] Rollback commands validated syntactically.

---

## Commit Strategy

- Commit group 1: Route floor + completion UX
- Commit group 2: GPS gating refinements
- Commit group 3: Docs/research artifacts

---

## Success Criteria

### Verification Commands
```bash
apktool b . -o modified.apk
grep -n "airline_scheme\|delete_airline_point" smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali
grep -n "isGpsEnable" smali_classes3/com/powervision/gcs/ui/aty/ship/ShipMainActivity.smali
```

### Final Checklist
- [ ] Route-planner speed floor is lower than prior floor path.
- [ ] Route completion is not blocked by default waypoint delete prompt.
- [ ] GPS gating behavior is tuned (not bypassed).
- [ ] Compass warning source is documented with evidence.
- [ ] Bathymetry recommendation is practical and licensed.

---

## Decisions Applied

1. **Route floor target**: First pass uses **0.10** minimum.
2. **Fallback behavior**: If sub-floor control is clamped by firmware, pulse mode is acceptable fallback.
3. **Route completion UX**: Preferred outcome is first-point tap completes loop, but implementation should first confirm intended behavior from code.
4. **GPS policy**: Keep **RTH stricter than AI**.
5. **RTH weak-lock strategy**: Add bounded margin-based near-home return policy using available phone/remote context, with safety limits.
