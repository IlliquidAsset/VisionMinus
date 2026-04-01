# Unresolved Blockers

## [2026-03-30 12:05] Wave 1 Compilation Errors
**Status**: BLOCKING Wave 2

**Errors Found** (30 total):
1. `connection_provider.dart:92` - String? can't be assigned to String parameter
2. `dashboard_screen.dart:239` - Too many positional arguments (0 expected, 1 found)
3. `dashboard_screen.dart` - Undefined identifiers: `_unlockTimeoutTimer`, `_unlockTargetStatus`, `_unlockIntentState`, `_unlockIntentReason`, `developer`
4. `navigation_provider.dart` - Missing getter `missionStart` on `RuntimeCommandTimeouts`
5. `settings_panel.dart` - Missing getters `calibrationStart` and `calibrationTerminal` on `RuntimeCommandTimeouts`

**Root Cause**: Tasks 1-2 modified files but didn't complete the refactor fully (missing field declarations, incomplete timeout constant structure)

**Patch Applied**:
- `connection_provider.dart:92` nullability mismatch addressed.
- `dashboard_screen.dart` missing unlock-intent fields added; unlock intent marker call/signature aligned; `dart:developer` import added.
- `RuntimeCommandTimeouts` contains `missionStart`, `calibrationStart`, and `calibrationTerminal` for downstream references.

**Verification Complete**:
- ✅ `flutter analyze` executed successfully: **No issues found!**

**Status**: ✅ RESOLVED - Wave 2 unblocked

## [2026-03-30 16:15] CRITICAL: Drone damaged during testing

### Incident
- GPS showed location in Africa (likely 0,0 coordinates) despite being in Tennessee
- WiFi connection was lost while user was texting
- Drone "freaked out" on WiFi loss — likely attempted RTH or autonomous action with bogus coordinates
- Drone is now physically damaged

### Root cause investigation
- Map widget code appears correct — uses `hasFix && latE7 != 0` guards
- GPS parsing chain is intact — `fromEvent` reads degE7 correctly
- `_defaultPosition` is correctly set to Cherokee Lake area
- No explicit GPS zeroing found in state management
- Possible causes under investigation:
  1. GPS data arriving as zero from SDK during WiFi handoff
  2. Home position set with 0,0 coordinates during startup before GPS lock
  3. RTH triggered on WiFi loss with bad home coordinates
  4. Map `followMode == drone` animating to 0,0 when GPS data zeroed

### Additional issues reported
- Map orientation still north-up (phone-heading-up not working in practice)
- Locator button collides with other menu options
- Despite manual functionality being restored, this was a major regression

### Action items
- MUST verify GPS coordinates are never 0,0 in map animations
- MUST add coordinate sanity checks before any autonomous action
- MUST prevent RTH/autonomous actions when GPS quality is degraded
- MUST fix button collision
- MUST verify phone-heading-up actually works
