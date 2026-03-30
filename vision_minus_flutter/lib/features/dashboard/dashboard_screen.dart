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
import '../rth/rth_provider.dart';
import '../settings/settings_panel.dart';
import '../settings/unit_system_provider.dart';
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

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  bool _hasNavigatedAway = false;
  bool _mapExpanded = false;
  bool _hookOpened = false;
  bool _lightOn = false;
  bool _isRecording = false;
  bool _isArmed = false;
  bool _showSettingsPanel = false;
  bool _showWaypointPanel = false;
  _SlideAction? _pendingSlideAction;

  int _leftY = 0;
  int _rightX = 0;
  StreamSubscription<Map<String, dynamic>>? _connectionEventSub;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(rthProvider.notifier).setHomeToPhone();
    });
    _connectionEventSub = PowerSdkBridge.connectionStream.listen((event) {
      if (event['type'] != 'arm_status') {
        return;
      }
      final status = (event['status'] as num?)?.toInt() ?? 0;
      if (!mounted) {
        return;
      }
      setState(() => _isArmed = status == 1);
    });
  }

  @override
  void dispose() {
    _connectionEventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final boat = ref.watch(boatStateProvider);
    final phonePos = ref.watch(phonePositionProvider);
    final unitSystem = ref.watch(unitSystemProvider);

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
            const Positioned(
                top: 0, left: 0, right: 0, child: TopTelemetryBar()),

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
              top: 116,
              left: 25,
              child: LeftActionSidebar(
                hookOpened: _hookOpened,
                isArmed: _isArmed,
                onRthTap: () => _showSlideAction(_SlideAction.rth),
                onIntelligentTap: _openIntelligentMode,
                onToggleHook: _toggleHook,
                onArmToggleTap: () => _showSlideAction(
                    _isArmed ? _SlideAction.disarm : _SlideAction.arm),
              ),
            ),

            // Layer 4
            if (!_showWaypointPanel)
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

            // Layer 5
            if (!_showWaypointPanel)
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

            // Layer 6
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Center(
                  child: BottomInfoBar(
                speedMps: boat.gps.speedMps,
                distanceMeters: distanceMeters,
                speedMode: boat.speedMode,
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
                isArmed: _isArmed,
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
                top: 40,
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
                      'Low GPS lock: thrust & mission start can be blocked indoors',
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
          ref.read(mapFocusCommandProvider.notifier).state = MapFocusCommand.boat;
          break;
        case 'phone':
          setState(() => _mapExpanded = true);
          ref.read(mapFocusCommandProvider.notifier).state = MapFocusCommand.phone;
          break;
        case 'follow_on':
          ref.read(mapFollowBoatProvider.notifier).state = true;
          break;
        case 'follow_off':
          ref.read(mapFollowBoatProvider.notifier).state = false;
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
        await PowerSdkBridge.rtl();
        _showToast('RTH triggered');
        break;
      case _SlideAction.arm:
        final result = await PowerSdkBridge.setArmStatus(1);
        _showToast(result == 0 ? 'Arm command sent' : 'Arm failed ($result)');
        break;
      case _SlideAction.disarm:
        final result = await PowerSdkBridge.setArmStatus(0);
        _showToast(
            result == 0 ? 'Disarm command sent' : 'Disarm failed ($result)');
        break;
    }
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
    PowerSdkBridge.controlRocker(x: _rightX, y: 0, r: _leftY, z: 0);
  }

  void _showToast(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
