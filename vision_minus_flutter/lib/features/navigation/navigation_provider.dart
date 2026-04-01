import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/models/boat_state.dart' as bs;
import '../../core/models/gps_position.dart';
import '../../core/models/waypoint.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/sdk/sdk_constants.dart';
import '../connection/connection_provider.dart';

enum MissionState { idle, editing, uploading, uploaded, running, paused, completed, error }

enum MissionStartStage {
  idle,
  uploadSent,
  uploadAcked,
  uploadConfirmed,
  modeSent,
  modeAcked,
  modeConfirmed,
  waitingRunConfirm,
  confirmed,
  timedOut,
  failed,
}

class NavigationState {
  final List<Waypoint> waypoints;
  final MissionState missionState;
  final int currentWaypointIndex;
  final String? statusMessage;
  final double defaultThrust;
  final bs.CommandIntentState missionUploadCommandIntentState;
  final bs.CommandIntentState missionCommandIntentState;
  final bs.CommandIntentState sailModeCommandIntentState;
  final MissionStartStage missionStartStage;
  final int missionStartAttemptId;
  final int missionLifecycleUpdatedAtMs;
  final int missionLastRunSequence;
  final String? commandIntentReason;
  final int? requestedSailMode;

  const NavigationState({
    this.waypoints = const [],
    this.missionState = MissionState.idle,
    this.currentWaypointIndex = -1,
    this.statusMessage,
    this.defaultThrust = 5,
    this.missionUploadCommandIntentState = bs.CommandIntentState.idle,
    this.missionCommandIntentState = bs.CommandIntentState.idle,
    this.sailModeCommandIntentState = bs.CommandIntentState.idle,
    this.missionStartStage = MissionStartStage.idle,
    this.missionStartAttemptId = 0,
    this.missionLifecycleUpdatedAtMs = 0,
    this.missionLastRunSequence = -1,
    this.commandIntentReason,
    this.requestedSailMode,
  });

  NavigationState copyWith({
    List<Waypoint>? waypoints,
    MissionState? missionState,
    int? currentWaypointIndex,
    String? statusMessage,
    double? defaultThrust,
    bs.CommandIntentState? missionUploadCommandIntentState,
    bs.CommandIntentState? missionCommandIntentState,
    bs.CommandIntentState? sailModeCommandIntentState,
    MissionStartStage? missionStartStage,
    int? missionStartAttemptId,
    int? missionLifecycleUpdatedAtMs,
    int? missionLastRunSequence,
    String? commandIntentReason,
    int? requestedSailMode,
    bool clearRequestedSailMode = false,
  }) {
    return NavigationState(
      waypoints: waypoints ?? this.waypoints,
      missionState: missionState ?? this.missionState,
      currentWaypointIndex: currentWaypointIndex ?? this.currentWaypointIndex,
      statusMessage: statusMessage,
      defaultThrust: defaultThrust ?? this.defaultThrust,
      missionUploadCommandIntentState:
          missionUploadCommandIntentState ?? this.missionUploadCommandIntentState,
      missionCommandIntentState:
          missionCommandIntentState ?? this.missionCommandIntentState,
      sailModeCommandIntentState:
          sailModeCommandIntentState ?? this.sailModeCommandIntentState,
      missionStartStage: missionStartStage ?? this.missionStartStage,
      missionStartAttemptId: missionStartAttemptId ?? this.missionStartAttemptId,
      missionLifecycleUpdatedAtMs:
          missionLifecycleUpdatedAtMs ?? this.missionLifecycleUpdatedAtMs,
      missionLastRunSequence: missionLastRunSequence ?? this.missionLastRunSequence,
      commandIntentReason: commandIntentReason,
      requestedSailMode:
          clearRequestedSailMode ? null : requestedSailMode ?? this.requestedSailMode,
    );
  }
}

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, NavigationState>((ref) {
  return NavigationNotifier(ref);
});

class NavigationNotifier extends StateNotifier<NavigationState> {
  final Ref _ref;
  StreamSubscription? _navSub;
  Timer? _missionStartTimeout;
  Timer? _sailModeTimeout;
  int _missionStartAttemptCounter = 0;

  NavigationNotifier(this._ref) : super(const NavigationState()) {
    PowerSdkBridge.init();
    _listenToNavEvents();
  }

  void _listenToNavEvents() {
    _navSub = PowerSdkBridge.navigationStream.listen((event) {
      final type = event['type'] as String?;
      switch (type) {
        case 'upload_waypoint_result':
          _onUploadWaypointResult(event);
          break;
        case 'mission_run_status':
          _onMissionRunStatus(event);
          break;
        case 'set_sail_mode_result':
          _onSetSailModeResult(event);
          break;
        case 'sail_mode':
          _onSailMode(event);
          break;
        case 'mode_error':
          _onModeError(event);
          break;
        case 'execute_return_over':
          // Mission completed or RTH done
          if (state.missionState == MissionState.running) {
            state = state.copyWith(
              missionState: MissionState.completed,
              statusMessage: 'Mission complete',
              missionStartStage: MissionStartStage.confirmed,
            );
          }
          break;
        default:
          break;
      }
    });
  }

