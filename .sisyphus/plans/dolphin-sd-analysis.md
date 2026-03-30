# PowerDolphin SD Card Analysis — Firmware & Protocol Intelligence Extraction

## TL;DR

> **Quick Summary**: Decode the PowerDolphin's internal SD card to extract every configuration parameter, map sensor health, understand the communication protocol, and identify what can be tuned — all to make VisionMinus work better and enable AIB to control the dolphin directly.
> 
> **Deliverables**:
> - `FINDINGS.md` — A plain-English report covering everything we learned, organized by what matters for VisionMinus vs AIB
> - `parse_params.py` — Script that decodes the binary parameter files into readable tables
> - `parse_pvlog.py` — Script that decodes the flight telemetry logs
> - `params_catalog.json` — Machine-readable catalog of all parameters with types, values, and safety ratings
> 
> **Estimated Effort**: Medium (8-12 focused agent hours across tasks)
> **Parallel Execution**: YES — 2 waves
> **Critical Path**: Task 1 (parameter parser) → Task 3 (cross-reference) → Task 5 (findings report)

---

## Context

### Original Request
Kendrick disassembled the PowerDolphin and discovered a hidden microSD card slot on the motherboard. The card was imaged and backed up. Initial exploration revealed PX4 autopilot parameters, flight telemetry logs, factory calibration data, and ESC boot logs. Kendrick wants to know: what's useful here for controlling the dolphin through VisionMinus and for using it as an AI body via AIB-dolphin?

### Interview Summary
**Key Discussions**:
- The dolphin has THREE storage devices: internal eMMC (boot/OS), external SD (media, in battery tray), and this internal SD (parameters/logs, on motherboard)
- User is NOT a programmer — deliverables must be readable by a non-technical person
- Two goals: (1) improve VisionMinus app experience, (2) enable AIB-dolphin direct control
- This is READ-ONLY analysis of the backup copy. No modifications to the SD card in this plan.

**Research Findings**:
- The flight controller runs **PX4 autopilot on NuttX RTOS** (not Linux)
- Binary parameter format is **BSON** (Binary JSON) — `0x10` = int32, `0x01` = double
- Log format is **sdlog2** (older PX4 format, NOT modern ULog) — magic bytes `0xa39580`
- `SYS_AUTOSTART = 4011` maps to a quadcopter airframe in stock PX4 — PowerVision forked PX4 and replaced the vehicle dynamics with `pv_motion_control` for water use
- The dolphin is a **two-processor system**: PX4 autopilot (NuttX) handles navigation/motors, HiSilicon Hi3559 handles camera with a separate HTTP API
- Android app has HTTP endpoints for switching between eMMC and SD storage
- Firmware upgrade infrastructure exists in the native SDK (integration, battery, MCU, bootloader)
- The app references many of the same parameter names (PV_V_VER, PV_V_STAT, PV_GIM_*, PV_RC_*, PV_MISSION_*)

### Metis Review
**Identified Gaps** (addressed):
- **Security**: mtd_ro_params contains device serial number (PV_RO_PSN) and 16 authentication key segments (PV_RO_KEY_0 through KEY_15). These MUST be redacted from all output. → Added redaction requirement to every task.
- **Format assumption**: Initial assumption was "standard PX4 format." Metis confirmed it's BSON-encoded but with PowerVision-custom parameter names. Standard PX4 tools won't fully decode the PV_* params. → Plan uses custom parser, not PX4 tools.
- **Scope creep risk**: 108MB of telemetry logs could consume enormous time. → Limited to sampling 2-3 sessions max.
- **Magnetometer health issue**: `mmc5883_buffer_overflows: 1731+` appears consistently across sessions. This is a real hardware finding. → Added to sensor health analysis.
- **Two-processor architecture confusion**: Camera settings (ISO, EV, WB) are on the Hi3559 via HTTP, not on the PX4 autopilot. → Clearly separated in report structure.
- **EEPROM may be authoritative**: The SD card may be a backup, not the primary parameter store. EEPROM counters exist in preflight logs. → Documented as open question in findings.

---

## Work Objectives

### Core Objective
Extract all actionable intelligence from the PowerDolphin's internal SD card backup, producing a findings report and reusable decoder tools that inform both VisionMinus improvements and AIB-dolphin development.

### Concrete Deliverables
- `~/Documents/dev/dolphin-sd-backup/FINDINGS.md` — Main report
- `~/Documents/dev/dolphin-sd-backup/tools/parse_params.py` — Parameter decoder
- `~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py` — Telemetry log decoder
- `~/Documents/dev/dolphin-sd-backup/params_catalog.json` — Structured parameter data

