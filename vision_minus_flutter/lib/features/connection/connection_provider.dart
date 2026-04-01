import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/connection/connection_controller.dart';
import '../../core/connection/connection_phase.dart';
import '../../core/connection/connection_repository.dart';
import '../../core/connection/connection_state.dart' as runtime;
import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/models/boat_state.dart';
import '../../core/models/gps_position.dart';
import '../../core/models/battery_status.dart';
import '../spot_lock/spot_lock_controller.dart';

final connectionRepositoryProvider = Provider<ConnectionRepository>((ref) {
  final repository = ConnectionRepository();
  ref.onDispose(repository.dispose);
  return repository;
});

final connectionControllerProvider = Provider<ConnectionController>((ref) {
  return ConnectionController();
});

/// Main boat state provider — aggregates all telemetry streams.
final boatStateProvider =
    StateNotifierProvider<BoatStateNotifier, BoatState>((ref) {
  return BoatStateNotifier(ref);
});

class BoatStateNotifier extends StateNotifier<BoatState> {
  static const int _gpsAutonomyEnterContinuousMs = 3000;
  static const int _gpsAutonomyReentryCooldownMs = 5000;
  static const int _gpsAutonomyExitSoftFailures = 2;

  final Ref _ref;

  StreamSubscription? _gpsSub;
  StreamSubscription? _batterySub;
  StreamSubscription? _runtimeConnectionSub;
  StreamSubscription? _sdkConnectionSub;
  StreamSubscription? _navigationSub;
  StreamSubscription? _attitudeSub;
  Timer? _armIntentTimeoutTimer;
  ConnectionState _lastBoatConnectionState = ConnectionState.disconnected;
  bool _gpsAutonomyReadyLatched = false;
  int? _gpsReadyCandidateSinceMs;
  int _gpsSoftFailureCount = 0;
  int _gpsReentryCooldownUntilMs = 0;
  GpsDegradedReason? _gpsLastFailureReason;
  bool _w4MissingEphLogged = false;

  BoatStateNotifier(this._ref) : super(const BoatState()) {
    PowerSdkBridge.init();
    PowerSdkBridge.startLogRecording();
    _listenToStreams();
  }

  void _listenToStreams() {
    final connectionRepository = _ref.read(connectionRepositoryProvider);
    _applyConnectionState(connectionRepository.currentState);
    _runtimeConnectionSub =
        connectionRepository.connectionStateStream.listen(_applyConnectionState);

    _sdkConnectionSub = PowerSdkBridge.connectionStream.listen(_onConnectionEvent);
    _gpsSub = PowerSdkBridge.gpsStream.listen(_onGpsEvent);
    _batterySub = PowerSdkBridge.batteryStream.listen(_onBatteryEvent);
    _navigationSub = PowerSdkBridge.navigationStream.listen(_onNavigationEvent);
    _attitudeSub = PowerSdkBridge.attitudeStream.listen(_onAttitudeEvent);
  }

  void _onConnectionEvent(Map<String, dynamic> event) {
    final type = event['type'] as String?;
    if (type == null) {
      return;
    }

    switch (type) {
      case 'arm_status':
        _onArmStatus(event);
        break;
      case 'set_arm_result':
        _onSetArmResult(event);
        break;
      case 'current_mode':
        _onCurrentMode(event);
        break;
      default:
        break;
    }
  }