  void _onUploadWaypointResult(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    final result = (event['result'] as num?)?.toInt() ?? -1;

    if (_isStaleMissionCallback(
      callbackTs: callbackTs,
      callbackType: 'upload_waypoint_result',
    )) {
      return;
    }

    if (_isMissionStartActive() &&
        !_isMissionStartStage(state.missionStartStage, {
          MissionStartStage.uploadSent,
          MissionStartStage.uploadAcked,
        })) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason:
            'drop upload callback result=$result while stage=${state.missionStartStage.name}',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    if (_isMissionStartStage(state.missionStartStage, {
      MissionStartStage.uploadSent,
      MissionStartStage.uploadAcked,
    })) {
      final attemptId = state.missionStartAttemptId;
      if (result != 0) {
        _failMissionStartAttempt(
          attemptId: attemptId,
          statusMessage: 'Start blocked: upload failed (code: $result)',
          reason: 'upload_waypoint_result=$result',
          uploadIntent: bs.CommandIntentState.failed,
        );
        return;
      }

      state = state.copyWith(
        missionState: MissionState.uploaded,
        missionUploadCommandIntentState: bs.CommandIntentState.confirmed,
        missionStartStage: MissionStartStage.uploadConfirmed,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
        statusMessage: 'Upload confirmed; requesting waypoint mode',
        commandIntentReason: 'Upload callback confirmed mission payload',
      );
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'confirmed',
        reason: 'attempt=$attemptId stage=upload_confirmed',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
        callbackTs: callbackTs,
      );
      unawaited(_requestMissionModeTransition(attemptId));
      return;
    }

