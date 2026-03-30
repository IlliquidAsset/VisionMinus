# PowerDolphin SD Card Analysis — Findings

## Overview

Analysis of the PowerDolphin's internal SD card backup (from `~/Documents/dev/dolphin-sd-backup/`), covering parameter files, sensor health, telemetry logs, and cross-reference with the VisionMinus Android app.

**Hardware**: PowerDolphin water drone by PowerVision
**Autopilot**: PX4 on NuttX RTOS
**Camera**: Hi3559 processor (separate HTTP API)
**Sessions analyzed**: 18 preflight logs, 22 ESC boot logs, 2 telemetry sessions

---

## 1. Parameter Files

### mtd_params (847 bytes) — 44 parameters decoded

User-modifiable parameters. Two sections: calibration/system (entries 1–17) and runtime state (entries 18–44). Some parameters appear twice (SYS_AUTOSTART, ESC_VERSION, PV_V_VER, PV_V_PARAMVER) suggesting a defaults + overrides structure.

Key values:
- **SYS_AUTOSTART = 4011** — PX4 airframe ID (PowerVision custom vehicle type)
- **ESC_VERSION = 1062** — ESC firmware version
- **PV_V_VER = 1904091143** — Packed firmware version (0x71~207 → likely v7.x.x build)
- **PV_BOARD_ID = 6** — PowerVision board identifier
- **PV_V_STARTCOUNT = 26** — Total boot count (26 power-on cycles)
- **PV_V_LOGCOUNT = 16** — Total telemetry logs created
- **Battery (3S LiPo)**: CAP_U_LIMIT = 3875 (upper mV per cell), CAP_D_LIMIT = 2577 (lower mV per cell)
- **SD card**: PV_SD_SIZE = 14.83 (GB)

Calibration data (accelerometer, gyroscope, magnetometer) is intact with reasonable offsets and scale factors near 1.0.

### mtd_ro_params (622 bytes) — 33 parameters decoded

Factory-written read-only parameters. Contains:
- **Accelerometer factory calibration**: offsets (2.8, 12.6, 13.7) and rotation matrix (diagonal ~3900–4050, off-diagonal ~0)
- **Serial number segments**: PV_RO_PSN_0 through PV_RO_PSN_3 [REDACTED]
- **Authentication keys**: PV_RO_KEY_0 through PV_RO_KEY_15 + PV_KEY_CRC [REDACTED]

### Binary Format Discovery

PowerVision uses a BSON-like encoding with a non-standard quirk: type byte `0x00` is used for float64 entries (standard BSON uses `0x00` as end-of-document). The parser disambiguates by checking if the following byte is an ASCII letter (start of a parameter name).

**Tools created**: `tools/parse_params.py` — decodes both files, outputs human-readable tables or JSON.

---

## 2. Sensor Health

Full report: `sensor_health_report.md`

### Critical: Magnetometer (MMC5883) is severely degraded

The compass chip loses **97%+ of readings to buffer overflows** in every session:
- Average: 1,686 overflows per boot cycle
- Range: 459–1,936
- The 7 configuration errors per session are consistent (startup race condition)

**Impact**: Heading accuracy depends primarily on GPS-derived course rather than compass. GPS-denied operation (under bridges, dense cover) will have poor heading.

### Healthy: IMU (MPU-6000)

20% duplicate rate is normal (SPI polling faster than sensor output). Zero bad transactions, zero resets across all 18 sessions.

### Healthy: EEPROM

Early sessions (Jan 2025) show high reset counts from factory calibration writes. By May 2025, resets drop to zero. No errors in recent sessions.

### Healthy: CPU

74–83% idle with full 22-process stack running. Plenty of headroom.

### Notable: mavlink_if1 is completely unused

The secondary MAVLink interface consumes 0% CPU in every session. This is a free communication channel that could serve as a direct bridge for external controllers (e.g., AIB-dolphin).

---

## 3. Telemetry Logs (.pvlog)

### Format: PX4 sdlog2 (NOT modern ULog)

Binary format with 89-byte fixed-size format definitions and variable-length data records. Sync bytes: `0xa3 0x95`. Format definitions: `sync + 0x80 + struct{msg_id, length, name[4], format[16], labels[64]}`.

27 message types discovered:

| Type | Fields | Description |
|------|--------|-------------|
| ATT | Roll, Pitch, Yaw, GX, GY, GZ | Attitude (radians) |
| IMU | AccX/Y/Z, GyroX/Y/Z, MagX/Y/Z, temps | Inertial measurement |
| GPS | Fix, Lat, Lon, Alt, Vel, Sats, SNR | GPS position |
| DGPS | (same as GPS) | Differential GPS |
| LPOS | X, Y, Z, Dist, Velocity, Ref coords | Local position estimate |
| BATT | V, Current, Remaining, Temp, Cells | Battery state |
| ESC0/ESC1 | THR, RPM, Voltage, Current, Temp | Motor controllers (x2) |
| OUT0 | Out0–Out7 | PWM servo outputs |
| CTS | Body velocities, rates | Control target state |
| WAT | water | Water ingress sensor (0=dry) |
| STAT | nav_state, Failsafe, Load | System status |
| MANU | x, y, z, r | Manual control input |
| ADC0 | adc0–adc7 | Analog sensor readings |