  void _onGpsEvent(Map<String, dynamic> event) {
    final callbackType = event['type'] as String?;
    if (callbackType == null) {
      return;
    }
    if (callbackType != 'gps_raw_int' && callbackType != 'w4_gps') {
      return;
    }
    final String gpsType = callbackType;

    final callbackTs = _callbackTimestampMs(event);
    if (_isStaleCallback(callbackTs, state.gpsUpdatedAtMs)) {
      return;
    }

    final gps = GpsPosition.fromEvent(event);
    final gpsSelection = _selectGpsAutonomyQuality(
      type: gpsType,
      gps: gps,
      event: event,
      nowMs: callbackTs,
    );
    final gpsForState = gps.copyWith(
      isAutonomyReady: gpsSelection.autonomyReady,
      degradedReason: gpsSelection.degradedReason,
      clearDegradedReason: gpsSelection.degradedReason == null,
    );

    if (gpsSelection.degradedReason == GpsDegradedReason.missingEph &&
        gpsType == 'w4_gps' &&
        !_w4MissingEphLogged) {
      _w4MissingEphLogged = true;
      developer.log(
        'GPS telemetry present, autonomy confidence unavailable',
        name: 'runtime.gps.quality',
      );
    }
    if (gpsSelection.degradedReason != GpsDegradedReason.missingEph) {
      _w4MissingEphLogged = false;
    }

    state = state.copyWith(
      gps: gpsForState,
      gpsRawPresent: gps.hasFix,
      gpsAutonomyReady: gpsSelection.autonomyReady,
      gpsDegradedReason: gpsSelection.degradedReason,
      clearGpsDegradedReason: gpsSelection.degradedReason == null,
      gpsQualityState: gpsSelection.qualityState,
      gpsUpdatedAtMs: callbackTs,
      telemetryUpdatedAtMs: _maxTimestamp(state.telemetryUpdatedAtMs, callbackTs),
    );
  }

  void _onBatteryEvent(Map<String, dynamic> event) {
    final type = event['type'] as String?;
    if (type != 'w4_battery' && type != 'battery_status') {
      return;
    }

    final callbackTs = _callbackTimestampMs(event);
    if (_isStaleCallback(callbackTs, state.telemetryUpdatedAtMs)) {
      return;
    }

    state = state.copyWith(
      battery: BatteryStatus.fromEvent(event),
      telemetryUpdatedAtMs: _maxTimestamp(state.telemetryUpdatedAtMs, callbackTs),
    );
  }

  void _onNavigationEvent(Map<String, dynamic> event) {
    final type = event['type'] as String?;
    if (type == null) {
      return;
    }

    final callbackTs = _callbackTimestampMs(event);
    switch (type) {
      case 'sail_mode':
        if (_isStaleCallback(callbackTs, state.modeUpdatedAtMs)) {
          return;
        }
        state = state.copyWith(
          sailMode: (event['mode'] as num?)?.toInt() ?? 0,
          modeUpdatedAtMs: callbackTs,
        );
        break;
      case 'speed_mode':
        if (_isStaleCallback(callbackTs, state.modeUpdatedAtMs)) {
          return;
        }
        state = state.copyWith(
          speedMode: (event['mode'] as num?)?.toInt() ?? 0,
          modeUpdatedAtMs: callbackTs,
        );
        break;
      case 'mag_calibration_status':
        if (_isStaleCallback(callbackTs, state.calibrationUpdatedAtMs)) {
          return;
        }
        final status = (event['status'] as num?)?.toInt() ?? -1;
        final next = _reduceCalibrationStatus(status, event);
        state = state.copyWith(
          calibrationPhase: next.phase,
          calibrationRawStatus: status,
          calibrationProgress: next.progress,
          calibrationOrientationSide: next.orientationSide,
          calibrationSideDoneMask: next.sideDoneMask,
          calibrationUpdatedAtMs: callbackTs,
        );
        developer.log(
          'domain=calibration callback=$status phase=${next.phase.name} progress=${next.progress} orientation_side=${next.orientationSide} side_done_mask=${next.sideDoneMask}',
          name: 'runtime.calibration.fsm',
          time: DateTime.now(),
        );
        break;
      case 'mission_run_status':
        if (_isStaleCallback(callbackTs, state.missionUpdatedAtMs)) {
          return;
        }
        state = state.copyWith(
          missionState: RuntimeMissionState.running,
          missionSequence: (event['seq'] as num?)?.toInt() ?? -1,
          missionUpdatedAtMs: callbackTs,
        );
        break;
      case 'execute_return_over':
        if (_isStaleCallback(callbackTs, state.missionUpdatedAtMs)) {
          return;
        }
        state = state.copyWith(
          missionState: RuntimeMissionState.completed,
          missionUpdatedAtMs: callbackTs,
        );
        break;
      case 'mode_error':
        if (_isStaleCallback(callbackTs, state.missionUpdatedAtMs)) {
          return;
        }
        state = state.copyWith(
          missionState: RuntimeMissionState.error,
          missionUpdatedAtMs: callbackTs,
        );
        break;
      default:
        break;
    }
  }