    final manualUploadPending = state.missionStartStage == MissionStartStage.idle &&
        (state.missionUploadCommandIntentState == bs.CommandIntentState.sent ||
            state.missionUploadCommandIntentState == bs.CommandIntentState.acked);
    if (!manualUploadPending) {
      _logLifecycle(
        command: 'mission_upload',
        lifecycle: 'stale',
        reason:
            'drop upload callback result=$result outside pending manual upload state',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    if (result == 0) {
      state = state.copyWith(
        missionState: MissionState.uploaded,
        missionUploadCommandIntentState: bs.CommandIntentState.confirmed,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
        statusMessage: 'Waypoints uploaded',
      );
      return;
    }

    state = state.copyWith(
      missionState: MissionState.error,
      missionUploadCommandIntentState: bs.CommandIntentState.failed,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
      statusMessage: 'Upload failed (code: $result)',
    );
  }

  void _onSetSailModeResult(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    final result = (event['result'] as num?)?.toInt() ?? -1;

    if (_isStaleMissionCallback(
      callbackTs: callbackTs,
      callbackType: 'set_sail_mode_result',
    )) {
      return;
    }

    if (_isMissionStartActive() &&
        !_isMissionStartStage(state.missionStartStage, {
          MissionStartStage.modeSent,
          MissionStartStage.modeAcked,
          MissionStartStage.modeConfirmed,
          MissionStartStage.waitingRunConfirm,
        })) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason:
            'drop set_sail_mode_result=$result while stage=${state.missionStartStage.name}',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    if (result != 0 &&
        _isMissionStartActive() &&
        !_isMissionStartStage(state.missionStartStage, {
          MissionStartStage.modeSent,
          MissionStartStage.modeAcked,
        })) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason:
            'drop set_sail_mode_result=$result after mode confirmation stage=${state.missionStartStage.name}',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    if (result == 0) {
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.acked,
        missionStartStage:
            _isMissionStartStage(state.missionStartStage, {
              MissionStartStage.modeSent,
              MissionStartStage.uploadConfirmed,
            })
            ? MissionStartStage.modeAcked
            : state.missionStartStage,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
        commandIntentReason: 'Sail mode callback acknowledged',
      );
      _logLifecycle(
        command: 'sail_mode',
        lifecycle: 'acked',
        reason: 'set_sail_mode_result=0',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    _sailModeTimeout?.cancel();
    _missionStartTimeout?.cancel();

    if (_isMissionStartActive()) {
      _failMissionStartAttempt(
        attemptId: state.missionStartAttemptId,
        statusMessage: 'Start blocked: mode command rejected (code: $result)',
        reason: 'set_sail_mode_result=$result',
        sailIntent: bs.CommandIntentState.failed,
      );
      return;
    }

    state = state.copyWith(
      missionState: MissionState.error,
      sailModeCommandIntentState: bs.CommandIntentState.failed,
      missionCommandIntentState: bs.CommandIntentState.failed,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
      statusMessage: 'Sail mode failed (code: $result)',
      commandIntentReason: 'Sail mode callback rejected (code: $result)',
    );
    _logLifecycle(
      command: 'sail_mode',
      lifecycle: 'failed',
      reason: 'set_sail_mode_result=$result',
      callbackTs: callbackTs,
    );
  }

  void _onSailMode(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    final mode = (event['mode'] as num?)?.toInt() ?? -1;

    if (_isStaleMissionCallback(
      callbackTs: callbackTs,
      callbackType: 'sail_mode',
    )) {
      return;
    }

    if (_isMissionStartActive() &&
        !_isMissionStartStage(state.missionStartStage, {
          MissionStartStage.modeSent,
          MissionStartStage.modeAcked,
          MissionStartStage.modeConfirmed,
          MissionStartStage.waitingRunConfirm,
        })) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason:
            'drop sail_mode=$mode while stage=${state.missionStartStage.name}',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    final requestedMode = state.requestedSailMode;
    if (requestedMode == null) {
      return;
    }

    if (mode != requestedMode) {
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.stale,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
        commandIntentReason:
            'Stale sail_mode=$mode while waiting for $requestedMode',
      );
      _logLifecycle(
        command: 'sail_mode',
        lifecycle: 'stale',
        reason: 'received mode=$mode while waiting for $requestedMode',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
      return;
    }

    _sailModeTimeout?.cancel();

    final missionStage = _isMissionStartStage(state.missionStartStage, {
      MissionStartStage.modeSent,
      MissionStartStage.modeAcked,
      MissionStartStage.uploadConfirmed,
    })
        ? MissionStartStage.modeConfirmed
        : state.missionStartStage;

    state = state.copyWith(
      sailModeCommandIntentState: bs.CommandIntentState.confirmed,
      missionStartStage: missionStage,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
      statusMessage: _isMissionStartActive()
          ? 'Mode confirmed; waiting run callback'
          : state.statusMessage,
      commandIntentReason: 'Sail mode callback confirmed mode=$mode',
      requestedSailMode: mode,
    );

    _logLifecycle(
      command: 'sail_mode',
      lifecycle: 'confirmed',
      reason: 'sail_mode callback matched mode=$mode',
      stage: state.missionStartStage.name,
      attemptId: state.missionStartAttemptId,
      callbackTs: callbackTs,
    );

    if (_isMissionStartActive() && state.missionStartStage == MissionStartStage.modeConfirmed) {
      state = state.copyWith(
        missionStartStage: MissionStartStage.waitingRunConfirm,
        missionCommandIntentState: bs.CommandIntentState.acked,
        commandIntentReason: 'Mode confirmed; waiting mission_run_status callback',
      );
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'acked',
        reason: 'attempt=${state.missionStartAttemptId} stage=mode_confirmed',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
      );
    }
  }

  void _onMissionRunStatus(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    final seq = (event['seq'] as num?)?.toInt() ?? 0;
    final status = (event['status'] as num?)?.toInt() ?? -1;
    final missionStartActive = _isMissionStartActive();

    if (missionStartActive &&
        !_isMissionStartStage(state.missionStartStage, {
          MissionStartStage.modeSent,
          MissionStartStage.modeAcked,
          MissionStartStage.modeConfirmed,
          MissionStartStage.waitingRunConfirm,
        })) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason:
            'drop mission_run_status seq=$seq while stage=${state.missionStartStage.name}',
        stage: state.missionStartStage.name,
        attemptId: state.missionStartAttemptId,
        callbackTs: callbackTs,
        sequence: seq,
      );
      return;
    }

    if (_isStaleMissionCallback(
      callbackTs: callbackTs,
      callbackType: 'mission_run_status',
      sequence: seq,
    )) {
      return;
    }

    _missionStartTimeout?.cancel();
    state = state.copyWith(
      missionState: MissionState.running,
      currentWaypointIndex: seq,
      missionLastRunSequence: seq,
      missionStartStage:
          missionStartActive ? MissionStartStage.confirmed : state.missionStartStage,
      missionCommandIntentState: missionStartActive
          ? bs.CommandIntentState.confirmed
          : state.missionCommandIntentState,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
      statusMessage: 'Running WP ${seq + 1}/${state.waypoints.length}',
      commandIntentReason: missionStartActive
          ? 'Mission run callback confirmed start'
          : state.commandIntentReason,
    );

