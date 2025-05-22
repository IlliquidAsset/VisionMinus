# VisionMinus

A reverse-engineered and modified version of the PowerVision mobile application. This project contains the decompiled code of the original app (com.powervision.newvisionplus) that has been modified for research and educational purposes.

## Project Overview

This repository contains a decompiled Android application (APK) processed with APKTool. The original app is a control application for PowerVision devices, likely drones or underwater devices, and this repository contains modifications for research purposes.

### Repository Structure

- `smali/`, `smali_classes2/`, etc. - Decompiled Smali code (Android Dalvik bytecode)
- `res/` - Resource files including layouts, drawables, and values
- `assets/` - Application assets
- `lib/` - Native libraries (.so files)
- `AndroidManifest.xml` - The app's manifest file
- `apktool.yml` - APKTool configuration file

## Working with This Repository

### Prerequisites

To work with this codebase, you will need:

- APKTool (for building and decompiling)
- Java Development Kit (JDK)
- Android SDK (optional, for testing)
- Keystore for signing the APK

### Building

To build the modified APK:

```bash
apktool b . -o modified.apk
```

### Signing

After building, the APK needs to be signed:

```bash
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-debug-key.keystore modified.apk alias_name
```

### Installing

```bash
adb install -r modified.apk
```

## Modifications

This repository contains modifications to the original app, including:
- Bypass login screen
- Change Firebase from VisionMinus acct to mine (please use your own)

## Legal Disclaimer

This project is for educational and research purposes only. The original application is the property of PowerVision. Use of this modified application must comply with all relevant laws and terms of service.

## License

??