# Issues & Gotchas

## Problems Encountered
_Unexpected behaviors and workarounds_

---

## 2026-03-28 — EventChannel multi-subscriber overwrite

- **Bug**: `PowerSdkBridge` called `receiveBroadcastStream()` inside stream getters, creating multiple native subscriptions for the same channel.
- **Root cause**: Native `PowerSdkEventHandler` stores one sink per channel name, so later subscribers overwrite earlier sinks (`last subscriber wins`).
- **Fix**: Added one-time `PowerSdkBridge.init()` that subscribes once per EventChannel and forwards events/errors into 5 app-lifetime `StreamController.broadcast()` streams.
- **Impact**: Multiple Dart consumers can now listen to `navigationStream` simultaneously (`connection_provider`, `navigation_provider`, `rth_provider`) without dropping earlier subscribers.
