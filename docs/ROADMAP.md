# VisionMinus Delivery Roadmap

## Product objective
Revive PowerDolphin hardware with a maintainable Flutter/Kotlin controller optimized for extremely slow, quiet trolling. Preserve fail-closed control semantics and distinguish software capability from physical verification.

## Release strategy
The first GitHub artifact will be a clearly labeled prerelease, not a production-ready claim. Publication requires a reproducible signed APK, independent review, real-phone smoke evidence, accurate screenshots, release notes, legal attribution, and Kendrick's final approval.

## Phase 0 — Baseline and evidence — complete
- Flutter/Kotlin modernization identified as the canonical line.
- Archived Smali retained as behavioral evidence.
- Mini builds, tests, and analysis verified.
- Transport safety coordinator contract integrated and tested.
- Real Android install/launch smoke path exercised.
- Control-capability and map-source audits preserved under `docs/research/`.

## Phase 1 — Production safety wiring — active
Owner: Cass

Acceptance:
- Correctly separate arm command polarity from authoritative callback polarity.
- Command acceptance never substitutes for physical state observation.
- Wire production transport through the verified coordinator.
- Intentional disconnect and app backgrounding latch shutdown before teardown.
- Nonzero rocker admission is denied without a current connected generation, confirmed arm state, and unlatching transport lease.
- Add adapter error isolation, operation deduplication, cleanup, and tests.
- Full Flutter tests and analysis remain green.

No propulsion testing occurs in this phase.

## Phase 2 — Low-thrust control foundation — active design
Owner: Cass

Acceptance:
- Test-first integer setpoint/ramp/watchdog domain model.
- Immediate zero remains available and traceable.
- No UI percentage is described as voltage.
- Physical start, sustain, stall, reverse, noise, and release thresholds remain explicitly unknown until measured.
- Cruise is not implemented from the existing callback alone; a command and cancel path must first be proven.

## Phase 3 — Product surface and map behavior — active
Owner: Mira

Acceptance:
- Raw GPS, display GPS, and navigation-authoritative GPS remain separate.
- Stationary drift regression reproduces the captured false-motion case.
- Marker, trail, and camera stabilize without weakening autonomy validation.
- Custom icon and logo are integrated from reviewed source assets.
- Higher-resolution imagery uses lawful, attributed data. NAIP is the default MVP candidate.
- Bathymetry remains source-pending until TVA supplies licensable contour GIS/DEM or a commercial license is obtained.
- C-MAP/Garmin consumer viewers are never scraped or repackaged.

## Phase 4 — Repository and release preparation — active
Owner: Mira; integration and publication: Amanda

Acceptance:
- Current README with architecture, feature-status matrix, safety limitations, build/install steps, legal notes, and project story.
- Reproducible screenshots captured from the actual app state; no fabricated UI evidence.
- GitHub Actions verify analyze, tests, and Android build.
- Draft release notes distinguish tested, untested, and unavailable functionality.
- Funding configuration uses a verified account identifier. No account or username is invented.
- Release APK includes version metadata and a recorded SHA-256.

## Phase 5 — Independent review and integration
Owner: Amanda

Sequence:
1. Inspect each branch and evidence independently.
2. Run static security scans and full tests.
3. Route safety-critical diffs to an independent reviewer.
4. Correct blocking findings in a separate context.
5. Integrate the smallest coherent commits onto current `main`.
6. Re-run tests, analysis, debug/release builds, and artifact hashing.

## Phase 6 — Physical verification
Human gate: Kendrick makes the phone and hardware available when requested.

Order:
1. Phone-only install, launch, permission, lifecycle, and failure handling.
2. Stationary propulsion-disabled hardware checks: callbacks, light, recording, arm observation.
3. Gimbal command-path diagnosis only; stop if mechanical failure is confirmed.
4. Restrained minimum-thrust characterization with independent physical kill path.
5. Cruise cancellation proof before any sustained cruise trial.
6. On-water route/RTH/spot-lock only after GPS semantics and every prior safety gate pass.

## Phase 7 — First GitHub prerelease
Human gate: Kendrick approves the public release and claims.

Candidate label: `v0.1.0-alpha.1` unless integrated scope warrants a different version.

Release package:
- APK and SHA-256 checksum
- Release notes and known limitations
- Screenshots and branding
- Installation instructions
- Safety disclaimer and hardware-verified feature matrix
- Links to source, issues, and verified funding page if configured

## Explicitly deferred
- Autonomous navigation readiness before W4 GPS fix/freshness semantics are validated.
- Embedded Cherokee bathymetry without redistribution rights and datum metadata.
- Gimbal repair if the mechanism is physically broken.
- Claims of direct motor-voltage control.
- A stable `v1.0.0` release before real-world control validation.
