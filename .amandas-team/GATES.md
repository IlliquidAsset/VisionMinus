# VisionMinus Gates

## Phone connection
- **Partial pass:** ADB authorization, debug install, launch, rendering, and short crash scan completed on Samsung SM-S931U.
- **Continues:** Repository audit, build, tests, architecture, documentation.
- **Class:** Physical.
- **Evidence:** On 2026-08-17, ADB showed `RFCY61AS2MN device`; package launched with a live PID and rendered the DISCOVERING screen; crash/ANR scan was empty.
- **Recommendation:** Keep the phone disconnected until production adapter isolation is implemented and Amanda supplies the exact ADB-only validation sequence.
- **Need from Kendrick:** Nothing for install validation. Keep the original PowerVision app as fallback.
- **Closes when:** Production adapter isolation passes and the connected-device workflow is exercised without hardware control.

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
