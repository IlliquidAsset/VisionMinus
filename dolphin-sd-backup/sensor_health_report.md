# PowerDolphin Sensor Health Report

Generated from SD card backup: 18 preflight performance logs, 22 ESC boot logs.

## Executive Summary

The PowerDolphin's autopilot (PX4 on NuttX RTOS) is healthy overall. Two issues stand out:

1. **Magnetometer data loss is constant and severe** — the MMC5883 compass loses ~1,700 readings every boot cycle (~97% of reads are overflows). This affects heading accuracy.
2. **One ESC boot failed** (msg_001) — the motor controller initialization stalled after only the first config step.

CPU utilization is stable at ~77% idle (23% load). All other sensors (IMU, GPS, ADC) operate normally.

---

## Magnetometer Health (MMC5883)

This is the most significant finding. The compass chip consistently loses almost all of its data to buffer overflows.

| Session | Overflows | Reads | Overflow Rate | Conf Errors |
|---------|-----------|-------|---------------|-------------|
| 2025-01-22 | 1,731 | 1,734 | 99.8% | 7 |
| 2025-01-29 | 1,362 | — | — | 7 |
| 2025-03-21 | 1,783 | — | — | 7 |
| 2025-03-22 (a) | 1,727 | — | — | 7 |
| 2025-03-22 (b) | 1,848 | — | — | 7 |
| 2025-03-22 (c) | 1,891 | — | — | 7 |
| 2025-03-22 (d) | 1,763 | — | — | 7 |
| 2025-03-29 (a) | 1,760 | — | — | 7 |
| 2025-03-29 (b) | 459 | — | — | 7 |
| 2025-03-29 (c) | 1,473 | — | — | 7 |
| 2025-03-30 (a) | 1,551 | — | — | 7 |
| 2025-03-30 (b) | 1,664 | — | — | 7 |
| 2025-05-04 | 1,794 | 1,798 | 99.8% | 7 |
| s_004 | 1,932 | — | — | 7 |
| s_005 | 1,936 | — | — | 7 |
| s_007 | 1,934 | — | — | 7 |
| s_009 | 1,908 | — | — | 7 |
| s_021 | 1,836 | — | — | 7 |

**Average: 1,686 overflows per session. Range: 459–1,936.**

The low outlier (459 on 2025-03-29) corresponds to a short 11.8s uptime — the dolphin was powered on briefly.

The 7 configuration errors are present in every single session, suggesting a startup race condition or hardware quirk that the driver retries past.

**Impact**: The dolphin likely relies more on GPS heading and IMU gyro integration than magnetometer for direction. In GPS-denied areas (under bridges, dense tree cover), heading accuracy degrades.

---

## IMU Health (MPU-6000)

| Session | Duplicates | Good Transfers | Dup Rate | Bad Reg | Bad Trans | Resets |
|---------|-----------|----------------|----------|---------|-----------|--------|
| 2025-01-22 | 7,777 | 29,879 | 20.7% | 0 | 0 | 0 |
| 2025-01-29 | 5,722 | 22,842 | 20.0% | 0 | 0 | 0 |
| 2025-03-21 | 7,611 | 29,328 | 20.6% | 0 | 0 | 0 |
| 2025-05-04 | 7,406 | 29,482 | 20.1% | 0 | 0 | 0 |
| s_004 | 8,034 | 31,059 | 20.6% | 0 | 0 | 0 |
| s_021 | 8,127 | 30,736 | 20.9% | 0 | 0 | 0 |

**Duplicate rate is consistently ~20%** — this is normal for PX4's MPU6000 driver when the SPI bus is polled faster than the sensor produces new data. Zero bad transactions or resets across all sessions. The IMU is healthy.

---

## EEPROM Health

| Session | Resets | Errors | Transactions |
|---------|--------|--------|-------------|
| 2025-01-22 | 158 | 6 | 4,019 |
| 2025-01-29 | 30 | 0 | 9 |
| 2025-03-21 | 32 | 0 | 9 |
| 2025-03-22 (avg) | 54 | 0 | 9 |
| 2025-03-29 (avg) | 51 | 0 | 9 |
| 2025-03-30 (avg) | 21 | 0 | 9 |
| 2025-05-04 | 0 | 0 | 9 |
| s_004–s_009 | 32–52 | 0 | — |
| s_021 | 0 | 0 | 9 |

The first session (2025-01-22) shows 158 resets and 6 errors with 4,019 transactions — this was likely initial parameter writing (factory-like setup). Subsequent sessions show 0–58 resets with zero errors. The 2025-05-04 and s_021 sessions show zero resets, suggesting the EEPROM has stabilized.

---

## CPU Usage Trend

| Session | CPU Idle | Tasks | Scheduler | Process Count | Uptime |
|---------|----------|-------|-----------|---------------|--------|
| 2025-01-22 | 82.9% | 16.0% | 1.1% | 13 | 33.5s |
| 2025-01-29 | 77.1% | 20.0% | 2.9% | 22 | 26.5s |
| 2025-03-21 | 76.9% | — | — | 22 | 33.3s |
| 2025-03-22 (avg) | 76.8% | — | — | 22 | 34.1s |
| 2025-03-29 (avg) | 76.2% | — | — | 22 | 24.7s |
| 2025-03-30 (avg) | 74.7% | — | — | 22 | 30.5s |
| 2025-05-04 | 74.8% | 22.6% | 2.6% | 22 | 32.9s |
| s_004–s_009 | 78.4% | — | — | 22 | 35.8s |
| s_021 | 74.5% | — | — | 22 | 33.6s |

