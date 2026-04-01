import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../core/models/boat_state.dart' as bs;
import '../../core/sdk/power_sdk_bridge.dart';
import '../../shared/utils/geo_utils.dart';
import '../connection/connection_provider.dart';
import '../connection/connection_screen.dart';
import '../map/map_provider.dart';
import '../map/map_widget.dart';
import '../media/media_gallery_screen.dart';
import '../settings/settings_panel.dart';
import '../settings/unit_system_provider.dart';
import '../spot_lock/spot_lock_controller.dart';
import '../rth/rth_provider.dart';
import 'widgets/bottom_info_bar.dart';
import 'widgets/camera_controls.dart';
import 'widgets/left_action_sidebar.dart';
import 'widgets/map_pip_widget.dart';
import 'widgets/ship_rocker.dart';
import '../navigation/waypoint_editor_panel.dart';
import '../navigation/mission_controls.dart';
import 'widgets/slide_confirm_overlay.dart';
import 'widgets/top_telemetry_bar.dart';
import 'widgets/video_feed_widget.dart';
import 'widgets/virtual_joystick.dart';

enum _SlideAction {
  rth,
  arm,
  disarm,
}

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen>
    with WidgetsBindingObserver {
  bool _hasNavigatedAway = false;
  bool _mapExpanded = false;
  bool _hookOpened = false;
  bool _lightOn = false;
  bool _isRecording = false;
  bool _showSettingsPanel = false;
  bool _showWaypointPanel = false;
  _SlideAction? _pendingSlideAction;
  bool _wasInBackground = false;

  int _leftY = 0;
  int _rightX = 0;
  bs.CommandIntentState _lastIntentState = bs.CommandIntentState.idle;
  String _lastIntentReason = '';
  int _lastIntentTargetStatus = -1;
  DateTime? _intentFadeStarted;
  Timer? _intentFadeResetTimer;
  bool _intentFadeOut = false;
  bool _intentResetToIdle = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _wasInBackground = true;
      return;
    }

    if (state == AppLifecycleState.resumed) {
      unawaited(_triggerForegroundResync());
    }
  }

  @override
  void dispose() {
    _intentFadeResetTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final boat = ref.watch(boatStateProvider);
    final phonePos = ref.watch(phonePositionProvider);
    final unitSystem = ref.watch(unitSystemProvider);
    final spotLock = ref.watch(spotLockProvider);
    final isArmed = boat.isUnlockConfirmed;
    final speedMode = _normalizedSpeedMode(boat.speedMode);

    _syncUnlockIntentFadeState(boat);

    if (!_hasNavigatedAway &&
        boat.connectionState == bs.ConnectionState.disconnected) {
      _hasNavigatedAway = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const ConnectionScreen()),
        );
      });
    }

    final distanceMeters = phonePos.maybeWhen(
      data: (pos) {
        if (!boat.gps.hasFix || boat.gps.latE7 == 0) return 0.0;
        return GeoUtils.distanceMeters(
          boat.gps.lat,
          boat.gps.lon,
          pos.latitude,
          pos.longitude,
        );
      },
      orElse: () => 0.0,
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Layer 0
            _mapExpanded ? const MapWidget() : const VideoFeedWidget(),

            // Layer 1
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: TopTelemetryBar(
                intentState: _intentResetToIdle
                    ? bs.CommandIntentState.idle
                    : boat.armCommandIntentState,
                intentReason: boat.armCommandIntentReason,
                intentTargetStatus: boat.armCommandTargetStatus,
                intentOpacity:
                    _intentFadeStarted != null && _intentFadeOut ? 0 : 1,
              ),
            ),

            // Layer 2
            Positioned(
              top: 38,
              left: 42,
              child: _mapExpanded
                  ? _videoPip(onTap: _toggleMapVideo)
                  : MapPipWidget(onTap: _toggleMapVideo),
            ),

            // Layer 3
            Positioned(
              top: 136,
              left: 25,
              child: LeftActionSidebar(
                hookOpened: _hookOpened,
                isArmed: isArmed,
                onRthTap: () => _showSlideAction(_SlideAction.rth),
                onIntelligentTap: _openIntelligentMode,
                onToggleHook: _toggleHook,
                onArmToggleTap: () => _showSlideAction(
                    isArmed ? _SlideAction.disarm : _SlideAction.arm),
              ),
            ),

            // Layer 4
            if (!_showWaypointPanel)
              ..._buildRockerLayout(speedMode),

            // Layer 6
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Center(
                  child: BottomInfoBar(
                speedMps: boat.gps.speedMps,
                distanceMeters: distanceMeters,
                speedMode: speedMode,
                lightOn: _lightOn,
                unitSystem: unitSystem,
                onSpeedModeChanged: (mode) => PowerSdkBridge.setSpeedMode(mode),
                onLightTap: _toggleLight,
              )),
            ),

            // Layer 7
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: CameraControls(
                isRecording: _isRecording,
                onPhoto: _capturePhoto,
                onVideoToggle: _toggleRecording,
                onSettings: () => setState(() => _showSettingsPanel = true),
              ),
            ),

            // Layer 8 - positioned above the right rocker
            Positioned(
              bottom: 210,
              right: 8,
              child: BottomRightControls(
                lightOn: _lightOn,
                onCnuTap: _showLocatorMenu,
                onLightTap: _toggleLight,
                onMediaTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MediaGalleryScreen(),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 258,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(999),
                    onTap: () =>
                        ref.read(spotLockProvider.notifier).toggle(),
                    child: Ink(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: _spotLockColor(spotLock.state)
                            .withValues(alpha: 0.35),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white38),
                      ),
                      child: const Icon(
                        Icons.gps_fixed,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  if (spotLock.state != SpotLockState.idle)
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white24),
                      ),
                      child: Text(
                        '${spotLock.distanceMeters.toStringAsFixed(1)}m',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                ],
              ),
            ),
            if (_pendingSlideAction != null)
              SlideConfirmOverlay(
                title: _slideTitle(_pendingSlideAction!),
                description: _slideDescription(_pendingSlideAction!),
                leadingIcon: _slideIcon(_pendingSlideAction!),
                onCancel: () => setState(() => _pendingSlideAction = null),
                onConfirmed: _confirmSlideAction,
              ),
            if (_showSettingsPanel)
              SettingsPanel(
                isArmed: isArmed,
                onClose: () => setState(() => _showSettingsPanel = false),
              ),
            if (_showWaypointPanel)
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                width: 320,
                child: Container(
                  color: Colors.grey[900],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 2, 4, 0),
                        child: Row(
                          children: [
                            const Text('Route Planner',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Icons.close,
                                  color: Colors.white, size: 20),
                              onPressed: () =>
                                  setState(() => _showWaypointPanel = false),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: WaypointEditorPanel()),
                      const MissionControls(),
                    ],
                  ),
                ),
              ),
            if (boat.gps.satellites <= 8)
              Positioned(
                top: 132,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.orangeAccent.withValues(alpha: 0.7)),
                    ),
                    child: const Text(
                      'Low GPS lock: mission start can be blocked indoors',
                      style: TextStyle(color: Colors.orangeAccent, fontSize: 11),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _videoPip({required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white38),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54, blurRadius: 8, offset: Offset(0, 3)),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: const VideoFeedWidget(),
      ),
    );
  }

  void _toggleMapVideo() {
    setState(() => _mapExpanded = !_mapExpanded);
  }

  void _openIntelligentMode() {
    setState(() {
      _showWaypointPanel = !_showWaypointPanel;
      if (_showWaypointPanel) {
        _mapExpanded = true;
      }
    });
  }

  void _showLocatorMenu() {
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(40, 120, 0, 0),
      items: const [
        PopupMenuItem(value: 'boat', child: Text('Locate Drone')),
        PopupMenuItem(value: 'phone', child: Text('Locate Phone')),
        PopupMenuItem(value: 'follow_on', child: Text('Follow Drone: On')),
        PopupMenuItem(value: 'follow_off', child: Text('Follow Drone: Off')),
      ],
    ).then((value) {
      switch (value) {
        case 'boat':
          setState(() => _mapExpanded = true);
          ref.read(mapFollowModeProvider.notifier).state = MapFollowMode.drone;
          ref.read(mapFocusCommandProvider.notifier).state = MapFocusCommand.boat;
          break;
        case 'phone':
          setState(() => _mapExpanded = true);
          ref.read(mapFollowModeProvider.notifier).state = MapFollowMode.phone;
          ref.read(mapFocusCommandProvider.notifier).state = MapFocusCommand.phone;
          break;
        case 'follow_on':
          ref.read(mapFollowModeProvider.notifier).state = MapFollowMode.drone;
          break;
        case 'follow_off':
          ref.read(mapFollowModeProvider.notifier).state = MapFollowMode.free;
          break;
      }
    });
  }

  Future<void> _toggleLight() async {
    final next = !_lightOn;
    setState(() => _lightOn = next);
    await PowerSdkBridge.controlLight(next ? 100 : 0);
  }

  Future<void> _toggleHook() async {
    final next = !_hookOpened;
    setState(() => _hookOpened = next);
    await PowerSdkBridge.setNestOpenerStatus(next ? 1 : 0);
  }

  Future<void> _capturePhoto() async {
    await PowerSdkBridge.switchToPhotoMode();
    final result = await PowerSdkBridge.takePhoto();
    if (result != 0) {
      _showToast('Photo capture failed ($result)');
      return;
    }
    _showToast('Photo captured');
  }

  Future<void> _toggleRecording() async {
    const cameraBase = 'http://192.168.1.10';
    try {
      if (_isRecording) {
        final resp = await http.get(
          Uri.parse('$cameraBase/cgi-bin/hi3559/record.cgi?record&-cmd=stop'),
        ).timeout(const Duration(seconds: 3));
        if (resp.statusCode == 200) {
          setState(() => _isRecording = false);
          _showToast('Recording stopped');
        } else {
          _showToast('Stop recording failed (HTTP ${resp.statusCode})');
        }
      } else {
        final resp = await http.get(
          Uri.parse('$cameraBase/cgi-bin/hi3559/record.cgi?record&-cmd=start'),
        ).timeout(const Duration(seconds: 3));
        if (resp.statusCode == 200) {
          setState(() => _isRecording = true);
          _showToast('Recording started');
        } else {
          _showToast('Start recording failed (HTTP ${resp.statusCode})');
        }
      }
    } catch (e) {
      _showToast('Recording error: $e');
    }
  }

  void _showSlideAction(_SlideAction action) {
    setState(() => _pendingSlideAction = action);
  }

  Future<void> _confirmSlideAction() async {
    final action = _pendingSlideAction;
    if (action == null) {
      return;
    }

    setState(() => _pendingSlideAction = null);
    switch (action) {
      case _SlideAction.rth:
        final boat = ref.read(boatStateProvider);
        if (!boat.gps.isSane) {
          _showToast('RTH blocked: drone GPS position invalid');
          break;
        }
        if (!boat.isArmed) {
          _showToast('RTH blocked: drone not armed');
          break;
        }
        final rthNotifier = ref.read(rthProvider.notifier);
        if (!rthNotifier.isHomeVerified) {
          await rthNotifier.setHomeToPhone();
        }
        await rthNotifier.returnToHome();
        if (!mounted) return;
        final rthState = ref.read(rthProvider);
        _showToast(rthState.statusMessage ?? 'RTH triggered');
        break;
      case _SlideAction.arm:
        final result =
            await ref.read(boatStateProvider.notifier).requestArmStatus(1);
        _showToast(result == 0
            ? 'Unlock request sent; waiting for callback confirmation'
            : 'Unlock failed ($result)');
        break;
      case _SlideAction.disarm:
        final result =
            await ref.read(boatStateProvider.notifier).requestArmStatus(0);
        _showToast(result == 0
            ? 'Disarm request sent; waiting for callback confirmation'
            : 'Disarm failed ($result)');
        break;
    }
  }

  bool _isTerminalIntentState(bs.CommandIntentState state) {
    return state == bs.CommandIntentState.confirmed ||
        state == bs.CommandIntentState.failed ||
        state == bs.CommandIntentState.timeout;
  }

  void _syncUnlockIntentFadeState(bs.BoatState boat) {
    final nextState = boat.armCommandIntentState;
    final nextReason = boat.armCommandIntentReason;
    final nextTargetStatus = boat.armCommandTargetStatus;
    final intentChanged = nextState != _lastIntentState ||
        nextReason != _lastIntentReason ||
        nextTargetStatus != _lastIntentTargetStatus;

    if (!intentChanged) {
      return;
    }

    _lastIntentState = nextState;
    _lastIntentReason = nextReason;
    _lastIntentTargetStatus = nextTargetStatus;

    _intentFadeResetTimer?.cancel();

    if (_isTerminalIntentState(nextState)) {
      _intentFadeStarted = DateTime.now();
      _intentResetToIdle = false;
      _intentFadeOut = false;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() => _intentFadeOut = true);
      });

      _intentFadeResetTimer = Timer(const Duration(seconds: 5), () {
        if (!mounted) return;
        setState(() {
          _intentResetToIdle = true;
          _intentFadeOut = false;
          _intentFadeStarted = null;
        });
      });
      return;
    }

    _intentFadeStarted = null;
    _intentFadeOut = false;
    _intentResetToIdle = false;
  }

  String _slideTitle(_SlideAction action) {
    switch (action) {
      case _SlideAction.rth:
        return 'Slide to Return Home';
      case _SlideAction.arm:
        return 'Slide to Unlock Thrusters';
      case _SlideAction.disarm:
        return 'Slide to Lock Thrusters';
    }
  }

  String _slideDescription(_SlideAction action) {
    switch (action) {
      case _SlideAction.rth:
        return 'Release before completion to cancel return command.';
      case _SlideAction.arm:
        return 'Matches original app water-lock unlock action.';
      case _SlideAction.disarm:
        return 'Locks thrust output immediately.';
    }
  }

  IconData _slideIcon(_SlideAction action) {
    switch (action) {
      case _SlideAction.rth:
        return Icons.home_filled;
      case _SlideAction.arm:
      case _SlideAction.disarm:
        return Icons.power_settings_new;
    }
  }

  void _sendRocker() {
    ref
        .read(spotLockProvider.notifier)
        .setManualInputActive(_leftY != 0 || _rightX != 0);

    final boat = ref.read(boatStateProvider);
    final manualReady =
        boat.connectionState == bs.ConnectionState.connected &&
        boat.isUnlockConfirmed;

    if (!manualReady) {
      unawaited(PowerSdkBridge.controlRocker(x: 0, y: 0, r: 0, z: 0));
      return;
    }

    final thrust = _leftY.clamp(-1000, 1000);
    final steering = _rightX.clamp(-1000, 1000);

    unawaited(PowerSdkBridge.controlRocker(
      x: thrust,
      y: 0,
      r: steering,
      z: 0,
    ));
  }

  int _normalizedSpeedMode(int mode) {
    if (mode < 1 || mode > 3) {
      return 1;
    }
    return mode;
  }

  List<Widget> _buildRockerLayout(int speedMode) {
    switch (speedMode) {
      case 2:
        return [
          Positioned(
            bottom: 20,
            left: 82,
            child: ShipRocker(
              size: 128,
              label: 'L',
              axis: ShipRockerAxis.horizontal,
              onAxisChanged: (value) {
                _rightX = (value * 1000).round().clamp(-1000, 1000);
                _sendRocker();
              },
              onRelease: () {
                _rightX = 0;
                _sendRocker();
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 82,
            child: ShipRocker(
              size: 128,
              label: 'R',
              axis: ShipRockerAxis.vertical,
              onAxisChanged: (value) {
                _leftY = (value * 1000).round().clamp(-1000, 1000);
                _sendRocker();
              },
              onRelease: () {
                _leftY = 0;
                _sendRocker();
              },
            ),
          ),
        ];
      case 3:
        return [
          Positioned(
            bottom: 20,
            left: 82,
            child: VirtualJoystick(
              size: 140,
              label: 'Drive',
              onUpdate: (x, y) {
                _rightX = (x * 1000).round().clamp(-1000, 1000);
                _leftY = (y * 1000).round().clamp(-1000, 1000);
                _sendRocker();
              },
              onRelease: () {
                _rightX = 0;
                _leftY = 0;
                _sendRocker();
              },
            ),
          ),
        ];
      case 1:
      default:
        return [
          Positioned(
            bottom: 20,
            left: 82,
            child: ShipRocker(
              size: 128,
              label: 'L',
              axis: ShipRockerAxis.vertical,
              onAxisChanged: (value) {
                _leftY = (value * 1000).round().clamp(-1000, 1000);
                _sendRocker();
              },
              onRelease: () {
                _leftY = 0;
                _sendRocker();
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 82,
            child: ShipRocker(
              size: 128,
              label: 'R',
              axis: ShipRockerAxis.horizontal,
              onAxisChanged: (value) {
                _rightX = (value * 1000).round().clamp(-1000, 1000);
                _sendRocker();
              },
              onRelease: () {
                _rightX = 0;
                _sendRocker();
              },
            ),
          ),
        ];
    }
  }

  Color _spotLockColor(SpotLockState state) {
    switch (state) {
      case SpotLockState.idle:
        return Colors.grey;
      case SpotLockState.acquiring:
        return Colors.blue;
      case SpotLockState.holding:
        return Colors.green;
      case SpotLockState.correcting:
        return Colors.orange;
      case SpotLockState.suspended:
        return Colors.red;
    }
  }

  Future<void> _triggerForegroundResync() async {
    final notifier = ref.read(boatStateProvider.notifier);
    await notifier.onAppResume();
    if (_wasInBackground) {
      await notifier.onForegroundAfterExternalControl();
      _wasInBackground = false;
    }
  }

  void _showToast(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
