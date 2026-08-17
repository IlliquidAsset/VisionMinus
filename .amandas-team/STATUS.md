# VisionMinus Status

**Stage:** Tier 1 pure safety contract verified and integrated; production adapter lane next.

## Completed
- Rowan: capability-separated transport safety phase machine passed independent correctness review.
- Amanda: integrated commit `58f3357f`; 54 tests and debug/release APK builds passed.
- Amanda: installed debug build on Samsung SM-S931U through the MacBook; launch and short stability check passed.

## Running
- Cass: control/safety candidate completed at `59ef3b51`; clean worktree, 118 tests, analysis, and APK builds passed, but independent review rejected four safety logic blockers. Candidate is frozen and not mergeable.
- Rhea: corrected candidate `ab1cab30` passed 177 tests/analyze/builds but independent review rejected four remaining contract defects. Candidate frozen; production bypasses remain unclosed.
- Soren: two safety corrections committed—physical-write authority fusion and exact disarm correlation. Parent verification: 183 tests pass; field-authority provenance edit remains uncommitted and one analysis warning remains. Session retired at bounded turn ceiling.
- Nia: committed field-authority provenance and exact lockfile restoration, then hit turn ceiling during bench lifecycle test migration. Session retired. Amanda completed lease/run/expiry/revocation migration and verification.
- Corrected safety candidate `74ff594b`: clean worktree; 188 tests, analysis, diff, and lockfile checks pass. Native delegation was quota-blocked, so fresh read-only Fable review process `proc_4cbd6842f87e` is active; APK build/signature process `proc_e962871d7f15` active. Contracts remain unwired and make no live-safety claim.
- Mira: six product/map/brand commits preserved; 86 tests and analysis pass. Session retired after a second max-turn cutoff rather than resumed again.
- Noa: product/release candidate `02d7286c` built and tested but independent review rejected false-fresh telemetry, release-workflow, credential, claim, and asset blockers. Candidate is frozen and not mergeable.
- Petra: three committed corrections preserved; parent verification: clean branch, 142 tests, analysis, and diff checks pass. Fixed boat/phone freshness, read-only signer-derived release preparation, immutable action pins, and Maps credential injection. Session retired at turn ceiling rather than resumed.
- Talia: generated deterministic launcher/monochrome assets and restored licensing artifact, then hit the bounded turn ceiling before commit. Session retired. Amanda completed XML, reproducibility test, restrained claims, correction report, commits, and verification.
- Product/release corrected candidate `815aa680`: clean worktree; 143 tests, analysis, YAML, diff, licensing, and launcher-regeneration checks pass. Independent review `deleg_0d46a508` and APK build/signature process `proc_b388e8524a20` active; lane is `IN_REVIEW`.
- Amanda: supervision, evidence promotion, independent review, and integration.

## Waiting
- Device validation: basic debug install/launch passed; permissions and production-adapter behavior remain untested.
- Production wiring: blocked until adapter error isolation, operation deduplication, and writable-transport proof exist.
- Hardware-in-loop: deliberately gated behind production wiring and controlled bench conditions.

## Principal action
Nothing. The unusable original PowerVision app was removed after its APK and metadata were archived.
