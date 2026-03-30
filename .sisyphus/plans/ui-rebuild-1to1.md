# UI Rebuild — 1:1 Match of Original PowerVision GCS App

## Goal
Completely rebuild the Flutter dashboard to faithfully replicate the original PowerVision water drone GCS app. Every screen, every button, every feature must match the original.

## Original App Main Screen Layout (from `gcs_ship_main_layout.xml`)

```
┌──────────────────────────────────────────────────────────────┐
│ [Home] ─── ShipTopView (battery/GPS/signal/mode)            │ ← Top bar (40dp)
├──────────────────────────────────────────────────────────────┤
│ ┌─────┐                                                     │
│ │ MAP │  (160×90dp PIP, top-left, swappable)                │
│ │     │                                                      │
│ └─────┘                                    [Camera Menu] →  │ ← Right side
│ [RTH]                                                        │
│ [Intelli]     FULL-SCREEN RTSP VIDEO FEED                   │
│ [Sonar]           (TextureView/IjkPlayer)                   │
│ [Hook]                                                       │
│ [Lock]                                                       │
│                                                              │
│  ┌─────────┐    Speed  Distance    [CNU] [Light] [Media]   │
│  │ LEFT    │       0      0m                                │
│  │ ROCKER  │   [LMH Speed Bar]         ┌─────────┐         │
│  │ (180dp) │                            │ RIGHT   │         │
│  └─────────┘                            │ ROCKER  │         │
│                                         │ (180dp) │         │
│                                         └─────────┘         │
└──────────────────────────────────────────────────────────────┘
```

## Key Facts from Original App

### Video
- RTSP URL: `rtsp://192.168.1.10/livestream/12`
- Player: IjkPlayer (`tv.danmaku.ijk.media.player.IjkMediaPlayer`) via `PVCamPlayerHelperExt`
- Renders on Android `TextureView` with `SurfaceTextureListener`
- Also has HTTP endpoint: `http://192.168.1.10/` for camera commands

### Map
- Tiny 160×90dp PIP in top-left
- Uses `NationMapView` (wraps Google/Gaode maps)
- `CustomCycleLayout` allows swapping map↔video by tapping
- Map toolbar (when expanded): remember route, direction lock, layer switch, location, interest points

### Dual Rockers
- `ShipRockerView` — custom view, 180×180dp each
- Left rocker: bottom-left, 70dp margin left, 20dp margin bottom
- Right rocker: bottom-right, 70dp margin right, 20dp margin bottom
- Custom drawables: `ship_rocker_up_down_default`, `ship_rocker_left_right_deafult`, `ship_rocker_center_button_unselect`

### Top Bar (ShipTopView)
- Compact strip across top, 40dp height
- Contains: battery icon+%, GPS sats, signal strength, connection mode, warnings

### Left Quick Actions (sidebar, 46dp icons)
- RTH (slide to confirm)
- Intelligent mode
- Sonar settings
- Hook/nest control
- Lock (water lock)
- More functions
- Scan area
- Interest points
- Fish finder

### Bottom Bar
- Speed display: large number + "m/s" unit
- Distance display: large number + "m" unit
- LMH speed mode selector (Low/Med/High bar)
- Light control button
- CNU view (camera capture/record)
- Media gallery button

### Right Side
- Camera menu: photo/video mode, settings, exposure, white balance

### Safety Slides
- RTH: `SlideReturnView` — slide right to confirm return
- Arm/Unlock: `SlideReturnView` — slide right to arm motors

## Phases

### Phase 1: Fix Critical Bugs (flickering, navigation loop) [status: pending]
- Replace competing `pushReplacement` with proper route state machine
- Add navigation guard to prevent bounce loop

### Phase 2: Add RTSP Video Player [status: pending]
- Add `media_kit` or `flutter_vlc_player` package for RTSP
- Create full-screen video surface as dashboard background
- Connect to `rtsp://192.168.1.10/livestream/12`
- Add loading indicator
- Platform channel for video lifecycle

### Phase 3: Rebuild Dashboard Layout [status: pending]
- Full-screen video as background
- Map as 160×90 PIP overlay in top-left (swappable)
- Top telemetry bar (compact, horizontal)
- Left quick-action sidebar (vertical icons)
- Dual rockers (left + right, 180dp)
- Bottom bar (speed, distance, LMH, light, CNU, media)
- Right camera menu

### Phase 4: Implement Dual Rockers [status: pending]
- Left rocker: thrust (forward/back)
- Right rocker: yaw (turn left/right)
- Custom painting matching original drawables
- Dead zone, speed scaling, callback modes

### Phase 5: Camera Controls [status: pending]
- Camera menu (right side): photo/video/settings
- CNU view: capture photo, start/stop recording
- Camera HTTP commands to `http://192.168.1.10/`

### Phase 6: Safety Features [status: pending]
- Slide-to-confirm for RTH (not just button tap)
- Slide-to-unlock for arm
- Low power return handling
- Geofence warnings

### Phase 7: Settings & Secondary Screens [status: complete]
- Common settings (about, battery detail, control settings, maintenance)
- Mag calibration UI (bridge exists)
- Firmware update UI
- Media gallery
- Sonar pairing/settings

### Phase 8: End-to-End Device Testing [status: pending]
- Every feature verified on device with drone connected
- Screenshots at every step
- No feature left untested

## Decisions
- Use `media_kit` for RTSP (modern, maintained, supports RTSP)
- Keep existing SDK connection layer (working correctly)
- Keep existing EventChannel/MethodChannel architecture
- Rebuild only the UI layer — SDK bridge stays

## Errors Encountered
(none yet)