  void _onAttitudeEvent(Map<String, dynamic> event) {
    if (event['type'] != 'attitude') {
      return;
    }

    final callbackTs = _callbackTimestampMs(event);
    if (_isStaleCallback(callbackTs, state.telemetryUpdatedAtMs)) {
      return;
    }

    state = state.copyWith(
      roll: (event['roll'] as num?)?.toDouble() ?? 0,
      pitch: (event['pitch'] as num?)?.toDouble() ?? 0,
      yaw: (event['yaw'] as num?)?.toDouble() ?? 0,
      telemetryUpdatedAtMs: _maxTimestamp(state.telemetryUpdatedAtMs, callbackTs),
    );
  }

  void _onArmStatus(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    if (_isStaleCallback(callbackTs, state.armStatusUpdatedAtMs)) {
      return;
    }

    final status = (event['status'] as num?)?.toInt() ?? 0;
    final targetStatus = state.armCommandTargetStatus;
    final targetMatched = targetStatus != -1 && targetStatus == status;
    final targetMismatched = targetStatus != -1 && targetStatus != status;

    if (targetMatched) {
      _armIntentTimeoutTimer?.cancel();
    }

    state = state.copyWith(
      isArmed: status == 1,
      armStatusUpdatedAtMs: callbackTs,
      armCommandIntentState: targetMatched
          ? CommandIntentState.confirmed
          : targetMismatched
              ? CommandIntentState.stale
              : state.armCommandIntentState,
      armCommandIntentReason: targetMatched
          ? status == 1
              ? 'Unlock confirmed by arm_status callback'
              : 'Disarm confirmed by arm_status callback'
          : targetMismatched
              ? 'Stale arm_status=$status while waiting for $targetStatus'
              : state.armCommandIntentReason,
      armCommandTargetStatus: targetMatched ? -1 : state.armCommandTargetStatus,
      armCommandIntentUpdatedAtMs:
          (targetMatched || targetMismatched) ? callbackTs : state.armCommandIntentUpdatedAtMs,
    );
  }

  void _onSetArmResult(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    if (_isStaleCallback(callbackTs, state.armCommandIntentUpdatedAtMs)) {
      return;
    }

    final targetStatus = state.armCommandTargetStatus;
    if (targetStatus == -1) {
      return;
    }

    final result = (event['result'] as num?)?.toInt() ?? -1;
    if (result == 0) {
      // set_arm_result=0 means the drone accepted the command.
      // The async arm_status callback may never arrive on W4 hardware,
      // so treat this as confirmed (matching original app behavior).
      _armIntentTimeoutTimer?.cancel();
      state = state.copyWith(
        isArmed: targetStatus == 1,
        armCommandIntentState: CommandIntentState.confirmed,
        armCommandIntentReason: targetStatus == 1
            ? 'Unlock confirmed by set_arm_result callback'
            : 'Disarm confirmed by set_arm_result callback',
        armCommandTargetStatus: -1,
        armCommandIntentUpdatedAtMs: callbackTs,
        armStatusUpdatedAtMs: callbackTs,
      );
      developer.log(
        'domain=arm set_arm_result=0 confirmed=${targetStatus == 1 ? "unlock" : "disarm"}',
        name: 'runtime.command.lifecycle',
        time: DateTime.now(),
      );
      // Original app sets sail mode 0 (normal/manual) immediately after arm
      // confirmation. Without this, firmware auto-disarms after ~3 seconds.
      if (targetStatus == 1) {
        PowerSdkBridge.setSailMode(0);
        developer.log(
          'domain=arm post-unlock setSailMode(0) sent',
          name: 'runtime.command.lifecycle',
          time: DateTime.now(),
        );
      }
      return;
    }

    _armIntentTimeoutTimer?.cancel();
    state = state.copyWith(
      armCommandIntentState: CommandIntentState.failed,
      armCommandIntentReason: targetStatus == 1
          ? 'Unlock callback rejected (code: $result)'
          : 'Disarm callback rejected (code: $result)',
      armCommandTargetStatus: -1,
      armCommandIntentUpdatedAtMs: callbackTs,
    );
  }