### Definition of Done
- [ ] Every parameter in mtd_params decoded with name, type, value, and purpose (known or "UNKNOWN")
- [ ] Factory calibration in mtd_ro_params decoded with auth keys redacted
- [ ] At least 2 telemetry sessions decoded with sample data extracted
- [ ] Sensor health trend analysis across all preflight_perf files
- [ ] Cross-reference table: SD card params ↔ Android app params (what the app knows about vs what's hidden)
- [ ] FINDINGS.md readable by a non-programmer
- [ ] Zero authentication keys or serial numbers in any output file

### Must Have
- Complete parameter catalog with safety ratings (safe to change / dangerous / never touch)
- Sensor health analysis identifying the magnetometer issue
- Clear separation of autopilot parameters vs camera parameters
- Protocol findings relevant to AIB-dolphin (MAVLink interface mapping)
- Redaction of all sensitive device identity data

### Must NOT Have (Guardrails)
- **NO modifications** to the original SD card or backup files (analysis outputs go in separate files/directories)
- **NO standard PX4 tool usage** (pyulog, QGroundControl import, px4tools) — the format is PowerVision-custom and these tools will produce garbage
- **NO exhaustive log decoding** — sample 2-3 sessions, not all 13
- **NO parameter change recommendations without RISK LEVEL and RECOVERY PLAN labels**
- **NO publishing** of PV_RO_KEY_* values or PV_RO_PSN_* serial numbers
- **NO guessing** at unknown parameter purposes — label them "UNKNOWN PURPOSE" honestly
- **NO scope creep** into building the AIB-dolphin bridge itself — just document findings that feed into it
- **NO modifications** to any VisionMinus repo files

---

## Verification Strategy

> **UNIVERSAL RULE: ZERO HUMAN INTERVENTION**
> ALL tasks verified by the agent using tools. No "user confirms" steps.

### Test Decision
- **Infrastructure exists**: NO (this is a research/analysis project, not a software project)
- **Automated tests**: NO — verification is output validation
- **Framework**: N/A

### Agent-Executed QA Scenarios (MANDATORY — ALL tasks)

Every task includes specific verification commands that the executing agent runs to confirm deliverables are correct and complete. Detailed per-task below.

---

## Execution Strategy

### Parallel Execution Waves

```
Wave 1 (Start Immediately — independent tasks):
├── Task 1: Build parameter parser + decode mtd_params & mtd_ro_params
├── Task 2: Analyze preflight_perf files (already human-readable)
└── Task 4: Decode pvlog telemetry log format + sample sessions

Wave 2 (After Wave 1 completes):
├── Task 3: Cross-reference SD params with Android app SDK
└── Task 5: Synthesize FINDINGS.md report
```

### Dependency Matrix

| Task | Depends On | Blocks | Can Parallelize With |
|------|------------|--------|---------------------|
| 1 | None | 3, 5 | 2, 4 |
| 2 | None | 5 | 1, 4 |
| 3 | 1 | 5 | 2 (if still running) |
| 4 | None | 5 | 1, 2 |
| 5 | 1, 2, 3, 4 | None | None (final) |

### Agent Dispatch Summary

| Wave | Tasks | Recommended Agents |
|------|-------|-------------------|
| 1 | 1, 2, 4 | Three parallel agents (see per-task profiles) |
| 2 | 3, 5 | Two sequential agents (3 then 5, or parallel if 3 finishes fast) |

---

## TODOs

- [ ] 1. Build Parameter Parser & Decode All Parameters

  **What to do**:
  - Write `~/Documents/dev/dolphin-sd-backup/tools/parse_params.py` — a Python script that reads the BSON-encoded mtd_params and mtd_ro_params files
  - The binary format is: `[type_byte][null-terminated_name_string]\x00[value_bytes]` where `0x10` = 4-byte int32, `0x01` = 8-byte float64 (little-endian)
  - Parse both files completely — account for every byte (no unexplained gaps)
  - Output a human-readable table: Parameter Name | Type | Raw Value | Decoded Value
  - Generate `~/Documents/dev/dolphin-sd-backup/params_catalog.json` with structured data
  - For mtd_ro_params: REDACT all `PV_RO_KEY_*` values (replace with `"[REDACTED-AUTH-KEY]"`) and `PV_RO_PSN_*` values (replace with `"[REDACTED-SERIAL]"`)
  - Add a "Safety" column: categorize each parameter as `SAFE` (calibration counters, logs), `CAUTION` (tuning values), `DANGEROUS` (system identity, autostart), or `NEVER_TOUCH` (factory calibration, auth keys)
  - Note: The file starts with 4 null bytes before the first entry. Handle this.

  **Must NOT do**:
  - Do NOT use any PX4 parameter parsing libraries — they expect standard PX4 format
  - Do NOT output actual key/serial values anywhere
  - Do NOT modify the source binary files

  **Recommended Agent Profile**:
  - **Category**: `ultrabrain`
    - Reason: Binary format parsing requires careful byte-level analysis and correct struct unpacking. Logic-heavy.
  - **Skills**: [`reverse-skills`]
    - `reverse-skills`: Binary format reverse engineering — reading hex dumps, understanding byte layouts, writing struct parsers
  - **Skills Evaluated but Omitted**:
    - `test-generator`: No test infrastructure to integrate with

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1 (with Tasks 2, 4)
  - **Blocks**: Tasks 3, 5
  - **Blocked By**: None

  **References**:

  **Pattern References**:
  - `~/Documents/dev/dolphin-sd-backup/mtd_params` (847 bytes) — The binary parameter file to decode
  - `~/Documents/dev/dolphin-sd-backup/mtd_ro_params` (622 bytes) — The read-only factory calibration file

  **Hex Dump References** (from our session — the actual byte patterns):
  - mtd_params starts: `0000: 0000 0000 1050 565f 5344 5f46 4c41 4700` — 4 null bytes, then `0x10` type byte, then "PV_SD_FLAG\0", then 4-byte value
  - mtd_ro_params starts: `0000: 0000 0000 0150 565f 524f 5f41 5f58 4f46` — 4 null bytes, then `0x01` type byte, then "PV_RO_A_XOFF\0", then 8-byte float64 value
  - Type `0x10` = int32 (4 bytes, little-endian) — matches BSON INT32
  - Type `0x01` = float64 (8 bytes, little-endian) — matches BSON DOUBLE

  **Documentation References**:
  - BSON spec: http://bsonspec.org/ — type 0x01 = double (8 bytes), type 0x10 = int32 (4 bytes)
  - PX4 flashparams source confirms BSON encoding for parameter storage

  **Known Parameters** (from hex dump, to validate parser output):
  - `PV_SD_FLAG` (int32), `GPS_SAT_TIME` (int32), `CAL_BOARD_ID` = 9293 (int32)
  - `CAL_GYRO0_XOFF` (float64), `CAL_MAG0_ID` (int32), `SYS_AUTOSTART` (int32)
  - `ESC_VERSION` (int32), `PV_V_VER` (int32), `PV_V_PARAMVER` (int32)
  - mtd_ro_params: `PV_RO_A_XOFF/YOFF/ZOFF` (float64), rotation matrix R00-R22 (float64), `PV_RO_PSN_*`, `PV_RO_KEY_*`

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Parameter parser decodes mtd_params completely
    Tool: Bash (python3)
    Preconditions: parse_params.py exists in tools/
    Steps:
      1. Run: python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_params.py ~/Documents/dev/dolphin-sd-backup/mtd_params
      2. Assert: Output contains ≥30 named parameters
      3. Assert: Output contains "PV_SD_FLAG" with an integer value
      4. Assert: Output contains "CAL_BOARD_ID" with value 9293
      5. Assert: Output contains "SYS_AUTOSTART" with a value
      6. Assert: Output contains "CAL_GYRO0_XOFF" with a float value
      7. Assert: Total parsed bytes = 847 (file size) — no unexplained gaps
    Expected Result: All parameters decoded with name, type, value
    Evidence: Terminal output captured

  Scenario: Read-only params decoded with redaction
    Tool: Bash (python3 + grep)
    Preconditions: parse_params.py works on mtd_params
    Steps:
      1. Run: python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_params.py ~/Documents/dev/dolphin-sd-backup/mtd_ro_params
      2. Assert: Output contains "PV_RO_A_XOFF" with a float value
      3. Assert: Output contains rotation matrix params (PV_RO_A_R00 through R22)
      4. Run: python3 ... | grep "PV_RO_KEY"
      5. Assert: Every PV_RO_KEY line shows "[REDACTED-AUTH-KEY]" not actual values
      6. Run: python3 ... | grep "PV_RO_PSN"
      7. Assert: Every PV_RO_PSN line shows "[REDACTED-SERIAL]" not actual values
    Expected Result: Factory calibration decoded, secrets redacted
    Evidence: Terminal output captured

  Scenario: JSON catalog generated correctly
    Tool: Bash (python3 + jq)
    Preconditions: Parser script has --json output flag
    Steps:
      1. Run: python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_params.py ~/Documents/dev/dolphin-sd-backup/mtd_params --json > ~/Documents/dev/dolphin-sd-backup/params_catalog.json
      2. Run: cat params_catalog.json | python3 -m json.tool (validate JSON)
      3. Assert: Valid JSON with no parse errors
      4. Assert: Each entry has keys: name, type, value, safety
      5. Run: grep -c "REDACTED" params_catalog.json
      6. Assert: 0 matches (mtd_params has no keys to redact; if ro_params included, verify redaction)
    Expected Result: Machine-readable parameter catalog
    Evidence: params_catalog.json file

  Scenario: Parser handles edge case — corrupted or truncated input
    Tool: Bash (python3)
    Steps:
      1. Run: dd if=/dev/zero bs=1 count=10 | python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_params.py /dev/stdin
      2. Assert: Script exits with non-zero code and prints error message, does NOT crash with traceback
    Expected Result: Graceful error handling
    Evidence: Error message captured
  ```

  **Evidence to Capture:**
  - [ ] Full parameter table output for both files
  - [ ] params_catalog.json content
  - [ ] Byte accounting (parsed bytes vs file size)

  **Commit**: NO (this is in dolphin-sd-backup, not a git repo)

---

- [ ] 2. Analyze Preflight Performance & Sensor Health

  **What to do**:
  - Read ALL `preflight_perf*.txt` files across every log session directory
  - These are ALREADY human-readable plain text — no parsing needed, just analysis
  - Build a comparison table across sessions: date, CPU idle %, sensor error counts, process count
  - Focus on the **magnetometer issue**: `mmc5883_buffer_overflows` appears in high numbers (1700+) across sessions — document the trend
  - Flag any other sensor anomalies: `mpu6k_duplicates`, `eeprom_rst` counts, etc.
  - Check for differences between sessions — did sensor health degrade over time?
  - Also analyze the `msg_NNN/msgs.txt` files — these are ESC boot logs showing motor initialization. Note: `msg_001` may have an incomplete boot (only 2 lines). Flag this.
  - Document the full process list with what each process does (translated for a non-programmer)
  - Note the two MAVLink interfaces (mavlink_if0 and mavlink_if1) — identify which might be WiFi vs internal based on CPU usage and stack allocation differences

  **Must NOT do**:
  - Do NOT attempt to decode .pvlog binary files (that's Task 4)
  - Do NOT write scripts — these files are plain text, just read and analyze them

  **Recommended Agent Profile**:
  - **Category**: `unspecified-low`
    - Reason: Plain text reading and analysis. No coding needed. Straightforward pattern matching across files.
  - **Skills**: []
    - No specialized skills needed — this is file reading and comparison
  - **Skills Evaluated but Omitted**:
    - `reverse-skills`: Not needed — files are plain text

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1 (with Tasks 1, 4)
  - **Blocks**: Task 5
  - **Blocked By**: None

  **References**:

  **Data References**:
  - `~/Documents/dev/dolphin-sd-backup/log/s_004/preflight_perf001.txt` — Example preflight file (fully readable, 60 lines showing process table + sensor counters)
  - `~/Documents/dev/dolphin-sd-backup/log/2025-01-22/preflight_perf03_24_01.txt` — Date-stamped session
  - All directories: `2025-01-22`, `2025-01-29`, `2025-03-21`, `2025-03-22`, `2025-03-29`, `2025-03-30`, `2025-05-04`, and `s_004`, `s_005`, `s_007`, `s_009`, `s_021`
  - `~/Documents/dev/dolphin-sd-backup/log/msg_000/msgs.txt` — ESC boot log example (25 lines)
  - All msg directories: `msg_000` through `msg_021`

  **Context for Analysis**:
  - Key sensors: MPU-6000 (IMU, 6-axis), MMC5883 (magnetometer), EEPROM, ADC
  - Key processes: commander, mavlink_if0/if1, attitude_estimator_q, position_estimator_inav, pv_motion_control, sensors, esc, gps, navigator, sdlog2
  - Known issue: `mmc5883_buffer_overflows` — high count (1700+) suggests magnetometer data is being lost. This could affect compass heading accuracy.

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: All preflight files found and read
    Tool: Bash (find + wc)
    Preconditions: Backup directory exists
    Steps:
      1. Run: find ~/Documents/dev/dolphin-sd-backup/log -name "preflight_perf*" -type f | wc -l
      2. Assert: Count matches number of session directories that have preflight files
      3. For each file: Read contents, extract mmc5883_buffer_overflows count
      4. Assert: Comparison table has one row per session
    Expected Result: Complete sensor health inventory
    Evidence: Comparison table output

  Scenario: All ESC boot logs cataloged
    Tool: Bash (find + cat)
    Steps:
      1. Run: find ~/Documents/dev/dolphin-sd-backup/log -path "*/msg_*/msgs.txt" -type f | wc -l
      2. Assert: 22 files (msg_000 through msg_021)
      3. For each: check line count. Flag any with < 10 lines as "incomplete boot"
    Expected Result: ESC boot log inventory with anomaly flags
    Evidence: Summary table output

  Scenario: MAVLink interface comparison documented
    Tool: Bash (grep)
    Steps:
      1. Across all preflight files, extract mavlink_if0 and mavlink_if1 rows
      2. Compare CPU usage, stack size, event counts
      3. Assert: Documentation distinguishes between the two interfaces
    Expected Result: Analysis of which interface is primary (WiFi) vs secondary
    Evidence: Comparison data
  ```

  **Commit**: NO

---

- [ ] 3. Cross-Reference SD Card Parameters with Android App

  **What to do**:
  - Using the decoded parameter list from Task 1, compare against what the Android app knows about
  - Search the VisionMinus codebase (fresh_approach/ preferred) for every parameter name found on the SD card
  - Key app files to search:
    - Any `PVParameter` class references
    - `FlySettingParams` or similar settings classes
    - `AP03CameraParams` — known to have storage switching commands
    - `CameraManager` — has eMMC methods
    - `PowerCamSDK` / `JniCameraNative` — JNI bridge to native SDK
  - Build a cross-reference table:
    - Column 1: Parameter name (from SD card)
    - Column 2: Found in app? (YES/NO)
    - Column 3: Where in app (class/method)
    - Column 4: What the app does with it
    - Column 5: "Hidden?" — YES if the parameter is on the SD card but the app doesn't reference it
  - The "Hidden" parameters are the most interesting — these are capabilities the hardware has but the app doesn't expose
  - Also document the Hi3559 camera HTTP API endpoints found in the app (these are a SEPARATE system from the PX4 autopilot)

  **Must NOT do**:
  - Do NOT modify any VisionMinus repo files
  - Do NOT conflate camera parameters (Hi3559 HTTP API) with autopilot parameters (PX4 SD card)

  **Recommended Agent Profile**:
  - **Category**: `deep`
    - Reason: Requires thorough codebase exploration across thousands of smali files, pattern matching parameter names, and understanding the relationship between the app and the hardware. Goal-oriented autonomous problem-solving.
  - **Skills**: []
    - No specialized skills needed — this is codebase search and analysis
  - **Skills Evaluated but Omitted**:
    - `reverse-skills`: Smali is bytecode but the task is string matching, not binary analysis

  **Parallelization**:
  - **Can Run In Parallel**: NO (needs Task 1 output)
  - **Parallel Group**: Wave 2
  - **Blocks**: Task 5
  - **Blocked By**: Task 1 (needs the decoded parameter list)

  **References**:

  **Input Reference**:
  - `~/Documents/dev/dolphin-sd-backup/params_catalog.json` — Output from Task 1 (the decoded parameter names)

  **App Codebase References**:
  - `/Users/kendrick/Documents/dev/VisionMinus/fresh_approach/smali_classes4/com/powervision/localhttp/AP03CameraParams.smali` — Contains `AP03_DEVICE_GET_STATE`, `AP03_DEVICE_SWITCH_RAM`, `AP03_DEVICE_SWITCH_SD` storage switching commands
  - `/Users/kendrick/Documents/dev/VisionMinus/fresh_approach/smali_classes4/com/powervision/localhttp/CmdModel$Builder.smali` — HTTP command builder with storage endpoints
  - `/Users/kendrick/Documents/dev/VisionMinus/fresh_approach/smali_classes4/com/powervision/natives/PowerCamSDK.smali` — Has `getEmmcStorageSize()`, `setCameraNotifyGetEmmcStorageSizeListener()`
  - `/Users/kendrick/Documents/dev/VisionMinus/fresh_approach/smali_classes4/com/powervision/natives/JniCameraNative.smali` — JNI bridge with `CameraNotifyGetEmmcStorageSize`, `getEmmcStorageSize()` native method
  - `/Users/kendrick/Documents/dev/VisionMinus/fresh_approach/smali_classes3/com/powervision/camera/camera/` — Camera manager classes
  - `/Users/kendrick/Documents/dev/VisionMinus/fresh_approach/smali_classes4/com/powervision/localhttp/entity/BaseModel.smali` — Has `storage_state` field
  - Search broadly in `fresh_approach/` for any `PV_V_`, `PV_GIM_`, `PV_RC_`, `PV_MISSION_`, `CAL_`, `SYS_` string references

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: Cross-reference table covers all SD card parameters
    Tool: Bash (python3 + grep)
    Preconditions: params_catalog.json exists from Task 1
    Steps:
      1. Count parameters in params_catalog.json
      2. Count rows in cross-reference output
      3. Assert: Row count ≥ parameter count (every SD param has a row)
      4. Assert: At least some parameters marked "Hidden = YES"
      5. Assert: Table has all 5 columns (name, in_app, location, usage, hidden)
    Expected Result: Complete cross-reference with hidden parameter identification
    Evidence: Cross-reference table output

  Scenario: Camera API endpoints documented separately
    Tool: Bash (grep)
    Steps:
      1. Search fresh_approach/ for "cgi-bin" or "hi3559" or "getparameter" or "setparameter"
      2. Assert: Found HTTP endpoints documented in output
      3. Assert: Output clearly labels these as "Camera System (Hi3559)" not "Autopilot (PX4)"
    Expected Result: Camera and autopilot APIs clearly separated
    Evidence: Endpoint list
  ```

  **Commit**: NO

---

- [ ] 4. Decode Telemetry Log Format & Sample Flight Sessions

  **What to do**:
  - Write `~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py` — a Python script to decode the .pvlog binary telemetry logs
  - The format is **PX4 sdlog2** (older format, NOT modern ULog):
    - File header: `0xa395` + `0x80` + message_id + length + format_string + field_names (self-describing)
    - Data records: `0xa395` + message_id + binary payload matching the format definition
    - Format strings use single characters: `f` = float32, `L` = int64, `B` = uint8, `H` = uint16, `Q` = uint64, `b` = int8
  - Step 1: Parse the file header section to extract ALL message type definitions (ATT, ATSP, IMU, LPOS, GPS, etc.)
  - Step 2: Parse data records using the extracted format definitions
  - Step 3: Decode 2-3 representative sessions:
    - One short session (from `s_004/` or similar)
    - One longer session (from a date-stamped directory like `2025-05-04/`)
  - Output: summary statistics per session (duration, GPS fix quality, attitude ranges, any anomalies)
  - Do NOT decode all 13 sessions — too much data, diminishing returns

  **Must NOT do**:
  - Do NOT attempt to use pyulog, px4tools, or any standard PX4 log parser — the format is sdlog2 (deprecated), not ULog
  - Do NOT decode all sessions — 2-3 representative samples only
  - Do NOT modify backup files

  **Recommended Agent Profile**:
  - **Category**: `ultrabrain`
    - Reason: Binary format parsing of a self-describing log format. Requires understanding the sdlog2 encoding, handling variable-length records, and correctly mapping format strings to struct types.
  - **Skills**: [`reverse-skills`]
    - `reverse-skills`: Binary format analysis — the pvlog format needs careful byte-level decoding
  - **Skills Evaluated but Omitted**:
    - `test-generator`: No test framework to use

  **Parallelization**:
  - **Can Run In Parallel**: YES
  - **Parallel Group**: Wave 1 (with Tasks 1, 2)
  - **Blocks**: Task 5
  - **Blocked By**: None

  **References**:

  **Data References**:
  - `~/Documents/dev/dolphin-sd-backup/log/s_004/log001.pvlog` — Short session log
  - `~/Documents/dev/dolphin-sd-backup/log/2025-05-04/` — Likely longest session (most recent)
  - All date-stamped directories have `.pvlog` files with naming convention `HH_MM_SS.pvlog`

  **Format References (from hex dump)**:
  - Header bytes `0xa395 80` followed by message_id (1 byte) + length + type_code + format_string + field_names
  - Example from hex dump:
    - `0xa39580 02 1b` → message_id=0x02, length=0x1b (27 bytes)
    - `ATT\0 ffffff\0` → topic name "ATT", format "ffffff" (6 floats)
    - `Roll,Pitch,Yaw,GX,GY,GZ\0` → field names
  - Another: `IMU\0 ffffffffffff\0` → 12 floats: AccX,AccY,AccZ,GyroX,GyroY,GyroZ,MagX,MagY,MagZ,tA,tG,tM
  - Another: `GPS\0 QBffLLffffBHHH\0` → mixed types: GPSTime(Q),Fix(B),EPH(f),EPV(f),Lat(L),Lon(L),...

  **External References**:
  - PX4 sdlog2 source: `src/modules/sdlog2/` in older PX4 branches (this module was deprecated in favor of logger/ULog)
  - The format is self-describing: parse the header definitions, then use them to decode data records

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: pvlog parser extracts message definitions
    Tool: Bash (python3)
    Preconditions: parse_pvlog.py exists in tools/
    Steps:
      1. Run: python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py ~/Documents/dev/dolphin-sd-backup/log/s_004/log001.pvlog --headers-only
      2. Assert: Output lists message types: ATT, ATSP, IMU, LPOS, GPS (at minimum)
      3. Assert: Each type shows format string and field names
      4. Assert: ATT has fields: Roll, Pitch, Yaw, GX, GY, GZ
    Expected Result: Self-describing format headers fully decoded
    Evidence: Message type table

  Scenario: pvlog parser decodes data records with plausible values
    Tool: Bash (python3)
    Steps:
      1. Run: python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py ~/Documents/dev/dolphin-sd-backup/log/s_004/log001.pvlog --sample 50
      2. Assert: ATT Roll values are between -π and π (or -180 and 180 if degrees)
      3. Assert: GPS Lat/Lon values are plausible coordinates (not 0,0 and not NaN)
      4. Assert: IMU AccZ is approximately 9.8 (gravity) when stationary
    Expected Result: Decoded telemetry with physically plausible values
    Evidence: Sample record output

  Scenario: Parser handles truncated records gracefully
    Tool: Bash (python3)
    Steps:
      1. Create a truncated copy: dd if=log001.pvlog of=/tmp/truncated.pvlog bs=1 count=500
      2. Run: python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py /tmp/truncated.pvlog
      3. Assert: Script does NOT crash. Prints warning about truncated records.
      4. Assert: Exits with code 0 (partial data is OK)
    Expected Result: Graceful handling of incomplete files
    Evidence: Warning message + partial output
  ```

  **Commit**: NO

---

- [ ] 5. Synthesize FINDINGS.md Report

  **What to do**:
  - Combine outputs from Tasks 1-4 into `~/Documents/dev/dolphin-sd-backup/FINDINGS.md`
  - Written for a non-programmer. Plain English. No jargon without explanation.
  - Structure:

  ```
  # PowerDolphin Internal SD Card — Analysis Findings

  ## What Is This?
  (1 paragraph: what the SD card is, what we found, why it matters)

  ## The Dolphin's Brain Architecture
  (Explain the two-processor system in simple terms:
   - Autopilot brain: handles navigation, motors, sensors, GPS
   - Camera brain: handles video, photos, streaming
   - They're separate systems that talk to each other
   - The SD card belongs to the autopilot brain)

  ## Complete Parameter Catalog
  (Table from Task 1 — every parameter with name, value, what it does, safety rating)
  (Group by category: Calibration, System, PowerVision Custom, Unknown)

  ## What the App Knows vs What's Hidden
  (Cross-reference from Task 3 — highlight "hidden" parameters the app doesn't use)
  (This is where optimization opportunities live)

  ## Sensor Health Report
  (From Task 2 — health trends, the magnetometer issue, ESC boot analysis)
  (Flag: "Your compass sensor has a known data overflow issue that may affect heading accuracy")

  ## Flight Telemetry Summary
  (From Task 4 — what the logs contain, sample data, session summaries)

  ## What This Means for VisionMinus
  (Specific findings relevant to improving the app experience:
   - Parameters the app could expose but doesn't
   - Sensor issues that might explain behavior quirks
   - Communication setup between app and dolphin)

  ## What This Means for AIB-dolphin
  (Specific findings relevant to direct AI control:
   - MAVLink interface details: which interface, what protocol version
   - Available telemetry streams for AI perception
   - Motor/ESC configuration for motion commands
   - pv_motion_control — what it does and how to talk to it
   - Standard MAVLink commands that should work)

  ## Optimization Opportunities
  (Each opportunity with:
   - What could be changed
   - Expected benefit
   - RISK LEVEL: LOW / MEDIUM / HIGH / CRITICAL
   - Recovery plan if it goes wrong
   - THEORETICAL — UNTESTED label on everything)

  ## What NOT to Touch
  (Explicit warnings about dangerous parameters:
   - Factory calibration — unique to this unit
   - Authentication keys — device identity
   - ESC configuration — could damage motors)

  ## Open Questions
  (Things we couldn't determine from the SD card alone:
   - Is the SD card or EEPROM the authoritative parameter source?
   - What firmware version is running?
   - What does pv_motion_control actually do internally?)

  ## Appendix: File Inventory
  (What's in each directory on the SD card)
  ```

  - Total report should be 500-1500 lines (thorough but not overwhelming)
  - Every recommendation labeled with risk level
  - Zero auth keys or serial numbers anywhere in the report

  **Must NOT do**:
  - Do NOT include raw hex dumps (put those in the appendix or separate files if needed)
  - Do NOT use technical jargon without a plain-English explanation in parentheses
  - Do NOT speculate about parameter purposes — label unknowns honestly
  - Do NOT recommend parameter changes without risk labels
  - Do NOT include PV_RO_KEY or PV_RO_PSN values

  **Recommended Agent Profile**:
  - **Category**: `writing`
    - Reason: This is a synthesis and technical writing task. Requires organizing complex findings into a clear, readable document for a non-programmer audience.
  - **Skills**: []
    - No specialized skills needed — this is writing and organization
  - **Skills Evaluated but Omitted**:
    - `humanizer`: Report should be clear and direct, not casual

  **Parallelization**:
  - **Can Run In Parallel**: NO (final synthesis task)
  - **Parallel Group**: Wave 2 (runs last)
  - **Blocks**: None (this is the final task)
  - **Blocked By**: Tasks 1, 2, 3, 4 (needs all outputs)

  **References**:

  **Input References** (outputs from previous tasks):
  - Task 1 output: decoded parameter tables + params_catalog.json
  - Task 2 output: sensor health comparison + process analysis + ESC boot log analysis
  - Task 3 output: cross-reference table (SD params ↔ app) + camera API endpoints
  - Task 4 output: pvlog format documentation + session summaries

  **Context References**:
  - VisionMinus AGENTS.md: `/Users/kendrick/Documents/dev/VisionMinus/AGENTS.md` — Describes the project context, what the app does, the relationship to AIB/AIB-dolphin
  - Key context: "The original company (PowerVision) is defunct, and their authentication servers are offline. This repo bypasses that dead authentication."
  - Key context: "AIB-dolphin — A Python bridge that will talk to the PowerDolphin directly over MAVLink TCP, bypassing this Android app entirely."

  **Acceptance Criteria**:

  **Agent-Executed QA Scenarios:**

  ```
  Scenario: FINDINGS.md exists with all required sections
    Tool: Bash (grep)
    Preconditions: Tasks 1-4 completed
    Steps:
      1. Run: test -f ~/Documents/dev/dolphin-sd-backup/FINDINGS.md && echo "EXISTS"
      2. Assert: File exists
      3. Run: grep -c "^## " ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      4. Assert: ≥10 section headers
      5. Assert: Contains sections: "Parameter Catalog", "App Knows", "Sensor Health", "VisionMinus", "AIB-dolphin", "Optimization", "NOT to Touch", "Open Questions"
    Expected Result: Complete report with all sections
    Evidence: Section list

  Scenario: No secrets leaked in report
    Tool: Bash (grep)
    Steps:
      1. Run: grep -i "PV_RO_KEY" ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      2. Assert: Zero matches OR all matches contain "[REDACTED"
      3. Run: grep -i "PV_RO_PSN" ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      4. Assert: Zero matches OR all matches contain "[REDACTED"
      5. Run: grep -E "[0-9a-f]{16,}" ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      6. Assert: No long hex strings that could be key material
    Expected Result: Report is safe to share
    Evidence: grep output (empty = pass)

  Scenario: Report is non-programmer readable
    Tool: Bash (grep + wc)
    Steps:
      1. Run: wc -l ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      2. Assert: Between 500 and 2000 lines
      3. Run: grep -c "RISK LEVEL" ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      4. Assert: ≥1 (optimization opportunities have risk labels)
      5. Run: grep -c "THEORETICAL" ~/Documents/dev/dolphin-sd-backup/FINDINGS.md
      6. Assert: ≥1 (recommendations marked as untested)
    Expected Result: Appropriately detailed report with safety labels
    Evidence: Line count + risk label count
  ```

  **Commit**: NO

---

## Success Criteria

### Verification Commands
```bash
# All deliverables exist
test -f ~/Documents/dev/dolphin-sd-backup/FINDINGS.md && echo "PASS: Report exists"
test -f ~/Documents/dev/dolphin-sd-backup/tools/parse_params.py && echo "PASS: Param parser exists"
test -f ~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py && echo "PASS: Log parser exists"
test -f ~/Documents/dev/dolphin-sd-backup/params_catalog.json && echo "PASS: JSON catalog exists"

# No secrets in any output file
grep -rl "PV_RO_KEY" ~/Documents/dev/dolphin-sd-backup/ --include="*.md" --include="*.json" --include="*.txt" | grep -v "REDACTED" && echo "FAIL: Secrets leaked!" || echo "PASS: No secrets"

# Parameter parser works
python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_params.py ~/Documents/dev/dolphin-sd-backup/mtd_params | wc -l  # Expect ≥30

# Log parser works
python3 ~/Documents/dev/dolphin-sd-backup/tools/parse_pvlog.py ~/Documents/dev/dolphin-sd-backup/log/s_004/log001.pvlog --headers-only  # Expect ATT, IMU, GPS, LPOS topics listed
```

### Final Checklist
- [ ] All 4 deliverable files exist
- [ ] Parameter catalog has ≥30 parameters decoded
- [ ] Every parameter has a safety rating
- [ ] Auth keys and serial numbers redacted everywhere
- [ ] Sensor health compared across sessions
- [ ] Magnetometer overflow issue documented
- [ ] At least 2 telemetry sessions decoded
- [ ] Cross-reference table identifies hidden parameters
- [ ] Camera API and autopilot API clearly separated
- [ ] FINDINGS.md readable by non-programmer
- [ ] Every optimization recommendation has risk level + recovery plan
- [ ] VisionMinus-specific findings section present
- [ ] AIB-dolphin-specific findings section present