The first session (2025-01-22) had only 13 processes — the flight controller, navigation, and MAVLink subsystems weren't running yet (only basic sensor reading, logging, and ESC). All subsequent sessions run the full 22-process stack.

CPU idle has a slight downward trend (82.9% → 74.5%) which correlates with the full process stack being active. 74.5% idle is comfortable — the autopilot has plenty of headroom.

---

## MAVLink Interface Comparison

| Session | mavlink_if0 CPU% | mavlink_if1 CPU% |
|---------|-----------------|-----------------|
| 2025-01-22 | — | — |
| 2025-01-29 | 2.57% | 0.00% |
| 2025-03-21 | 2.58% | 0.00% |
| 2025-03-22 (avg) | 2.53% | 0.00% |
| 2025-03-29 (avg) | 2.63% | 0.00% |
| 2025-03-30 (avg) | 2.29% | 0.00% |
| 2025-05-04 | 2.24% | 0.00% |
| s_004–s_009 | 2.38% | 0.00% |
| s_021 | 2.23% | 0.00% |

**mavlink_if0** handles all communication (to the Android app over WiFi). It uses ~2.4% CPU consistently.

**mavlink_if1** consumes 0% CPU in every session — it's likely a secondary/debug interface that's configured but unused. This could potentially be repurposed for a direct TCP bridge to AIB-dolphin.

---

## ESC Boot Logs

22 boot logs found. 21 completed successfully ("esc config ok"), 1 failed.

| Log | Lines | Status | Notes |
|-----|-------|--------|-------|
| msg_000 | 24 | OK | Normal boot |
| **msg_001** | **3** | **FAILED** | **Stalled after initial esc_config_param. No PWM test or config ok.** |
| msg_002 | 22 | OK | Normal boot |
| msg_003–007 | 24 | OK | Normal boot |
| msg_008 | 44 | OK | Extended — includes sp_man timeout warnings |
| msg_009–010 | 24 | OK | Normal boot |
| msg_011 | 44 | OK | Extended |
| msg_012 | 84 | OK | Extended — 6 sp_man timeout bursts over 2031 seconds |
| msg_013 | 24 | OK | Normal boot |
| msg_014 | 54 | OK | Extended |
| msg_015 | 44 | OK | Extended |
| msg_016 | 97 | OK | Extended — longest session, many sp_man timeouts |
| msg_017–021 | 24 | OK | Normal boot |

**msg_001 failure**: The ESC received the initial config command (`esc config 6`) and param (`esc_config_param continue1 0`) but never progressed to the PWM motor tests. This indicates either a power interruption during boot or an ESC communication timeout. Single occurrence out of 22 boots.

**sp_man warnings**: Several sessions show `sp_man` (setpoint manager) timeout messages like:
```
sp_man:161156ms elapsed:3335ms x:0 y:5 r:0
```
This means the flight controller received manual control input (y:5 = slight forward throttle) but the setpoint was stale by ~3.3 seconds. This happens when the Android app sends a command and then loses connection or stops updating. The `y:5` values are near-zero (neutral), so this is likely the app's idle keepalive, not actual user input.

---

## Process Dictionary

What each process on the PowerDolphin does, in plain English:

| Process | What It Does |
|---------|-------------|
| **Idle Task** | Does nothing — CPU rest time. Higher = healthier. |
| **hpwork / lpwork** | High/low priority background task runners |
| **init** | System startup orchestrator |
| **sensors** | Reads IMU, compass, and barometer data |
| **gps** | Talks to the GPS receiver chip |
| **esc** | Controls motor speed via the Electronic Speed Controller |
| **esc_com_rx** | Listens for responses from the ESC |
| **commander** | Mission coordinator — decides what the dolphin should do |
| **commander_low_prio** | Non-urgent command processing |
| **attitude_estimator_q** | Calculates which way the dolphin is pointing (roll/pitch/yaw) |
| **position_estimator_inav** | Figures out where the dolphin is (GPS + IMU fusion) |
| **pv_motion_control** | PowerVision's motor control — translates commands to motor speeds |
| **navigator** | Route planner for autonomous waypoint missions |
| **mavlink_if0** | Main communication channel (WiFi to Android app) |
| **mavlink_rcv_if0** | Receives incoming MAVLink messages on interface 0 |
| **mavlink_if1** | Secondary communication channel (unused, 0% CPU) |
| **sdlog2** | Flight data recorder — writes telemetry to .pvlog files |
| **sdlog2_writer** | Handles SD card write buffering for the logger |
| **sdlog2_msg** | Logs text messages (ESC config, warnings) |
| **dataman** | Persistent data manager (waypoints, geofence, etc.) |
| **pwm_led** | Controls status LEDs via PWM |

---

## Key Findings

1. **Magnetometer (MMC5883) is severely degraded** — 97%+ buffer overflow rate is effectively a failed sensor. The dolphin compensates with GPS-derived heading but will have poor heading in GPS-denied environments.

2. **mavlink_if1 is idle** — a free communication channel that could serve as a direct TCP bridge for the AIB-dolphin Python controller, bypassing the Android app entirely.

3. **ESC boots are reliable** — 21/22 successful (95.5%). The single failure (msg_001) appears to be a power interruption, not a systemic issue.

4. **EEPROM has stabilized** — early sessions showed high reset counts (factory calibration writes), recent sessions show zero resets and errors.

5. **CPU headroom is adequate** — 74–83% idle with full process stack running.

6. **sp_man timeouts are benign** — stale setpoint warnings from the Android app's connection drops, not a control system issue.
