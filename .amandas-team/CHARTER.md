# VisionMinus Charter

## Outcome
Recover, verify, and modernize VisionMinus into a maintainable Android controller for PowerVision PowerDolphin hardware, with behavior demonstrated on the real phone and hardware path before any readiness claim.

## Current truth
- Repository: `https://github.com/IlliquidAsset/VisionMinus`
- Canonical branch: `main`
- `main` is already a Flutter/Dart application with a Kotlin/JNI bridge; Smali is archived in Git history/branches.
- Fable 5 candidate handoff: `claude/fix-ai-gps-navigation-bWTSP` at `fd834bf6`.
- The Mac Mini has Flutter, Android Studio, ADB, Java, and apktool. Android licenses are incomplete. No Android device is currently attached.

## Constraints
- Preserve Fable 5 and prior Smali work as provenance; never overwrite or rewrite historical branches.
- No claim that control, safety, GPS, spot-lock, RTH, or SDK behavior works without evidence from the relevant test level.
- No on-water or hardware-control use until safety-critical findings are closed and the physical path is verified.
- No secrets in logs, commits, agent prompts, or screenshots. Rotate/relocate the committed Maps key before public release.
- One writer per shared artifact; reviewers are read-only.

## Source-of-truth order
1. Real device and PowerDolphin behavior captured with logs.
2. Reproducible Android/Flutter builds and tests at a named commit.
3. Native SDK binaries/interfaces and archived Smali behavior.
4. Repository docs and agent reports.
5. Inference.

## Success criteria
- Clean, reproducible APK build on the Mini.
- Meaningful automated coverage for control math and safety invariants.
- Independent review of safety-critical changes.
- Phone smoke test covering install, launch, permissions, connection UI, logs, and failure handling.
- Hardware-in-loop verification for every control feature before readiness.
- Maintainable Flutter/Kotlin architecture with Smali retained only as behavioral reference.
- Evidence-backed editorial chronicle suitable for a Kirk+Co website story.

## Non-goals
- Rewriting working native vendor binaries.
- Publishing or releasing an APK before verification.
- Treating visual parity or a green widget test as hardware readiness.

## Human gates
- Kendrick: make the phone physically available and approve USB debugging if Android asks.
- Kendrick: provide/handle the PowerDolphin when hardware-in-loop testing begins.
- Kendrick: approve publication, release, or any public claim.

## Authorized scope
Repository inspection, local branches/worktrees, documentation, reversible code changes, tests, builds, APK installation after the phone is available, ADB diagnostics, and private dashboard updates.
