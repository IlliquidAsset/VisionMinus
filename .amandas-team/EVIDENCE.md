# VisionMinus Evidence

## 2026-08-17 — Control capability audit
- Commit inspected: `b80b2467a906bbe4769747dcb6ef47b2f2e5a96f`
- Artifact: `docs/research/CONTROL_CAPABILITY_AUDIT.md`
- SHA-256: `f4fe87ae60bce68c001e1ea2ed9266883c72e72ab8c9723e5921019c73bda964`
- Verification: parent reran full `flutter test` (54 passing) and `flutter analyze` (no issues) before promotion.
- Supports: exact feature paths, absence of cruise command, arm-polarity defect, unwired production safety coordinator.
- Does not support: physical motor thresholds or hardware readiness.

## 2026-08-17 — Map and bathymetry source audit
- Artifact: `docs/research/MAP_AND_BATHYMETRY_SOURCES.md`
- SHA-256: `d4c0aadd10c38853cf0dd24270bc479448a2e374ad3a43a777f63fed111baf89`
- Supports: NAIP lawful imagery recommendation, Cherokee C-MAP coverage/licensing limits, TVA data-request path.
- Does not support: possession or redistribution rights for a Cherokee bathymetry dataset.


| Date | Claim | Artifact / command | Result | Limitations |
|---|---|---|---|---|
| 2026-08-12 | Mini has Android/Flutter reverse-engineering toolchain | `flutter doctor -v`; `adb devices -l`; `java -version`; `apktool --version` | Flutter 3.29.0, SDK 36, Android Studio 2024.2, Java 17/21, apktool 2.11.1 | Android licenses incomplete; no phone attached |
| 2026-08-12 | Canonical main is Flutter/Kotlin, not live Smali | `git ls-tree --name-only main`; commits `8d4d5ed6`, `a3e55c7c` | Flutter promoted to root; Smali archived | Does not prove runtime behavior |
| 2026-08-12 | Fable 5 candidate exists | branch `claude/fix-ai-gps-navigation-bWTSP`, commit `fd834bf6` | Large GPS/spot-lock/control change set present in ancestry | Identity label inferred from branch name; audit pending |
| 2026-08-12 | Cloud review found major safety gaps | `docs/review_round4.md` at `a3e55c7c` | Tier 1–4 findings; only one widget test existed | Review claims require local reproduction and device evidence |
| 2026-08-12 | Mini static baseline passes | `flutter analyze`; `flutter test` at `a3e55c7c` | Analyze passed; the sole widget test passed | One widget test does not cover the 16 requirements or hardware path |
| 2026-08-12 | Mini can produce Android APKs | `flutter build apk --debug`; independent `flutter build apk` at `a3e55c7c` | Debug: 127,867,027 bytes, SHA-256 `38ae62576da58cf0131a51bbe053d03e982db49c837ee4e84200c1960d56260d`; release: 51,527,113 bytes, SHA-256 `d218e209cfe284cdc95aab0286b5b8feec9669566405ab541a8152c22c6649d7` | Build warnings request NDK 27.0.12077973 and flag Java 8 source/target; APKs are not device- or hardware-verified |
| 2026-08-12 | Tier 1 pure transport safety contract passed independent review | Final review report `/Users/kendrick/.hermes/cache/delegation/subagent-summary-0-20260812_115055_721971.txt`; source/tests at commit `58f3357f` | No local type/API blockers; reconciliation authority separated; all 53 targeted tests passed | Review excludes concrete adapters, phone, JNI/USB, and hardware behavior |
| 2026-08-12 | Integrated repository remains buildable after safety-contract merge | `flutter test`; `flutter analyze`; debug/release builds at `58f3357f` | 54/54 tests; analyze clean; debug SHA-256 `38ae62576da58cf0131a51bbe053d03e982db49c837ee4e84200c1960d56260d`; release SHA-256 `d218e209cfe284cdc95aab0286b5b8feec9669566405ab541a8152c22c6649d7` | Compile SDK 35 / plugin SDK 36 and NDK 26 / plugin NDK 27 warnings remain; no physical validation |
| 2026-08-17 | Integrated debug APK installs and launches on Kendrick's phone through the MacBook | ADB device `RFCY61AS2MN`; package `com.visionminus.vision_minus`; screenshot `~/Downloads/VisionMinus-58f3357f-launch.png` on both Macs | Samsung SM-S931U, Android 16/API 36; PID remained alive; connection screen rendered in DISCOVERING; 20-second crash/ANR scan empty | No PowerDolphin Wi-Fi, JNI/USB control, command, or hardware behavior tested; debug build only |
| 2026-08-17 | Prior phone apps preserved or recoverable during replacement | External SSD archive `/Volumes/Video/Amanda/Project-Storage/VisionMinus/archives/phone-apps-20260812` on the Mini | Previous VisionMinus and `com.powervision.newvisionplus` 2.2.1 APKs backed up; hashes `76ca97f2…23bfd` and `eddcc61e…382be1`; both old packages removed; only new VisionMinus remains; Mini-internal and MacBook deployment copies removed | App-private data from removed packages was not preserved; Kendrick reports the original PowerVision app was unusable because required service accounts are defunct |

Every subsequent build, test, install, device session, screenshot, and hardware test must record commit, command/procedure, environment, result, and limitation here.