### Session Analysis

**s_004 (bench test, 300KB)**:
- 10,041 records, 689 samples per topic at ~20Hz
- No GPS fix (indoor), no motor output, battery at 12.22V (3x 4.07V cells)
- Attitude shows movement (roll ±2 rad) — likely being handled/tested

**2025-05-04 (outdoor session, 35MB)**:
- 1,195,587 records, ~75,900 samples per topic
- AccZ average: -9.60 m/s² (consistent with gravity, NED convention)
- Battery: 11.78V (slightly discharged from 12.22V bench reading)
- GPS had 24,406 records (GPS lock acquired after initial startup)
- Session duration: ~63 minutes (75,900 records ÷ 20Hz)

**Tools created**: `tools/parse_pvlog.py` — decodes format definitions and data records, supports `--headers-only` and `--sample N` modes.

---

## 4. Cross-Reference: SD Card ↔ Android App

### Parameters used by BOTH the SD card and VisionMinus app

| Parameter | SD Card Value | App Usage |
|-----------|---------------|-----------|
| `PV_RO_PSN_0–3` | [REDACTED] serial segments | `PsnGetUtil` — reads via MAVLink, concatenates into device serial |
| `PV_V_VER` | 1904091143 | `PVW4FirmWareUpdateManager` — firmware version check |
| `PV_V_KEY_FLAG` | 1 | `NewActiviteUtil` — auth activation flag (checked 4+ times) |
| `PV_V_STAT` | 0 | `ShipCheckFragment` — pre-flight status check |

### Parameters on SD card only (not referenced in app)

All `CAL_*` calibration params, `SYS_AUTOSTART`, `ESC_VERSION`, `GPS_SAT_TIME`, `PV_SD_FLAG`, `PV_SD_SIZE`, `SCALE`, `CAP_U_LIMIT`, `CAP_D_LIMIT`, `PV_V_PROD`, `PV_V_YEILDTEST`, `PV_V_SD_FMT`, `PV_BOARD_ID`

These are internal autopilot parameters — the app doesn't need them for operation.

### Parameters in app only (not on SD card)

| Parameter | App Context |
|-----------|-------------|
| `PV_GIM_*` | Gimbal control (mode, calibration, roll adjust, version, status) |
| `PV_RC_*` | Remote controller (battery, mode, type, update, version) |
| `PV_BS_*` | Base station (connect, version) |
| `PV_CAM_SD_*` | Camera SD card (space left) |
| `PV_GEOFENCE` | Geofence boundaries |
| `PV_MISSION_*` | Autonomous mission (mode, type) |
| `DEEP_SENSOR_ID` | Depth/sonar sensor identifier |
| `FLY_MODE` | Flight/drive mode |

These are queried live via MAVLink — they represent dynamic device state, not persistent storage.

### Key Insight: PV_V_KEY_FLAG

The auth key flag (`PV_V_KEY_FLAG = 1` on SD card) is checked by `NewActiviteUtil` before launching certain activities. This is part of PowerVision's device activation system — distinct from the login bypass already patched in VisionMinus. Since the flag is `1` (activated) on this dolphin's SD card, the app should pass these checks naturally.

---

## 5. Recommendations for AIB-dolphin

Based on these findings, the Python bridge project should:

1. **Use mavlink_if1** for direct connection — it's idle and won't conflict with the Android app on mavlink_if0
2. **Expect NED coordinates** — Z-down positive, AccZ ≈ -9.8 when upright
3. **Handle 20Hz data rate** — the autopilot logs at ~20 samples/second per topic
4. **Parse PV_V_VER** to verify firmware compatibility before sending commands
5. **Monitor WAT (water sensor)** — value `0` = dry, any nonzero = water ingress, immediate abort
6. **Use CAP_U_LIMIT/CAP_D_LIMIT** for battery safety — 2577mV/cell is the low cutoff
7. **Don't rely on magnetometer heading** — the compass is degraded, use GPS course instead

---

## Files Created

| File | Description |
|------|-------------|
| `tools/parse_params.py` | BSON parameter file decoder |
| `tools/parse_pvlog.py` | sdlog2 telemetry log decoder |
| `params_catalog.json` | Machine-readable parameter dump (mtd_params) |
| `sensor_health_report.md` | Comprehensive sensor health analysis |
| `FINDINGS.md` | This document |
