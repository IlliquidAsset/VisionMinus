# VisionMinus Evidence Index

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

Every subsequent build, test, install, device session, screenshot, and hardware test must record commit, command/procedure, environment, result, and limitation here.
