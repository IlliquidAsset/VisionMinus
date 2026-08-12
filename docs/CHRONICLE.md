# VisionMinus Project Chronicle

This is the factual editorial ledger for a future Kirk+Co case study. It is not publication copy. Every entry separates observed fact from interpretation.

## Working editorial thesis
**Provisional:** Reviving abandoned or unsupported connected hardware by recovering its behavioral contract, replacing an unmaintainable decompiled application with a traceable modern client, and proving it on the original device path.

Do not publish the thesis until company status, hardware support status, legal language, and every technical claim are source-verified.

## Timeline

### 2025-05-21 — Decompiled baseline enters Git
- **Observed:** Commit `7caa54c6` added the initial VisionMinus project files; `54f5d2a9` followed with README changes.
- **Interpretation:** The project began as an application-recovery effort rooted in decompiled Android artifacts.

### 2026-03-26 to 2026-04-01 — Flutter modernization and GPS work
- **Observed:** Commits `2d36584b`, `d504f5e8`, `1b48cc54`, `6bb1e7e2`, and `fd834bf6` introduced a Flutter scaffold, Kotlin/PowerVision SDK bridge, map/RTH/waypoint control, and GPS/spot-lock changes.
- **Interpretation:** The project had already made the strategic move Kendrick kept advocating: Smali as reference, maintainable Flutter/Kotlin as the working system.

### 2026-08-03 — Flutter app promoted to repository root
- **Observed:** Commit `8d4d5ed6` promoted the Flutter app to the root and archived the Smali decompilation. Commit `a3e55c7c` added a Codespaces devcontainer and Round 4 review.
- **Observed:** Round 4 reported clean cloud `flutter analyze` and `flutter test`, but only one widget test, no APK build in the restricted sandbox, and multiple safety-critical findings.
- **Interpretation:** The modernization existed, but evidence was not yet strong enough for physical control claims.

### 2026-08-12 — Project formally recovered on the Mac Mini
- **Observed:** Repository cloned to `/Users/kendrick/Documents/dev/VisionMinus`.
- **Observed:** Mini toolchain includes Flutter 3.29.0, Android Studio 2024.2, Android SDK 36, ADB, Java, and apktool 2.11.1.
- **Observed:** No Android phone was attached; some Android SDK licenses were not accepted.
- **Decision:** Establish a reproducible build and safety-test baseline before asking Kendrick for the phone.
- **Observed:** `flutter analyze` passed and the existing one-test widget suite passed.
- **Observed:** The Mini produced both debug and release APKs at commit `a3e55c7c`. The successful builds emitted an NDK-version recommendation and obsolete Java 8 source/target warnings.
- **Limitation:** Successful compilation proves packaging and toolchain viability, not safe control of the phone or PowerDolphin.

### 2026-08-12 — Fable 5 recovered as ancestry, not a stranded branch
- **Observed:** `fd834bf6` is a direct ancestor of current `main`; all directly changed Fable code is byte-identical after the Flutter app's root promotion.
- **Decision:** Preserve Fable's historical contracts and evidence at their original commit rather than attempting a merge or restoring agent debris to the active tree.
- **Editorial significance:** The recovery story is not “agents finally rewrote the Smali.” It is “the rewrite existed; disciplined provenance, safety engineering, and physical proof were the missing finish.”

### 2026-08-12 — Safety contract survived eleven fail-closed design reviews
- **Observed:** The first isolated safety slice began with seven targeted tests. Independent reviews rejected successive designs for forgeable state, detached authorization, missing transport lifecycle, split serialization queues, delayed shutdown latching, callback deadlocks, self-wait cycles, `Zone.root` context escape, ambiguous physical-effect replay, stale callback authority, and reconciliation-authority leakage.
- **Decision:** Treat each failed review as an architectural finding, not a patch request. The final design became a capability-separated, deadline-bounded phase machine with opaque leases, command attempts, shutdown operations, completion handles, callback epochs, and a composition-root-only reconciliation capability.
- **Observed:** The final pure contract passed independent read-only review with no local type/API blockers. At commit `58f3357f`, all 53 targeted safety tests and the repository's widget test passed; static analysis, debug APK build, and release APK build also passed.
- **Observed:** Release APK SHA-256 remained `d218e209cfe284cdc95aab0286b5b8feec9669566405ab541a8152c22c6649d7`, showing the unreferenced pure contract did not alter packaged release behavior.
- **Limitation:** This is a verified contract, not a production safety claim. Concrete adapter error isolation, operation deduplication, writable-transport proof, JNI/USB lifecycle wiring, phone validation, and PowerDolphin bench testing remain undone.
- **Editorial significance:** The useful story is not that an agent wrote a controller quickly. It is that disciplined adversarial review kept refusing plausible-looking safety code until authority, lifecycle, liveness, and physical ambiguity were modeled honestly.

## Claims requiring verification before publication
- Whether PowerVision or the relevant product line is legally/operationally "defunct," abandoned, unsupported, or merely discontinued.
- Exact original hardware and application versions.
- Which recovered features work on the real phone and PowerDolphin.
- What was reconstructed from Smali versus retained through vendor native binaries.
- Whether the result can be distributed and under what legal constraints.

## Evidence capture rules
For every material change record:
1. Date and commit/branch.
2. Problem and user impact.
3. What changed.
4. Exact verification performed.
5. What remains unproven.
6. Useful before/after screenshot or log location.
7. Editorial significance in one sentence.
