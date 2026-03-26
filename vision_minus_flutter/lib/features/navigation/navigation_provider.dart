import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/waypoint.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/sdk/sdk_constants.dart';

enum MissionState { idle, editing, uploading, uploaded, running, paused, completed, error }

class NavigationState {
  final List<Waypoint> waypoints;
  final MissionState missionState;
  final int currentWaypointIndex;
  final String? statusMessage;
  final double defaultThrust;

  const NavigationState({
    this.waypoints = const [],
    this.missionState = MissionState.idle,
    this.currentWaypointIndex = -1,
    this.statusMessage,
    this.defaultThrust = 30,
  });

  NavigationState copyWith({
    List<Waypoint>? waypoints,
    MissionState? missionState,
    int? currentWaypointIndex,
    String? statusMessage,
    double? defaultThrust,
  }) {
    return NavigationState(
      waypoints: waypoints ?? this.waypoints,
      missionState: missionState ?? this.missionState,
      currentWaypointIndex: currentWaypointIndex ?? this.currentWaypointIndex,
      statusMessage: statusMessage,
      defaultThrust: defaultThrust ?? this.defaultThrust,
    );
  }
}

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, NavigationState>((ref) {
  return NavigationNotifier();
});

class NavigationNotifier extends StateNotifier<NavigationState> {
  StreamSubscription? _navSub;

  NavigationNotifier() : super(const NavigationState()) {
    _listenToNavEvents();
  }

  void _listenToNavEvents() {
    _navSub = PowerSdkBridge.navigationStream.listen((event) {
      final type = event['type'] as String?;
      switch (type) {
        case 'upload_waypoint_result':
          final result = event['result'] as int? ?? -1;
          if (result == 0) {
            state = state.copyWith(
              missionState: MissionState.uploaded,
              statusMessage: 'Waypoints uploaded',
            );
          } else {
            state = state.copyWith(
              missionState: MissionState.error,
              statusMessage: 'Upload failed (code: $result)',
            );
          }
        case 'mission_run_status':
          final seq = event['seq'] as int? ?? 0;
          state = state.copyWith(
            missionState: MissionState.running,
            currentWaypointIndex: seq,
            statusMessage: 'Running WP ${seq + 1}/${state.waypoints.length}',
          );
        case 'execute_return_over':
          // Mission completed or RTH done
          if (state.missionState == MissionState.running) {
            state = state.copyWith(
              missionState: MissionState.completed,
              statusMessage: 'Mission complete',
            );
          }
      }
    });
  }

  // --- Waypoint editing ---

  void startEditing() {
    state = state.copyWith(missionState: MissionState.editing);
  }

  void stopEditing() {
    if (state.waypoints.isEmpty) {
      state = state.copyWith(missionState: MissionState.idle);
    } else {
      state = state.copyWith(missionState: MissionState.idle);
    }
  }

  void addWaypoint(double lat, double lon) {
    final wp = Waypoint(
      lat: lat,
      lon: lon,
      thrustPercent: state.defaultThrust,
    );
    state = state.copyWith(
      waypoints: [...state.waypoints, wp],
      missionState: MissionState.editing,
    );
  }

  void updateWaypoint(int index, Waypoint wp) {
    if (index < 0 || index >= state.waypoints.length) return;
    final updated = List<Waypoint>.from(state.waypoints);
    updated[index] = wp;
    state = state.copyWith(waypoints: updated);
  }

  void removeWaypoint(int index) {
    if (index < 0 || index >= state.waypoints.length) return;
    final updated = List<Waypoint>.from(state.waypoints)..removeAt(index);
    state = state.copyWith(waypoints: updated);
  }

  void clearWaypoints() {
    state = state.copyWith(
      waypoints: [],
      missionState: MissionState.idle,
      currentWaypointIndex: -1,
    );
  }

  void setDefaultThrust(double thrust) {
    state = state.copyWith(defaultThrust: thrust.clamp(1, 100));
  }

  // --- Mission execution ---

  Future<void> uploadMission() async {
    if (state.waypoints.isEmpty) return;
    state = state.copyWith(
      missionState: MissionState.uploading,
      statusMessage: 'Uploading...',
    );
    await PowerSdkBridge.uploadWaypoints(
      state.waypoints.map((wp) => wp.toUploadMap()).toList(),
    );
  }

  Future<void> startMission() async {
    state = state.copyWith(
      missionState: MissionState.running,
      currentWaypointIndex: 0,
      statusMessage: 'Starting mission...',
    );
    await PowerSdkBridge.setSailMode(SailMode.waypoint);
  }

  Future<void> pauseMission() async {
    state = state.copyWith(
      missionState: MissionState.paused,
      statusMessage: 'Mission paused',
    );
    await PowerSdkBridge.setSailMode(SailMode.manual);
  }

  Future<void> resumeMission() async {
    state = state.copyWith(
      missionState: MissionState.running,
      statusMessage: 'Resuming...',
    );
    await PowerSdkBridge.setSailMode(SailMode.waypoint);
  }

  Future<void> cancelMission() async {
    await PowerSdkBridge.setSailMode(SailMode.manual);
    state = state.copyWith(
      missionState: MissionState.idle,
      currentWaypointIndex: -1,
      statusMessage: 'Mission cancelled',
    );
  }

  @override
  void dispose() {
    _navSub?.cancel();
    super.dispose();
  }
}
