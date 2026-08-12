# VisionMinus Gates

## Phone connection
- **Blocked:** On-device install, permissions, launch, and log verification.
- **Continues:** Repository audit, build, tests, architecture, documentation.
- **Class:** Physical.
- **Evidence:** `adb devices -l` returned no attached devices on 2026-08-12.
- **Recommendation:** Keep the phone disconnected until production adapter isolation is implemented and Amanda supplies the exact ADB-only validation sequence.
- **Need from Kendrick:** One physical connection and any Android USB-debugging approval.
- **Closes when:** Adapter-isolation gate passes and the device appears as `device` in ADB.

## PowerDolphin hardware
- **Blocked:** Hardware-in-loop control verification.
- **Continues:** All non-hardware lanes.
- **Class:** Physical / safety.
- **Recommendation:** Do not connect hardware until the verified pure contract is wired through an isolated, deduplicating production adapter and the controlled bench protocol is approved.
- **Need from Kendrick:** Make the hardware available at the scheduled gate.
- **Closes when:** Controlled bench/on-land test environment is ready.

## Publication / release
- **Blocked:** Public case study and APK release.
- **Continues:** Private chronicle and engineering work.
- **Class:** Irreversible external commitment.
- **Need from Kendrick:** Final approval of angle, claims, and release.
