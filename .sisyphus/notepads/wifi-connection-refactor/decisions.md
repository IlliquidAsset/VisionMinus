# Architectural Decisions

## Key Decisions
_Design choices and rationale_

---

## 2026-03-28 — Connection Core Phase Model Rationale

- Adopted a 10-phase `ConnectionPhase` state machine to separate discovery, transport readiness, SDK lifecycle, and drone-link lifecycle without transport-specific coupling.
- `DISCOVERING` and `TRANSPORT_AVAILABLE` are distinct so detection confidence can settle before SDK initialization begins.
- `CONNECTING` and `SDK_ACTIVE` are distinct so SDK boot success is observable before attempting drone session handshakes.
- `DRONE_CONNECTING` and `CONNECTED` are distinct to model post-SDK link establishment and avoid conflating SDK availability with vehicle readiness.
- `DEGRADED` provides an explicit non-terminal reduced-capability phase; `DISCONNECTED` remains terminal for lost link; `ERROR` remains terminal for unrecoverable failures.
- `IDLE` is the quiescent baseline for startup and post-teardown reset transitions.

## 2026-03-28 — Android Manifest WiFi-Primary / USB-Optional Permissions

- Set `android.hardware.usb.accessory` feature to `android:required="false"` so app install is not gated on USB accessory support.
- Added WiFi/network permissions: `ACCESS_WIFI_STATE`, `ACCESS_NETWORK_STATE`, `CHANGE_NETWORK_STATE`, and `NEARBY_WIFI_DEVICES` with `android:usesPermissionFlags="neverForLocation"`.
- Removed invalid `android.permission.USB_PERMISSION` entry from manifest.
- Narrowed `usb_accessory_filter.xml` by removing wildcard `<usb-accessory />`; retained manufacturer-scoped `PowerVision` entry since model/product identifiers are not currently specified.

## 2026-03-28 — Serialized SDK Lifecycle + Generation-Gated Callback Filter

- Added `SdkLifecycleController` as the only Android-side entrypoint for SDK lifecycle calls (`initSdkWithWIFI(1)`, `initSDKAOA()`, `unInitSDK()`), executed on `Executors.newSingleThreadExecutor()`.
- Added generation tracking in `ConnectionRuntimeImpl`; generation increments at the start of every lifecycle operation (`initWifi`, `initAoa`, `uninit`).
- Added `CallbackGate` and wired it into event dispatch so callbacks are tagged to the active generation and stale callbacks are dropped with debug logging.
- Added a dedicated EventChannel `com.visionminus/connection_state` to stream runtime snapshots (`transport`, `phase`, `sessionGeneration`, `isTransitionInProgress`) to Flutter.
- For AOA, `initAoa(fd)` uses `initSDKAOA()` plus `JniAOAChannelNative.onConnect(0, fd)` when fd is valid, because Kotlin JNI bindings currently expose `initSDKAOA()` without fd parameter.

## 2026-03-28 — WiFi Transport Detection Uses Reachability Confidence, Not SDK Init

- Added `WifiTransportController` to monitor WiFi via `ConnectivityManager.registerNetworkCallback()` and compute confidence independently from SDK lifecycle.
- Confidence policy is transport-first: `HIGH` = active WiFi + TCP reachability to `192.168.1.10:554` (2s timeout), `MEDIUM` = active WiFi + `192.168.1.x` subnet, `LOW` = active WiFi only, `NONE` = no active WiFi.
- SSID (`PDO_VEH_*`) is treated as optional signal only and is not required for detection correctness.
- `WifiTransportController` emits transport availability snapshots through `ConnectionRuntime` callback and does not import or call SDK init APIs.
- Added `ReachabilityProbeImpl` as a simple TCP probe implementation that swallows probe exceptions and returns boolean success/failure.

## 2026-03-28 — Connection Screen UX Redesign (WiFi Primary, USB Fallback)

- Replaced USB-first CTA with WiFi-first state machine driven by `getWifiConfidence()` and `getAvailableTransports()` on screen mount.
- For `HIGH` confidence, screen auto-triggers `ConnectionController.autoConnect()` and surfaces phase progress copy (`Finding drone...` → `Connecting...` → `Connected`) backed by Connection Core phase stream.
- For `MEDIUM/LOW` confidence, screen shows explicit instruction to join drone WiFi (`PDO_VEH_*`) and keeps user action on `Retry` (no system settings intents).
- For `NONE` confidence, screen shows drone-offline guidance; USB action appears only as secondary fallback when USB transport is attached and WiFi is not available.
- Dashboard now displays a compact transport badge (WiFi/USB icon + label) sourced from `ConnectionState.transport` when connection phase is connected/degraded.