    _logLifecycle(
      command: 'mission_start',
      lifecycle: missionStartActive ? 'confirmed' : 'acked',
      reason: 'mission_run_status status=$status seq=$seq',
      stage: state.missionStartStage.name,
      attemptId: state.missionStartAttemptId,
      callbackTs: callbackTs,
      sequence: seq,
    );
  }

  void _onModeError(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    final error = event['error']?.toString().trim() ?? '';

    if (_isStaleMissionCallback(
      callbackTs: callbackTs,
      callbackType: 'mode_error',
    )) {
      return;
    }

    final modeReason = _modeErrorReasonText(error);
    if (_isMissionStartActive()) {
      _failMissionStartAttempt(
        attemptId: state.missionStartAttemptId,
        statusMessage: 'Start blocked: $modeReason',
        reason: 'mode_error="$error"',
        sailIntent: bs.CommandIntentState.failed,
      );
      return;
    }

    state = state.copyWith(
      missionState: MissionState.error,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, callbackTs),
      statusMessage: modeReason,
      commandIntentReason: 'Mode error callback: $error',
    );

    _logLifecycle(
      command: 'mission_start',
      lifecycle: 'failed',
      reason: 'mode_error="$error"',
      callbackTs: callbackTs,
    );
  }

  Future<void> _requestMissionModeTransition(int attemptId) async {
    if (!_isMissionStartActive() || state.missionStartAttemptId != attemptId) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason: 'Skip mode transition for inactive attempt=$attemptId',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
      );
      return;
    }

    final sentTs = DateTime.now().millisecondsSinceEpoch;
    state = state.copyWith(
      missionStartStage: MissionStartStage.modeSent,
      sailModeCommandIntentState: bs.CommandIntentState.sent,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, sentTs),
      statusMessage: 'Upload confirmed; switching to intelligent mode',
      commandIntentReason: 'Sent setSailMode(waypoint) after upload confirmation',
      requestedSailMode: SailMode.waypoint,
    );

    _logLifecycle(
      command: 'mission_start',
      lifecycle: 'sent',
      reason: 'attempt=$attemptId stage=mode_sent',
      stage: state.missionStartStage.name,
      attemptId: attemptId,
      callbackTs: sentTs,
    );

    final result = await PowerSdkBridge.setSailMode(SailMode.waypoint);
    final resultTs = DateTime.now().millisecondsSinceEpoch;
    if (state.missionStartAttemptId != attemptId || !_isMissionStartActive()) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason: 'Ignore mode method return for inactive attempt=$attemptId result=$result',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
        callbackTs: resultTs,
      );
      return;
    }

    if (result == 0) {
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.acked,
        missionStartStage: MissionStartStage.modeAcked,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, resultTs),
        statusMessage: 'Mode command acknowledged; waiting callbacks',
        commandIntentReason: 'setSailMode(waypoint) method acknowledged',
      );
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'acked',
        reason: 'attempt=$attemptId stage=mode_acked',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
        callbackTs: resultTs,
      );
      return;
    }

    _failMissionStartAttempt(
      attemptId: attemptId,
      statusMessage: 'Start blocked: mode command failed (code: $result)',
      reason: 'setSailMode method returned $result',
      sailIntent: bs.CommandIntentState.failed,
    );
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
      missionUploadCommandIntentState: bs.CommandIntentState.idle,
      missionCommandIntentState: bs.CommandIntentState.idle,
      missionStartStage: MissionStartStage.idle,
      missionStartAttemptId: 0,
      missionLastRunSequence: -1,
      clearRequestedSailMode: true,
    );
  }

  void setDefaultThrust(double thrust) {
    state = state.copyWith(defaultThrust: thrust.clamp(1, 100));
  }

  // --- Mission execution ---

  Future<void> uploadMission() async {
    if (state.waypoints.isEmpty) {
      state = state.copyWith(
        missionState: MissionState.error,
        statusMessage: 'Upload blocked: no waypoints to upload',
      );
      return;
    }

    final sentTs = DateTime.now().millisecondsSinceEpoch;
    state = state.copyWith(
      missionState: MissionState.uploading,
      missionUploadCommandIntentState: bs.CommandIntentState.sent,
      missionStartStage: MissionStartStage.idle,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, sentTs),
      statusMessage: 'Uploading waypoints...',
      commandIntentReason: 'Sent uploadWaypoints from manual upload action',
    );
    _logLifecycle(
      command: 'mission_upload',
      lifecycle: 'sent',
      reason: 'waypoints=${state.waypoints.length}',
      callbackTs: sentTs,
    );

    final result = await PowerSdkBridge.uploadWaypoints(
      state.waypoints.map((wp) => wp.toUploadMap()).toList(),
    );

    final ackTs = DateTime.now().millisecondsSinceEpoch;
    if (result == 0) {
      state = state.copyWith(
        missionUploadCommandIntentState: bs.CommandIntentState.acked,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, ackTs),
        statusMessage: 'Upload command acknowledged; waiting callback',
        commandIntentReason: 'uploadWaypoints method acknowledged',
      );
      _logLifecycle(
        command: 'mission_upload',
        lifecycle: 'acked',
        reason: 'uploadWaypoints method returned success',
        callbackTs: ackTs,
      );
      return;
    }

    if (result != 0) {
      state = state.copyWith(
        missionState: MissionState.error,
        missionUploadCommandIntentState: bs.CommandIntentState.failed,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, ackTs),
        statusMessage: 'Upload command failed (code: $result)',
        commandIntentReason: 'uploadWaypoints method failed (code: $result)',
      );
      _logLifecycle(
        command: 'mission_upload',
        lifecycle: 'failed',
        reason: 'uploadWaypoints method returned $result',
        callbackTs: ackTs,
      );
    }
  }

  Future<void> startMission() async {
    final boat = _ref.read(boatStateProvider);
    final gpsReason = _gpsGateDecisionReason(boat);
    final hasWaypoints = state.waypoints.isNotEmpty;

    if (!hasWaypoints) {
      _failMissionPreflight(
        statusMessage: 'Start blocked: missing home/position (no waypoints)',
        reason: 'mission start requires waypoints',
      );
      return;
    }

    if (boat.connectionState != bs.ConnectionState.connected) {
      _failMissionPreflight(
        statusMessage: 'Start blocked: connect to drone first',
        reason: 'connection_state=${boat.connectionState.name}',
      );
      return;
    }

    if (!boat.isGpsRawPresent) {
      _logGpsGateDecision(boat: boat, allowed: false, reason: gpsReason);
      _failMissionPreflight(
        statusMessage: 'Start blocked: missing home/position (boat GPS unavailable)',
        reason: 'gps_raw_present=false',
      );
      return;
    }

    if (!boat.gps.isSane) {
      _logGpsGateDecision(boat: boat, allowed: false, reason: 'gps coordinates invalid');
      _failMissionPreflight(
        statusMessage: 'Intelligent mode blocked: invalid boat GPS coordinates',
        reason: 'gps coordinates insane latE7=${boat.gps.latE7} lonE7=${boat.gps.lonE7}',
      );
      return;
    }

    if (!boat.isGpsAutonomyReady) {
      final reason = boat.effectiveGpsDegradedReason;
      final reasonText = _gpsBlockReasonText(reason);
      _logGpsGateDecision(boat: boat, allowed: false, reason: reasonText);
      _failMissionPreflight(
        statusMessage: 'Intelligent mode blocked: $reasonText',
        reason: 'gps gate failed: ${reason?.wireName ?? 'unknown'}',
      );
      return;
    }

    _logGpsGateDecision(boat: boat, allowed: true, reason: 'gps_autonomy_ready=true');

    final armFresh = boat.isDomainFresh(
      boat.armStatusUpdatedAtMs,
      bs.RuntimeCommandTimeouts.unlockConfirm,
    );
    if (!armFresh) {
      _failMissionPreflight(
        statusMessage: 'Start blocked: stale arm state (await fresh arm callback)',
        reason: 'arm_status stale updated_at_ms=${boat.armStatusUpdatedAtMs}',
      );
      return;
    }

    if (boat.isArmed) {
      _failMissionPreflight(
        statusMessage: 'Start blocked: disarm before Intelligent mode',
        reason: 'isArmed=true',
      );
      return;
    }

    try {
      await PowerSdkBridge.resyncMissionState(reason: 'startMission');
    } catch (_) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'acked',
        reason: 'Mission callback resync unavailable; continuing',
      );
    }

    _missionStartAttemptCounter += 1;
    final attemptId = _missionStartAttemptCounter;
    final sentTs = DateTime.now().millisecondsSinceEpoch;
    _missionStartTimeout?.cancel();
    _sailModeTimeout?.cancel();

    state = state.copyWith(
      missionState: MissionState.uploading,
      missionUploadCommandIntentState: bs.CommandIntentState.sent,
      missionCommandIntentState: bs.CommandIntentState.sent,
      sailModeCommandIntentState: bs.CommandIntentState.idle,
      missionStartStage: MissionStartStage.uploadSent,
      missionStartAttemptId: attemptId,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, sentTs),
      missionLastRunSequence: -1,
      statusMessage:
          'Mission start: upload sent (timeout ${bs.RuntimeCommandTimeouts.missionStart.inSeconds}s)',
      commandIntentReason: 'Attempt $attemptId sent uploadWaypoints',
      requestedSailMode: SailMode.waypoint,
    );

    _logLifecycle(
      command: 'mission_start',
      lifecycle: 'sent',
      reason: 'attempt=$attemptId stage=upload_sent',
      stage: state.missionStartStage.name,
      attemptId: attemptId,
      callbackTs: sentTs,
    );

    _armMissionTimeout(attemptId);
    final result = await PowerSdkBridge.uploadWaypoints(
      state.waypoints.map((wp) => wp.toUploadMap()).toList(),
    );
    final resultTs = DateTime.now().millisecondsSinceEpoch;
    if (state.missionStartAttemptId != attemptId || !_isMissionStartActive()) {
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'stale',
        reason: 'Ignore upload method return for inactive attempt=$attemptId result=$result',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
        callbackTs: resultTs,
      );
      return;
    }

    if (result == 0) {
      state = state.copyWith(
        missionUploadCommandIntentState: bs.CommandIntentState.acked,
        missionStartStage: MissionStartStage.uploadAcked,
        missionLifecycleUpdatedAtMs:
            _maxTimestamp(state.missionLifecycleUpdatedAtMs, resultTs),
        statusMessage: 'Upload command acknowledged; waiting upload callback',
        commandIntentReason: 'uploadWaypoints method acknowledged for mission start',
      );
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'acked',
        reason: 'attempt=$attemptId stage=upload_acked',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
        callbackTs: resultTs,
      );
      return;
    }

    _failMissionStartAttempt(
      attemptId: attemptId,
      statusMessage: 'Start blocked: upload command failed (code: $result)',
      reason: 'uploadWaypoints method returned $result',
      uploadIntent: bs.CommandIntentState.failed,
    );
  }

  Future<void> pauseMission() async {
    state = state.copyWith(
      missionState: MissionState.paused,
      statusMessage: 'Mission paused',
      sailModeCommandIntentState: bs.CommandIntentState.sent,
      commandIntentReason: 'Sent setSailMode(manual) for pause',
      requestedSailMode: SailMode.manual,
    );
    _armSailModeTimeout();
    _logLifecycle(
      command: 'sail_mode',
      lifecycle: 'sent',
      reason: 'pause mission -> setSailMode(manual)',
    );
    final result = await PowerSdkBridge.setSailMode(SailMode.manual);
    if (result == 0) {
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.acked,
        commandIntentReason: 'Pause command acknowledged',
      );
      _logLifecycle(
        command: 'sail_mode',
        lifecycle: 'acked',
        reason: 'pause command acknowledged',
      );
    } else {
      _sailModeTimeout?.cancel();
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.failed,
        missionState: MissionState.error,
        statusMessage: 'Pause failed (code: $result)',
        commandIntentReason: 'Pause setSailMode(manual) failed',
      );
      _logLifecycle(
        command: 'sail_mode',
        lifecycle: 'failed',
        reason: 'pause returned $result',
      );
    }
  }

  Future<void> resumeMission() async {
    state = state.copyWith(
      missionState: MissionState.running,
      statusMessage: 'Resuming...',
      sailModeCommandIntentState: bs.CommandIntentState.sent,
      commandIntentReason: 'Sent setSailMode(waypoint) for resume',
      requestedSailMode: SailMode.waypoint,
    );
    _armSailModeTimeout();
    _logLifecycle(
      command: 'sail_mode',
      lifecycle: 'sent',
      reason: 'resume mission -> setSailMode(waypoint)',
    );
    final result = await PowerSdkBridge.setSailMode(SailMode.waypoint);
    if (result == 0) {
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.acked,
        commandIntentReason: 'Resume command acknowledged',
      );
      _logLifecycle(
        command: 'sail_mode',
        lifecycle: 'acked',
        reason: 'resume command acknowledged',
      );
    } else {
      _sailModeTimeout?.cancel();
      state = state.copyWith(
        sailModeCommandIntentState: bs.CommandIntentState.failed,
        missionState: MissionState.error,
        statusMessage: 'Resume failed (code: $result)',
        commandIntentReason: 'Resume setSailMode(waypoint) failed',
      );
      _logLifecycle(
        command: 'sail_mode',
        lifecycle: 'failed',
        reason: 'resume returned $result',
      );
    }
  }

  Future<void> cancelMission() async {
    _missionStartTimeout?.cancel();
    state = state.copyWith(
      sailModeCommandIntentState: bs.CommandIntentState.sent,
      commandIntentReason: 'Sent setSailMode(manual) for cancel',
      requestedSailMode: SailMode.manual,
    );
    _armSailModeTimeout();
    _logLifecycle(
      command: 'sail_mode',
      lifecycle: 'sent',
      reason: 'cancel mission -> setSailMode(manual)',
    );
    final result = await PowerSdkBridge.setSailMode(SailMode.manual);
    state = state.copyWith(
      missionState: MissionState.idle,
      currentWaypointIndex: -1,
      missionUploadCommandIntentState: bs.CommandIntentState.idle,
      missionCommandIntentState: bs.CommandIntentState.idle,
      sailModeCommandIntentState: result == 0
          ? bs.CommandIntentState.acked
          : bs.CommandIntentState.failed,
      missionStartStage: MissionStartStage.idle,
      missionStartAttemptId: 0,
      missionLastRunSequence: -1,
      missionLifecycleUpdatedAtMs: DateTime.now().millisecondsSinceEpoch,
      clearRequestedSailMode: true,
      statusMessage: result == 0
          ? 'Mission cancelled'
          : 'Mission cancel failed (code: $result)',
      commandIntentReason: result == 0
          ? 'Cancel command acknowledged'
          : 'Cancel command failed',
    );
    _logLifecycle(
      command: 'sail_mode',
      lifecycle: result == 0 ? 'acked' : 'failed',
      reason: 'cancel returned $result',
    );
  }

  void _armMissionTimeout(int attemptId) {
    _missionStartTimeout?.cancel();
    _missionStartTimeout = Timer(bs.RuntimeCommandTimeouts.missionStart, () {
      if (state.missionStartAttemptId != attemptId) {
        return;
      }
      if (!_isMissionStartActive()) {
        return;
      }

      state = state.copyWith(
        missionState: MissionState.error,
        missionCommandIntentState: bs.CommandIntentState.timeout,
        missionStartStage: MissionStartStage.timedOut,
        missionLifecycleUpdatedAtMs: DateTime.now().millisecondsSinceEpoch,
        clearRequestedSailMode: true,
        statusMessage:
            'Mission start timeout after ${bs.RuntimeCommandTimeouts.missionStart.inSeconds}s',
        commandIntentReason: 'No mission_run_status callback before timeout',
      );
      _logLifecycle(
        command: 'mission_start',
        lifecycle: 'timed_out',
        reason:
            'attempt=$attemptId no mission_run_status within ${bs.RuntimeCommandTimeouts.missionStart.inSeconds}s',
        stage: state.missionStartStage.name,
        attemptId: attemptId,
      );
    });
  }

  void _failMissionPreflight({
    required String statusMessage,
    required String reason,
  }) {
    final nowMs = DateTime.now().millisecondsSinceEpoch;
    _missionStartTimeout?.cancel();
    state = state.copyWith(
      missionState: MissionState.error,
      missionUploadCommandIntentState: bs.CommandIntentState.idle,
      missionCommandIntentState: bs.CommandIntentState.failed,
      sailModeCommandIntentState: bs.CommandIntentState.idle,
      missionStartStage: MissionStartStage.failed,
      missionStartAttemptId: 0,
      missionLastRunSequence: -1,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, nowMs),
      clearRequestedSailMode: true,
      statusMessage: statusMessage,
      commandIntentReason: reason,
    );
    _logLifecycle(
      command: 'mission_start',
      lifecycle: 'failed',
      reason: reason,
      stage: state.missionStartStage.name,
      attemptId: state.missionStartAttemptId,
      callbackTs: nowMs,
    );
  }

  void _failMissionStartAttempt({
    required int attemptId,
    required String statusMessage,
    required String reason,
    bs.CommandIntentState? uploadIntent,
    bs.CommandIntentState? sailIntent,
  }) {
    if (state.missionStartAttemptId != attemptId) {
      return;
    }
    _missionStartTimeout?.cancel();
    _sailModeTimeout?.cancel();
    final nowMs = DateTime.now().millisecondsSinceEpoch;
    state = state.copyWith(
      missionState: MissionState.error,
      missionUploadCommandIntentState:
          uploadIntent ?? state.missionUploadCommandIntentState,
      missionCommandIntentState: bs.CommandIntentState.failed,
      sailModeCommandIntentState: sailIntent ?? state.sailModeCommandIntentState,
      missionStartStage: MissionStartStage.failed,
      missionLifecycleUpdatedAtMs:
          _maxTimestamp(state.missionLifecycleUpdatedAtMs, nowMs),
      clearRequestedSailMode: true,
      statusMessage: statusMessage,
      commandIntentReason: reason,
    );
    _logLifecycle(
      command: 'mission_start',
      lifecycle: 'failed',
      reason: reason,
      stage: state.missionStartStage.name,
      attemptId: attemptId,
      callbackTs: nowMs,
    );
  }

  bool _isMissionStartStage(MissionStartStage stage, Set<MissionStartStage> targets) {
    return targets.contains(stage);
  }

  bool _isMissionStartActive() {
    return _isMissionStartStage(state.missionStartStage, {
      MissionStartStage.uploadSent,
      MissionStartStage.uploadAcked,
      MissionStartStage.uploadConfirmed,
      MissionStartStage.modeSent,
      MissionStartStage.modeAcked,
      MissionStartStage.modeConfirmed,
      MissionStartStage.waitingRunConfirm,
    });
  }

  int _callbackTimestampMs(Map<String, dynamic> event) {
    final callbackTs = (event['ts_ms'] as num?)?.toInt();
    if (callbackTs != null) {
      return callbackTs;
    }
    return DateTime.now().millisecondsSinceEpoch;
  }

  bool _isStaleMissionCallback({
    required int callbackTs,
    required String callbackType,
    int? sequence,
  }) {
    final latestTs = state.missionLifecycleUpdatedAtMs;
    final latestSeq = state.missionLastRunSequence;
    final staleByTime = latestTs > 0 && callbackTs < latestTs;
    final staleBySequence = sequence != null && latestSeq >= 0 && sequence < latestSeq;

    if (!staleByTime && !staleBySequence) {
      return false;
    }

    _logLifecycle(
      command: 'mission_start',
      lifecycle: 'stale',
      reason:
          'drop $callbackType callback_ts=$callbackTs latest_ts=$latestTs seq=${sequence ?? -1} latest_seq=$latestSeq',
      stage: state.missionStartStage.name,
      attemptId: state.missionStartAttemptId,
      callbackTs: callbackTs,
      sequence: sequence,
    );
    return true;
  }

  int _maxTimestamp(int a, int b) => a >= b ? a : b;

  String _gpsGateDecisionReason(bs.BoatState boat) {
    if (!boat.isGpsRawPresent) {
      return 'gps_raw_present=false';
    }
    if (!boat.isGpsAutonomyReady) {
      return _gpsBlockReasonText(boat.effectiveGpsDegradedReason);
    }
    return 'gps_autonomy_ready=true';
  }

  void _logGpsGateDecision({
    required bs.BoatState boat,
    required bool allowed,
    required String reason,
  }) {
    developer.log(
      'domain=mission_start_gate allowed=$allowed raw_present=${boat.isGpsRawPresent} autonomy_ready=${boat.isGpsAutonomyReady} satellites=${boat.gps.satellites} eph=${boat.gps.eph} degraded=${boat.effectiveGpsDegradedReason?.wireName} reason="$reason"',
      name: 'runtime.gps.quality',
      time: DateTime.now(),
    );
  }

  String _modeErrorReasonText(String error) {
    if (error.isEmpty) {
      return 'Mode error';
    }
    final normalized = error.toLowerCase();
    if (normalized.contains('home') || normalized.contains('position')) {
      return 'Mode error: missing home/position ($error)';
    }
    return 'Mode error: $error';
  }

  String _gpsBlockReasonText(GpsDegradedReason? reason) => switch (reason) {
        GpsDegradedReason.missingEph =>
          'GPS telemetry present, autonomy confidence unavailable',
        GpsDegradedReason.lowSats => 'GPS quality low (need >8 satellites)',
        GpsDegradedReason.badHdop => 'GPS quality low (HDOP out of range)',
        GpsDegradedReason.stale => 'GPS telemetry stale',
        GpsDegradedReason.noPosition => 'GPS position unavailable',
        null => 'GPS quality unavailable',
      };

  void _armSailModeTimeout() {
    _sailModeTimeout?.cancel();
    _sailModeTimeout = Timer(bs.RuntimeCommandTimeouts.missionStart, () {
      if (state.sailModeCommandIntentState != bs.CommandIntentState.confirmed) {
        state = state.copyWith(
          sailModeCommandIntentState: bs.CommandIntentState.timeout,
          commandIntentReason:
              'No sail_mode callback before timeout (${bs.RuntimeCommandTimeouts.missionStart.inSeconds}s)',
        );
        _logLifecycle(
          command: 'sail_mode',
          lifecycle: 'timed_out',
          reason:
              'No sail_mode callback within ${bs.RuntimeCommandTimeouts.missionStart.inSeconds}s',
        );
      }
    });
  }

  void _logLifecycle({
    required String command,
    required String lifecycle,
    required String reason,
    String? stage,
    int? attemptId,
    int? callbackTs,
    int? sequence,
  }) {
    final resolvedStage = stage ?? state.missionStartStage.name;
    final resolvedAttempt = attemptId ?? state.missionStartAttemptId;
    developer.log(
      'command=$command lifecycle=$lifecycle stage=$resolvedStage attempt=$resolvedAttempt callback_ts=${callbackTs ?? -1} seq=${sequence ?? -1} reason="$reason"',
      name: 'runtime.command.lifecycle',
      time: DateTime.now(),
    );
  }

  @override
  void dispose() {
    _navSub?.cancel();
    _missionStartTimeout?.cancel();
    _sailModeTimeout?.cancel();
    super.dispose();
  }
}