  void _onCurrentMode(Map<String, dynamic> event) {
    final callbackTs = _callbackTimestampMs(event);
    if (_isStaleCallback(callbackTs, state.modeUpdatedAtMs)) {
      return;
    }

    state = state.copyWith(
      currentMode: event['mode']?.toString() ?? '',
      currentSubMode: event['sub_mode']?.toString() ?? '',
      modeUpdatedAtMs: callbackTs,
    );
  }

  Future<int> requestArmStatus(int status) async {
    final action = status == 1 ? 'unlock' : 'disarm';
    final nowMs = DateTime.now().millisecondsSinceEpoch;
    state = state.copyWith(
      armCommandIntentState: CommandIntentState.sent,
      armCommandTargetStatus: status,
      armCommandIntentReason:
          'Sent $action command, waiting for arm_status=$status callback',
      armCommandIntentUpdatedAtMs: nowMs,
    );
    _startArmIntentTimeout(status, action);

    final result = await PowerSdkBridge.setArmStatus(status);
    final resultTs = DateTime.now().millisecondsSinceEpoch;
    if (result == 0) {
      state = state.copyWith(
        armCommandIntentState: CommandIntentState.acked,
        armCommandIntentReason: '$action command acknowledged by method return',
        armCommandIntentUpdatedAtMs: resultTs,
      );
      return result;
    }

    _armIntentTimeoutTimer?.cancel();
    state = state.copyWith(
      armCommandIntentState: CommandIntentState.failed,
      armCommandIntentReason: '$action command failed (code: $result)',
      armCommandTargetStatus: -1,
      armCommandIntentUpdatedAtMs: resultTs,
    );
    return result;
  }

  void _startArmIntentTimeout(int targetStatus, String action) {
    _armIntentTimeoutTimer?.cancel();
    _armIntentTimeoutTimer = Timer(RuntimeCommandTimeouts.unlockConfirm, () {
      if (state.armCommandTargetStatus != targetStatus) {
        return;
      }
      if (state.armCommandIntentState != CommandIntentState.sent &&
          state.armCommandIntentState != CommandIntentState.acked) {
        return;
      }
      state = state.copyWith(
        armCommandIntentState: CommandIntentState.timeout,
        armCommandIntentReason:
            '$action timed out after ${RuntimeCommandTimeouts.unlockConfirm.inSeconds}s (no matching arm_status callback)',
        armCommandTargetStatus: -1,
        armCommandIntentUpdatedAtMs: DateTime.now().millisecondsSinceEpoch,
      );
    });
  }

  _GpsAutonomySelection _selectGpsAutonomyQuality({
    required String type,
    required GpsPosition gps,
    required Map<String, dynamic> event,
    required int nowMs,
  }) {
    final sample = _evaluateGpsSample(type: type, gps: gps, event: event);

    if (_gpsAutonomyReadyLatched) {
      if (sample.hardFailure) {
        _dropGpsAutonomyReady(nowMs, sample.reason);
      } else if (sample.softFailure) {
        _gpsSoftFailureCount += 1;
        if (_gpsSoftFailureCount >= _gpsAutonomyExitSoftFailures) {
          _dropGpsAutonomyReady(nowMs, sample.reason);
        }
      } else {
        _gpsSoftFailureCount = 0;
      }
    } else {
      _gpsSoftFailureCount = 0;
      if (sample.passes) {
        if (nowMs < _gpsReentryCooldownUntilMs) {
          _gpsReadyCandidateSinceMs = null;
        } else {
          _gpsReadyCandidateSinceMs ??= nowMs;
          if (nowMs - _gpsReadyCandidateSinceMs! >= _gpsAutonomyEnterContinuousMs) {
            _gpsAutonomyReadyLatched = true;
            _gpsReadyCandidateSinceMs = null;
            _gpsLastFailureReason = null;
          }
        }
      } else {
        _gpsReadyCandidateSinceMs = null;
        _gpsLastFailureReason = sample.reason;
      }
    }

    final autonomyReady = _gpsAutonomyReadyLatched;
    final reason = autonomyReady
        ? null
        : sample.reason ??
            _gpsLastFailureReason ??
            (sample.rawPresent ? GpsDegradedReason.missingEph : GpsDegradedReason.noPosition);
    final qualityState = autonomyReady
        ? GpsQualityState.good
        : sample.rawPresent
            ? GpsQualityState.degraded
            : GpsQualityState.noFix;

    return _GpsAutonomySelection(
      autonomyReady: autonomyReady,
      degradedReason: reason,
      qualityState: qualityState,
    );
  }

