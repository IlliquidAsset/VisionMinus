# Architectural Decisions

## [2026-03-30 11:52] State Authority Model
- BoatState becomes callback-authoritative (not UI-local state)
- Manual control NEVER GPS-gated (only unlock + link required)
- GPS quality uses original `eph <= 300 && sats > 8` when available
- Temporary degraded-W4 rule when eph unavailable (explicit in UI/logs)
