# VisionMinus Status

**Stage:** Tier 1 pure safety contract verified and integrated; production adapter lane next.

## Completed
- Rowan: capability-separated transport safety phase machine passed independent correctness review.
- Amanda: integrated commit `58f3357f`; 54 tests and debug/release APK builds passed.
- Amanda: installed debug build on Samsung SM-S931U through the MacBook; launch and short stability check passed.

## Running
- Cass: control/safety candidate completed at `59ef3b51`; clean worktree, 118 tests, analysis, and APK builds passed, but independent review rejected four safety logic blockers. Candidate is frozen and not mergeable.
- Rhea: fresh Fable 5 correction worker on `fix/control-safety-review`; live process `proc_bfc533fb8020`. Owns only review findings and regression proof.
- Mira: six product/map/brand commits preserved; 86 tests and analysis pass. Session retired after a second max-turn cutoff rather than resumed again.
- Noa: product/release candidate `02d7286c` built and tested but independent review rejected false-fresh telemetry, release-workflow, credential, claim, and asset blockers. Candidate is frozen and not mergeable.
- Petra: fresh Fable 5 product/release correction worker on `fix/product-release-review`; live process `proc_cc114528439e`. Owns only review findings and regression proof.
- Amanda: supervision, evidence promotion, independent review, and integration.

## Waiting
- Device validation: basic debug install/launch passed; permissions and production-adapter behavior remain untested.
- Production wiring: blocked until adapter error isolation, operation deduplication, and writable-transport proof exist.
- Hardware-in-loop: deliberately gated behind production wiring and controlled bench conditions.

## Principal action
Nothing. The unusable original PowerVision app was removed after its APK and metadata were archived.
