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
| Minimum-thrust control foundation | Amanda | IN_REVIEW | Corrected candidate `74ff594b`; 188 tests/analyze/diff/lockfile checks pass | Fresh independent Fable verdict plus APK hashes/signature | Contracts remain unwired; production bypasses unclosed; no physical claim |
| Product and first-release preparation | Amanda | IN_REVIEW | Corrected candidate `815aa680`; 143 tests/analyze/YAML/diff/licensing/launcher checks pass | Fresh independent verdict plus APK hashes/signature | Actual-phone screenshots, production signing, external key rotation, and publication remain gated |
| Integration | Amanda | INTEGRATING | Safety candidate `74ff594b` and product candidate `815aa680` require independent review | Small reviewed merges, full tests/build, phone verification | Release candidate only after end-to-end evidence |
