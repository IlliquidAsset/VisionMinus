# Findings — UI Rebuild

## Original App Architecture
- Main activity: `ShipMainActivity` — single Activity, not fragments for main GCS
- Implements `TextureView.SurfaceTextureListener` for RTSP video
- Uses `PVCamPlayerHelperExt` which wraps IjkPlayer
- RTSP URL: `rtsp://192.168.1.10/livestream/12` (WiFi mode)
- RTSP URL: `rtsp://192.168.42.10/livestream/12` (AP03 mode)
- Camera HTTP: `http://192.168.1.10/`
- Custom views: ShipRockerView, ShipTopView, ShipCameraMenuView, ShipCNUView, ShipLMHView, CustomCycleLayout

## Flickering Root Cause
- `ConnectionScreen.build()` line 152: `addPostFrameCallback` → `pushReplacement` to dashboard when connected
- `DashboardScreen.build()` line 49: `addPostFrameCallback` → `pushReplacement` to connection when disconnected
- These fight each other when state is transitional
- Fix: single navigation controller, not reactive pushReplacement in build

## Battery Callback Field Mapping (confirmed by smali analysis)
- param1 (int): `voltage_battery` — raw voltage (value=11 means 11V)
- param2 (int): `current_battery` — current draw in unknown unit (value=349)
- param3 (byte): `battery_remaining` — percentage (value=64 means 64%)

## Video Stack in Original App
- `NiceVideoPlayer` wraps IjkPlayer
- `PVCamPlayerHelperExt` provides camera-specific RTSP handling
- TextureView for rendering (not SurfaceView)
- Loading spinner while RTSP buffering

## RTSP Package Options for Flutter
- `media_kit`: Modern, well-maintained, supports RTSP via libmpv/ffmpeg. MIT license.
- `flutter_vlc_player`: VLC-based, heavier but battle-tested RTSP support.
- `video_player` + `better_player`: Simpler but RTSP support is spotty.
- Decision: Use `media_kit` — best RTSP support, active maintenance, good Android performance.
