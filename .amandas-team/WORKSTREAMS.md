# VisionMinus Workstreams

| Lane | Owner | State | Dependencies | Next evidence | Acceptance |
|---|---|---|---|---|---|
| Provenance and Fable 5 recovery | Mara | VERIFIED | Git history | `docs/FABLE5_PROVENANCE.md` | Fable confirmed entirely in main; evidence pinned |
| Reproducible build baseline | Theo | VERIFIED | Mini toolchain | Debug and release APKs plus hashes | Buildability independently proven with limitations recorded |
| Architecture and safety migration | Inez | VERIFIED | Current Flutter/Kotlin + archived Smali | `docs/SAFETY_ARCHITECTURE.md` | Safety boundaries and phased test strategy defined |
| Tier 1 transport safety phase machine | Rowan | VERIFIED / INTEGRATED | Independent review passed; commit `58f3357f` | 53 targeted tests, 54 full-suite tests, debug/release APKs | Pure contract merged; no production or hardware authority implied |
| Production adapter isolation | Amanda | READY | Pure contract integrated | Owned async-error boundary and concrete adapter tests | Detached callback failures are contained before app/hardware integration |
| Device validation | Amanda | WAITING_HUMAN_GATE | Phone physically connected | `adb devices -l`, install/launch/log capture | Real phone path exercised at named commit |
| Hardware-in-loop | Amanda | WAITING_HUMAN_GATE | Phone + PowerDolphin + safety closure | Controlled test protocol and logs | Each control feature physically verified |
| Editorial chronicle | Celeste | READY | Evidence from all lanes | Dated factual change log | Every public claim traceable to evidence |
| Minimum-thrust control foundation | Cass | RUNNING | Verified control audit; isolated branch | Production adapter and arm semantics tests/commits | No physical claim; all nonzero output remains gated |
| Product and first-release preparation | Mira | RUNNING | Verified map-source audit; isolated branch | GPS display tests, brand integration, README/screenshots, draft release machinery | No release/push; honest status matrix and reproducible assets |
| Integration | Amanda | INTEGRATING | Cass/Mira outputs require independent review | Small reviewed merges, full tests/build, phone verification | Release candidate only after end-to-end evidence |
