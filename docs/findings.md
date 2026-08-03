## Findings Log

### Initial focus areas
- GPS fallback / invalid coordinate handling
- Manual control path and rocker axis mapping
- Flutter/native state desynchronization
- Resource cleanup and silent failures
- Map orientation / camera update jitter / overlap issues

### Early observations
- `GpsPosition` has sanity helpers rejecting near-0,0 coordinates, but this only matters if callers actually enforce it.
- `BoatState` freshness is callback-driven; any UI or control path using stale state without transport/liveness gating is suspect.
- `ConnectionRepository` swallows hydration failures silently, which can mask state desync on startup.