  _GpsAutonomySample _evaluateGpsSample({
    required String type,
    required GpsPosition gps,
    required Map<String, dynamic> event,
  }) {
    final rawPresent = gps.hasFix;
    if (!rawPresent) {
      return const _GpsAutonomySample(
        rawPresent: false,
        passes: false,
        hardFailure: true,
        softFailure: false,
        reason: GpsDegradedReason.noPosition,
      );
    }

    final hasEph = event.containsKey('eph');
    if (type == 'w4_gps') {
      if (gps.fixType < 3) {
        return const _GpsAutonomySample(
          rawPresent: true,
          passes: false,
          hardFailure: true,
          softFailure: false,
          reason: GpsDegradedReason.noPosition,
        );
      }

      if (gps.satellites <= 8) {
        return const _GpsAutonomySample(
          rawPresent: true,
          passes: false,
          hardFailure: false,
          softFailure: true,
          reason: GpsDegradedReason.lowSats,
        );
      }

      return const _GpsAutonomySample(
        rawPresent: true,
        passes: true,
        hardFailure: false,
        softFailure: false,
        reason: null,
      );
    }

    if (!hasEph) {
      return const _GpsAutonomySample(
        rawPresent: true,
        passes: false,
        hardFailure: true,
        softFailure: false,
        reason: GpsDegradedReason.missingEph,
      );
    }

    final hasGoodHdop = gps.eph > 0 && gps.eph <= 300;
    if (!hasGoodHdop) {
      return const _GpsAutonomySample(
        rawPresent: true,
        passes: false,
        hardFailure: false,
        softFailure: true,
        reason: GpsDegradedReason.badHdop,
      );
    }

    if (gps.satellites <= 8) {
      return const _GpsAutonomySample(
        rawPresent: true,
        passes: false,
        hardFailure: false,
        softFailure: true,
        reason: GpsDegradedReason.lowSats,
      );
    }

    return const _GpsAutonomySample(
      rawPresent: true,
      passes: true,
      hardFailure: false,
      softFailure: false,
      reason: null,
    );
  }

  void _dropGpsAutonomyReady(int nowMs, GpsDegradedReason? reason) {
    _gpsAutonomyReadyLatched = false;
    _gpsReadyCandidateSinceMs = null;
    _gpsSoftFailureCount = 0;
    _gpsReentryCooldownUntilMs = nowMs + _gpsAutonomyReentryCooldownMs;
    _gpsLastFailureReason = reason;
  }

  int _callbackTimestampMs(Map<String, dynamic> event) {
    final callbackTs = (event['ts_ms'] as num?)?.toInt();
    if (callbackTs != null) {
      return callbackTs;
    }
    return DateTime.now().millisecondsSinceEpoch;
  }

  bool _isStaleCallback(int callbackTs, int latestConfirmedTs) {
    if (latestConfirmedTs <= 0) {
      return false;
    }
    return callbackTs < latestConfirmedTs;
  }

  int _maxTimestamp(int a, int b) => a >= b ? a : b;

