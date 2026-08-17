## Verdict: **FAIL — do not integrate `02d7286c` yet**

### Critical / High findings

1. **Boat telemetry can remain visually “live” indefinitely after the feed stops.**  
   **Files:** `lib/features/map/display_position.dart:177-190`, `lib/features/map/map_provider.dart:58-84`, `lib/features/map/map_widget.dart:484-500`  
   `staleAfterMs` is evaluated only when another valid GPS sample arrives. There is no wall-clock timer, disconnect reset, or freshness comparison against `sourceUpdatedAtMs`. Consequently, a high-confidence stationary/moving marker can remain cyan, continue presenting raw speed/satellite information, and remain a follow-camera target indefinitely after telemetry stops or the connection disconnects. Invalid samples return `_current` unchanged and have the same effect. The existing stale test (`display_position_test.dart:250-263`) tests a *new sample after a gap*, not silence.  
   **Required:** schedule expiry from the source timestamp, emit explicit stale/last-known state on timeout and disconnect, and add fake-clock tests covering silence, invalid-only streams, and disconnect.

2. **The release signing gate can label a debug-signed APK as normally signed.**  
   **Files:** `.github/workflows/release.yml:62-86`, `android/app/build.gradle:33-38`  
   `signed=true` depends only on `ANDROID_KEYSTORE_BASE64` being nonempty, but Gradle never consumes that secret and always uses `signingConfigs.debug`. If that one secret exists, the workflow removes the `DO-NOT-DISTRIBUTE` suffix and warning even though the output is still debug-signed. The later certificate extraction records the signer but never fails or reclassifies an unexpected/debug certificate.  
   **Required:** determine release status from the observed certificate after `apksigner`, fail closed on debug/unknown signing, and do not create any release entry until Gradle actually consumes all required signing material.

3. **Untrusted workflow input is interpolated directly into shell script text.**  
   **File:** `.github/workflows/release.yml:83-89`  
   `${{ inputs.version }}` is expanded inside a multiline `run` script. A dispatcher-controlled value containing shell metacharacters/quotes can alter the command. Write access is required to dispatch, but a release workflow with `contents: write` should not expose a shell-injection primitive.  
   **Required:** pass the input through `env`, validate it against an anchored release-version regex, and use only the validated shell variable.

4. **The draft workflow can create an associated tag/release object and contradicts its “not tagged” claim.**  
   **Files:** `.github/workflows/release.yml:126-139`, `docs/RELEASE_NOTES_DRAFT.md:1-3`  
   `softprops/action-gh-release` is given an arbitrary `tag_name` with write permission. GitHub’s release path can create the associated tag when the supplied tag does not exist. `draft: true` prevents public publication, but does not make this a read-only preparation workflow.  
   **Required:** either require a pre-existing, verified tag and refuse otherwise, or generate only an artifact bundle and release-body artifact until a separate explicitly approved tagging/release step.

5. **A real Google Maps API credential remains committed.**  
   **File:** `android/app/src/main/AndroidManifest.xml:44-46`  
   The repository correctly documents that it is already in history, but the candidate still packages it. It must be rotated/revoked and restricted before any public release. I have not reproduced the credential value.

### Medium findings

6. **Phone/home location also has no freshness treatment.**  
   **File:** `lib/features/map/map_widget.dart:174-220`  
   Cached `Position` data is always rendered as good/degraded solely from accuracy. Its timestamp is ignored, so a stale phone location can indefinitely appear current and drive phone-follow mode.

7. **“Structurally walled off” is stronger than the implementation guarantees.**  
   **Files:** `README.md:84-90`, `docs/RELEASE_NOTES_DRAFT.md:118-123`, `lib/features/map/map_provider.dart:58-67`  
   Current call sites are correctly separated: marker/trail/camera consume display state, while separation and navigation consumers use raw boat state. However, `boatDisplayPositionProvider` and public latitude/longitude fields remain importable by any navigation module. Tests prove non-mutation and current independence, not structural impossibility. Reword the claims or enforce a private/presentation-only boundary plus dependency/import tests.

8. **Legal/source claims cite a nonexistent research document and have no registry tests.**  
   **File:** `lib/features/map/map_sources.dart:3-15`  
   `docs/research/MAP_AND_BATHYMETRY_SOURCES.md` does not exist. The implemented registry itself is conservative—Google, Esri, and Mapbox are view-only; C-MAP is external-only; only NAIP is marked redistributable—but repository evidence supporting the provider-specific licensing and resolution claims is missing.

