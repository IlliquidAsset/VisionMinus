# VisionMinus

A Flutter re-implementation of the controller app for the **PowerVision PowerDolphin**
water drone. It replaces the original, defunct `com.powervision.newvisionplus` Android
app (reverse-engineered from Smali) with a maintainable Flutter/Kotlin codebase that
still drives the drone through the original closed-source `libPowerSDK.so`.

## Architecture

The hard part of the original app — the drone comms protocol, telemetry, and flight
logic — lives inside a proprietary native library that cannot be decompiled. Rather than
reimplement it, this app **reuses `libPowerSDK.so`** and bridges to it:

```
Flutter UI (Dart)
   │  MethodChannel / EventChannel  (com.visionminus/*)
Kotlin platform host (PowerSdkPlugin)
   │  JNI  (com.powervision.natives.*  — package preserved so .so symbols resolve)
libPowerSDK.so  (bundled in android/app/src/main/jniLibs)
```

The Kotlin JNI shim classes (`JniW4Native`, `JniRemoteNative`, `JniGimbalNative`, …)
are reconstructed in the original `com.powervision.natives` package so the native
symbols exported by `libPowerSDK.so` (`Java_com_powervision_natives_*`) resolve at
runtime.

## Layout

- `lib/` — Flutter/Dart application
  - `core/` — connection, models, SDK bridge
  - `features/` — connection, dashboard, map, navigation, rth, spot_lock, media, settings
  - `shared/` — utilities
- `android/app/src/main/kotlin/` — platform host + reconstructed JNI shims
- `android/app/src/main/jniLibs/` — bundled `libPowerSDK.so` (arm64-v8a, armeabi-v7a)
- `docs/` — development history and the requirements registry (product spec)
- `test/` — widget/unit tests

## State management

Riverpod. Video via `media_kit`; map via `google_maps_flutter`.

## Building

```bash
flutter pub get
flutter run          # device required; needs a connected PowerDolphin to exercise the SDK
flutter analyze
flutter test
```

## History

The original Smali decompilation and all prior branches are preserved on the
`archive/*` branches (see `archive/main-smali-decompilation` for the full decompiled
APK). This branch is the active line of development.

## Legal

For educational and research purposes. PowerDolphin, PowerVision, and `libPowerSDK.so`
are the property of PowerVision. Use must comply with all applicable laws and terms.