  _CalibrationReduction _reduceCalibrationStatus(
    int status,
    Map<String, dynamic> event,
  ) {
    var phase = state.calibrationPhase;
    var progress = state.calibrationProgress;
    var orientationSide = state.calibrationOrientationSide;
    var sideDoneMask = state.calibrationSideDoneMask;

    final explicitProgress = (event['progress'] as num?)?.toInt();
    final explicitSide = (event['side'] as num?)?.toInt();

    switch (status) {
      case 0:
        phase = CalibrationPhase.started;
        progress = progress < 5 ? 5 : progress;
        break;
      case 1:
        phase = CalibrationPhase.started;
        progress = progress < 5 ? 5 : progress;
        break;
      case 2:
        phase = CalibrationPhase.progressing;
        progress = _clampCalibrationProgress(explicitProgress ?? progress + 10);
        break;
      case 3:
        phase = CalibrationPhase.orienting;
        orientationSide = explicitSide ?? _decodeCalibrationSide(status);
        progress = progress < 25 ? 25 : progress;
        break;
      case 4:
        phase = CalibrationPhase.progressing;
        final doneSide = explicitSide ?? _decodeCalibrationSide(status);
        if (doneSide >= 0 && doneSide <= 5) {
          sideDoneMask = sideDoneMask | (1 << doneSide);
        }
        progress = _clampCalibrationProgress(
          explicitProgress ?? _maskProgress(sideDoneMask),
        );
        break;
      case 5:
        phase =
            state.calibrationPhase == CalibrationPhase.idle ||
                state.calibrationPhase == CalibrationPhase.startPending
            ? CalibrationPhase.startPending
            : CalibrationPhase.success;
        progress = phase == CalibrationPhase.success ? 100 : progress;
        break;
      case 6:
        phase =
            state.calibrationPhase == CalibrationPhase.idle ||
                state.calibrationPhase == CalibrationPhase.startPending
            ? CalibrationPhase.success
            : CalibrationPhase.failed;
        progress = phase == CalibrationPhase.success ? 100 : progress;
        break;
      case 7:
        phase = CalibrationPhase.failed;
        break;
      case 8:
        phase = CalibrationPhase.success;
        progress = 100;
        break;
      case 9:
        phase = CalibrationPhase.timeout;
        break;
      default:
        if (status < 0) {
          phase = CalibrationPhase.failed;
        } else {
          phase = CalibrationPhase.startPending;
        }
        break;
    }

    return _CalibrationReduction(
      phase: phase,
      progress: progress,
      orientationSide: orientationSide,
      sideDoneMask: sideDoneMask,
    );
  }

  int _maskProgress(int sideDoneMask) {
    var count = 0;
    for (var i = 0; i < 6; i++) {
      if (((sideDoneMask >> i) & 0x1) == 1) {
        count += 1;
      }
    }
    return ((count / 6.0) * 100).round();
  }

  int _clampCalibrationProgress(int value) {
    if (value < 0) {
      return 0;
    }
    if (value > 100) {
      return 100;
    }
    return value;
  }

  int _decodeCalibrationSide(int warnMask) {
    if ((warnMask & 0x1) == 0x1) {
      return 0;
    }
    if ((warnMask & 0x2) == 0x2) {
      return 1;
    }
    if ((warnMask & 0x4) == 0x4) {
      return 2;
    }
    if ((warnMask & 0x8) == 0x8) {
      return 3;
    }
    if ((warnMask & 0x10) == 0x10) {
      return 4;
    }
    if ((warnMask & 0x20) == 0x20) {
      return 5;
    }
    return -1;
  }

  void _applyConnectionState(runtime.ConnectionState connectionState) {
    final previous = _lastBoatConnectionState;
    ConnectionState boatConnectionState;
    switch (connectionState.phase) {
      case ConnectionPhase.connected:
      case ConnectionPhase.degraded:
        boatConnectionState = ConnectionState.connected;
        break;
      case ConnectionPhase.connecting:
      case ConnectionPhase.sdkActive:
      case ConnectionPhase.droneConnecting:
      case ConnectionPhase.discovering:
      case ConnectionPhase.transportAvailable:
        final status = connectionState.statusMessage?.toLowerCase();
        if (status != null && status.contains('permission')) {
          boatConnectionState = ConnectionState.requestingPermission;
        } else {
          boatConnectionState = ConnectionState.connecting;
        }
        break;
      case ConnectionPhase.error:
        boatConnectionState = ConnectionState.error;
        break;
      case ConnectionPhase.disconnected:
      case ConnectionPhase.idle:
        boatConnectionState = ConnectionState.disconnected;
        break;
    }

    state = state.copyWith(
      connectionState: boatConnectionState,
      errorMessage: connectionState.errorMessage,
    );

    _lastBoatConnectionState = boatConnectionState;

    final connectionLost =
        previous == ConnectionState.connected &&
        (boatConnectionState == ConnectionState.disconnected ||
         boatConnectionState == ConnectionState.error);
    if (connectionLost && state.isArmed) {
      developer.log(
        'CONNECTION LOST while armed — attempting best-effort disarm (unconfirmable)',
        name: 'runtime.safety',
      );
      unawaited(_handleConnectionLossWhileArmed());
    }

    final connectionRestored =
        previous != ConnectionState.connected && boatConnectionState == ConnectionState.connected;
    if (connectionRestored) {
      unawaited(onConnectionRestored());
    }
  }