9. **Release documentation overstates repository-supported counts/evidence.**  
   **Files:** `README.md:54`, `docs/RELEASE_NOTES_DRAFT.md:95`, `README.md:115-117`  
   There are 22 display-position/provider tests, not “24 fixture-backed tests.” The checked-in 884-sample fixture independently reproduces the 29.15 m raw path and 11.75 m old breadcrumb path, but its median-centred p95 radius is about 2.75 m, not 12.71 m. If 12.71 m came from the larger 3,120-sample capture, that evidence is not present in the repository and should be cited or the claim qualified.

10. **The Android monochrome launcher asset is an opaque full-colour image.**  
    **Files:** `android/app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml:5`, `tool/generate_launcher_icons.py:192-197`  
    All committed adaptive foreground PNGs have alpha 255 at every pixel. Referencing this as the Android monochrome mask will produce an effectively solid themed-icon silhouette rather than the boat glyph. Supply a dedicated alpha-mask monochrome drawable. The claimed single master is also not committed/reproducible: regenerating from `docs/assets/app-icon.png` did not reproduce committed asset hashes.

11. **Release-capable actions use mutable major-version tags.**  
    **Files:** `.github/workflows/release.yml:22-29,126-127`, `.github/workflows/ci.yml:22-24,58-78`  
    Most importantly, `softprops/action-gh-release@v2` runs with `contents: write`. Pin third-party actions to reviewed commit SHAs. The CI workflow itself is otherwise nonpublishing and restricted to `contents: read`.

### Verification

- Candidate pinned at `02d7286ca721055b5e79091df49905dac2bd438a`; base pinned at `b80b2467a906bbe4769747dcb6ef47b2f2e5a96f`.
- `flutter test`: **86 passed**
- Focused map tests: **32 passed**
- `flutter analyze`: **No issues found**
- Workflow/FUNDING YAML parsed successfully.
- `git diff --check`: clean.
- Final worktree remained clean.
- FUNDING entries are all commented out and do **not** activate a nonexistent account.
- README/release notes explicitly preserve real phone screenshots as an open physical-device gate; no fabricated screenshot was found.
- No files created or modified.

```json
{
  "passed": false,
  "security_concerns": [
    ".github/workflows/release.yml:83-89 interpolates dispatcher-controlled version input directly into shell script text, permitting shell-command alteration by a malicious value.",
    "android/app/src/main/AndroidManifest.xml:44-46 contains a committed Google Maps API credential that must be rotated/revoked and restricted before public release.",
    ".github/workflows/release.yml:126-139 grants contents:write to softprops/action-gh-release@v2 using a mutable major-version tag; compromise could mutate tags or releases.",
    ".github/workflows/release.yml:126-139 can create a release/tag object for an arbitrary dispatcher-supplied tag name despite documentation stating the candidate is not tagged."
  ],
  "logic_errors": [
    "lib/features/map/display_position.dart:177-190 and map_provider.dart:58-84 never transition display state to stale during telemetry silence, invalid-only telemetry, or disconnect; map_widget.dart:484-500 can therefore imply indefinite freshness.",
    ".github/workflows/release.yml:62-86 classifies signing from the presence of one secret even though android/app/build.gradle:33-38 always debug-signs the release build.",
    "lib/features/map/map_widget.dart:174-220 ignores phone Position freshness, allowing stale home location to appear current and drive follow-camera.",
    "README.md:54 and docs/RELEASE_NOTES_DRAFT.md:95 claim 24 fixture-backed map tests, while the display-position and provider suites contain 22.",
    "android/app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml:5 uses a fully opaque colour foreground as the monochrome mask, producing an invalid themed-icon silhouette."
  ],
  "suggestions": [
    "Add clock-controlled stale/invalid/disconnect tests and widget tests proving marker, trail, follow-camera, and raw separation use the intended state domains.",
    "Validate the APK signer after build and fail closed on Android Debug or any unapproved certificate before creating a release.",
    "Validate version input via env and an anchored regex; require a pre-existing verified tag or move tag/release creation into a separately approved workflow.",
    "Pin all GitHub Actions, especially release-capable third-party actions, to immutable commit SHAs.",
    "Restore the cited map licensing research document with source URLs and dates, and test cache/selectability invariants.",
    "Reword 'structurally walled off' or enforce a presentation-private dependency boundary.",
    "Commit a canonical launcher master and a dedicated monochrome alpha mask, then add deterministic asset-generation verification.",
    "Attach repository evidence for the 12.71 m claim and correct the fixture-backed test count."
  ],
  "summary": "Integration is blocked by indefinite false-fresh display state, a release workflow that can mislabel debug-signed artifacts, unsafe shell interpolation, and tag/release safety issues; CI/tests are green and map licensing/FUNDING/screenshot intent is otherwise conservative."
}
```