  Future<void> _handleConnectionLossWhileArmed() async {
    await _ref.read(spotLockProvider.notifier).disable();
    await PowerSdkBridge.controlRocker(x: 0, y: 0, r: 0, z: 0);
    await PowerSdkBridge.setSailMode(0);
    // Best-effort: command may not reach drone if link is already dead.
    // Do NOT set isArmed=false locally — we cannot confirm the drone's
    // actual state. On reconnect, resync will read real arm status.
    await PowerSdkBridge.setArmStatus(0);
  }

  Future<void> onAppResume() async {
    await _requestRuntimeResync('onAppResume');
  }

  Future<void> onConnectionRestored() async {
    await _requestRuntimeResync('onConnectionRestored');
  }

  Future<void> onForegroundAfterExternalControl() async {
    await _requestRuntimeResync('onForegroundAfterExternalControl');
  }

  Future<void> _requestRuntimeResync(String hook) async {
    try {
      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final result = await PowerSdkBridge.resyncRuntimeState(reason: hook);
      final replayed = (result['replayed'] as bool?) ?? false;
      final reason = replayed
          ? 'Runtime re-sync via $hook (cached callbacks replayed)'
          : 'Runtime re-sync via $hook (no cached runtime state)';
      state = state.copyWith(
        armCommandIntentReason: reason,
        armCommandIntentUpdatedAtMs: nowMs,
      );
    } catch (_) {
      state = state.copyWith(
        armCommandIntentReason: 'Runtime re-sync via $hook failed',
        armCommandIntentUpdatedAtMs: DateTime.now().millisecondsSinceEpoch,
      );
    }
  }

  Future<void> connect() async {
    state = state.copyWith(connectionState: ConnectionState.connecting);
    await _ref.read(connectionControllerProvider).autoConnect();
  }

  Future<void> connectWifi() async {
    state = state.copyWith(connectionState: ConnectionState.connecting);
    await _ref.read(connectionControllerProvider).connectWifi();
  }

  Future<void> connectUsb() async {
    state = state.copyWith(connectionState: ConnectionState.connecting);
    await _ref.read(connectionControllerProvider).connectUsb();
  }

  Future<void> disconnect() async {
    await _ref.read(connectionControllerProvider).disconnect();
    state = state.copyWith(connectionState: ConnectionState.disconnected);
  }

  Future<void> retry() async {
    state = state.copyWith(connectionState: ConnectionState.connecting);
    await _ref.read(connectionControllerProvider).retry();
  }

  @override
  void dispose() {
    _gpsSub?.cancel();
    _batterySub?.cancel();
    _runtimeConnectionSub?.cancel();
    _sdkConnectionSub?.cancel();
    _navigationSub?.cancel();
    _attitudeSub?.cancel();
    _armIntentTimeoutTimer?.cancel();
    super.dispose();
  }
}

class _GpsAutonomySelection {
  final bool autonomyReady;
  final GpsDegradedReason? degradedReason;
  final GpsQualityState qualityState;

  const _GpsAutonomySelection({
    required this.autonomyReady,
    required this.degradedReason,
    required this.qualityState,
  });
}

class _CalibrationReduction {
  final CalibrationPhase phase;
  final int progress;
  final int orientationSide;
  final int sideDoneMask;

  const _CalibrationReduction({
    required this.phase,
    required this.progress,
    required this.orientationSide,
    required this.sideDoneMask,
  });
}

class _GpsAutonomySample {
  final bool rawPresent;
  final bool passes;
  final bool hardFailure;
  final bool softFailure;
  final GpsDegradedReason? reason;

  const _GpsAutonomySample({
    required this.rawPresent,
    required this.passes,
    required this.hardFailure,
    required this.softFailure,
    required this.reason,
  });
}
