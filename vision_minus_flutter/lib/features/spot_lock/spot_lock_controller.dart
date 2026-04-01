import 'dart:async';
import 'dart:developer' as developer;
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/boat_state.dart' show ConnectionState;
import '../../core/models/gps_position.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../../shared/utils/geo_utils.dart';
import '../connection/connection_provider.dart';

enum SpotLockState {
  idle,
  acquiring,
  holding,
  correcting,
  suspended,
}

class SpotLockStatus {
  final SpotLockState state;
  final bool enabled;
  final int? anchorLatE7;
  final int? anchorLonE7;
  final double distanceMeters;
  final String? suspendReason;
  final int updatedAtMs;

  const SpotLockStatus({
    this.state = SpotLockState.idle,
    this.enabled = false,
    this.anchorLatE7,
    this.anchorLonE7,
    this.distanceMeters = 0,
    this.suspendReason,
    this.updatedAtMs = 0,
  });

  SpotLockStatus copyWith({
    SpotLockState? state,
    bool? enabled,
    int? anchorLatE7,
    int? anchorLonE7,
    bool clearAnchor = false,
    double? distanceMeters,
    String? suspendReason,
    bool clearSuspendReason = false,
    int? updatedAtMs,
  }) {
    return SpotLockStatus(
      state: state ?? this.state,
      enabled: enabled ?? this.enabled,
      anchorLatE7: clearAnchor ? null : anchorLatE7 ?? this.anchorLatE7,
      anchorLonE7: clearAnchor ? null : anchorLonE7 ?? this.anchorLonE7,
      distanceMeters: distanceMeters ?? this.distanceMeters,
      suspendReason:
          clearSuspendReason ? null : suspendReason ?? this.suspendReason,
      updatedAtMs: updatedAtMs ?? this.updatedAtMs,
    );
  }

  bool get isActive => enabled && state != SpotLockState.idle;
}

final spotLockProvider =
    StateNotifierProvider<SpotLockController, SpotLockStatus>((ref) {
      return SpotLockController(ref);
    });

class SpotLockController extends StateNotifier<SpotLockStatus> {
  static const double _deadbandMeters = 3.0;
  static const double _enterCorrectionMeters = 3.5;
  static const double _exitCorrectionMeters = 2.5;

  static const int _pulseOnMs = 1000;
  static const int _pulseOffMs = 2000;
  static const int _resumeNoManualMs = 3000;
  static const int _tickerMs = 200;

  static const double _minThrustPercent = 4.0;
  static const double _maxThrustPercent = 12.0;

  final Ref _ref;
  Timer? _ticker;
  int _lastPulseEndedAtMs = 0;
  int? _pulseStartedAtMs;

  bool _manualInputActive = false;
  int _lastManualInputAtMs = 0;

  SpotLockController(this._ref) : super(const SpotLockStatus());

  void toggle() {
    if (state.enabled) {
      disable();
      return;
    }
    enable();
  }

  void enable() {
    final boat = _ref.read(boatStateProvider);
    final gps = boat.gps;
    if (!gps.hasFix || !gps.isSane || !gps.isAutonomyReady) {
      developer.log(
        'BLOCKED enable: GPS not autonomy-ready (hasFix=${gps.hasFix}, sane=${gps.isSane}, autonomy=${gps.isAutonomyReady})',
        name: 'spot_lock',
      );
      return;
    }

    final nowMs = DateTime.now().millisecondsSinceEpoch;
    state = SpotLockStatus(
      state: SpotLockState.acquiring,
      enabled: true,
      anchorLatE7: gps.latE7,
      anchorLonE7: gps.lonE7,
      distanceMeters: 0,
      updatedAtMs: nowMs,
    );

    developer.log(
      'enabled anchor=(${gps.latE7}, ${gps.lonE7}) deadband=${_deadbandMeters.toStringAsFixed(1)}m',
      name: 'spot_lock',
    );

    _startTicker();
    _tick();
  }

  Future<void> disable() async {
    await _stopPulse(forceStopCommand: true);
    _stopTicker();
    state = state.copyWith(
      state: SpotLockState.idle,
      enabled: false,
      clearAnchor: true,
      distanceMeters: 0,
      clearSuspendReason: true,
      updatedAtMs: DateTime.now().millisecondsSinceEpoch,
    );
    developer.log('disabled', name: 'spot_lock');
  }

  void setManualInputActive(bool active) {
    final nowMs = DateTime.now().millisecondsSinceEpoch;
    if (active) {
      _manualInputActive = true;
      _lastManualInputAtMs = nowMs;
      if (state.enabled) {
        unawaited(_suspend('manual_override'));
      }
      return;
    }

    if (_manualInputActive) {
      _manualInputActive = false;
      _lastManualInputAtMs = nowMs;
    }
  }

  void _startTicker() {
    _ticker?.cancel();
    _ticker = Timer.periodic(const Duration(milliseconds: _tickerMs), (_) {
      _tick();
    });
  }

  void _stopTicker() {
    _ticker?.cancel();
    _ticker = null;
  }

  void _tick() {
    if (!state.enabled) {
      return;
    }

    final boat = _ref.read(boatStateProvider);
    final anchorLatE7 = state.anchorLatE7;
    final anchorLonE7 = state.anchorLonE7;
    if (anchorLatE7 == null || anchorLonE7 == null) {
      unawaited(disable());
      return;
    }

    final nowMs = DateTime.now().millisecondsSinceEpoch;
    final hasGpsFix = boat.gps.hasFix &&
        GpsPosition.isCoordinateSane(boat.gps.lat, boat.gps.lon);
    if (!hasGpsFix) {
      unawaited(_suspend('gps_lost'));
      return;
    }

    if (!boat.isGpsAutonomyReady || !boat.isHighRateTelemetryFresh) {
      unawaited(_suspend('gps_degraded'));
      return;
    }

    if (boat.connectionState != ConnectionState.connected) {
      unawaited(_suspend('connection_lost'));
      return;
    }

    if (!boat.isUnlockConfirmed) {
      unawaited(_suspend('unlock_lost'));
      return;
    }

    if (_manualInputActive) {
      unawaited(_suspend('manual_override'));
      return;
    }

    if (state.state == SpotLockState.suspended) {
      final resumeReady =
          nowMs - _lastManualInputAtMs >= _resumeNoManualMs;
      if (!resumeReady) {
        return;
      }
      state = state.copyWith(
        state: SpotLockState.acquiring,
        clearSuspendReason: true,
        updatedAtMs: nowMs,
      );
      developer.log('resume from suspended', name: 'spot_lock');
    }

    final anchorLat = GeoUtils.fromDegE7(anchorLatE7);
    final anchorLon = GeoUtils.fromDegE7(anchorLonE7);
    final distance = GeoUtils.distanceMeters(
      boat.gps.lat,
      boat.gps.lon,
      anchorLat,
      anchorLon,
    );

    final shouldCorrect = _shouldCorrect(distance);
    if (!shouldCorrect) {
      if (_isPulseActive) {
        unawaited(_stopPulse(forceStopCommand: true));
      }
      state = state.copyWith(
        state: SpotLockState.holding,
        distanceMeters: distance,
        updatedAtMs: nowMs,
      );
      return;
    }

    state = state.copyWith(
      state: SpotLockState.correcting,
      distanceMeters: distance,
      updatedAtMs: nowMs,
    );

    _driveCorrectionPulse(
      nowMs: nowMs,
      currentLat: boat.gps.lat,
      currentLon: boat.gps.lon,
      anchorLat: anchorLat,
      anchorLon: anchorLon,
      distance: distance,
    );
  }

  bool _shouldCorrect(double distance) {
    if (distance >= _enterCorrectionMeters) {
      return true;
    }
    if (distance <= _exitCorrectionMeters) {
      return false;
    }
    return state.state == SpotLockState.correcting || _isPulseActive;
  }

  void _driveCorrectionPulse({
    required int nowMs,
    required double currentLat,
    required double currentLon,
    required double anchorLat,
    required double anchorLon,
    required double distance,
  }) {
    if (_isPulseActive) {
      if (nowMs - _pulseStartedAtMs! >= _pulseOnMs) {
        unawaited(_stopPulse(forceStopCommand: true));
      }
      return;
    }

    if (nowMs - _lastPulseEndedAtMs < _pulseOffMs) {
      return;
    }

    // World bearing from current position to anchor
    final worldBearingDeg = GeoUtils.bearing(
      currentLat,
      currentLon,
      anchorLat,
      anchorLon,
    );

    // Compensate for boat heading: rocker is body-frame, bearing is world-frame.
    // x = forward (boat nose), r = right. Without yaw compensation, corrections
    // point the wrong way. Boat yaw is in radians from SDK attitude stream.
    final boat = _ref.read(boatStateProvider);
    final boatHeadingDeg = (boat.yaw * 180 / pi + 360) % 360;
    final relativeBearingDeg = (worldBearingDeg - boatHeadingDeg + 360) % 360;
    final relativeBearingRad = relativeBearingDeg * pi / 180.0;

    final thrustPercent = _thrustPercentForDistance(distance);
    final thrustRocker = (thrustPercent * 10.0).round().clamp(40, 120);

    // Body-frame: x = forward component, r = rightward component
    final x = (thrustRocker * cos(relativeBearingRad)).round().clamp(-120, 120);
    final r = (thrustRocker * sin(relativeBearingRad)).round().clamp(-120, 120);

    _pulseStartedAtMs = nowMs;
    developer.log(
      'pulse start distance=${distance.toStringAsFixed(2)}m worldBearing=${worldBearingDeg.toStringAsFixed(1)} relativeBearing=${relativeBearingDeg.toStringAsFixed(1)} thrust=${thrustPercent.toStringAsFixed(1)}% x=$x r=$r',
      name: 'spot_lock',
    );
    unawaited(PowerSdkBridge.controlRocker(x: x, y: 0, r: r, z: 0));
  }

  double _thrustPercentForDistance(double distanceMeters) {
    final ratio = ((distanceMeters - _enterCorrectionMeters) / 10.0)
        .clamp(0.0, 1.0);
    return (_minThrustPercent +
            ((_maxThrustPercent - _minThrustPercent) * ratio))
        .clamp(_minThrustPercent, _maxThrustPercent);
  }

  Future<void> _suspend(String reason) async {
    if (!state.enabled) {
      return;
    }

    await _stopPulse(forceStopCommand: reason != 'manual_override');
    final nowMs = DateTime.now().millisecondsSinceEpoch;
    if (state.state == SpotLockState.suspended && state.suspendReason == reason) {
      state = state.copyWith(
        distanceMeters: state.distanceMeters,
        updatedAtMs: nowMs,
      );
      return;
    }

    state = state.copyWith(
      state: SpotLockState.suspended,
      suspendReason: reason,
      updatedAtMs: nowMs,
    );
    developer.log('suspended reason=$reason', name: 'spot_lock');
  }

  Future<void> _stopPulse({required bool forceStopCommand}) async {
    final wasActive = _isPulseActive;
    _pulseStartedAtMs = null;
    _lastPulseEndedAtMs = DateTime.now().millisecondsSinceEpoch;
    if (wasActive && forceStopCommand) {
      developer.log('pulse end', name: 'spot_lock');
      await PowerSdkBridge.controlRocker(x: 0, y: 0, r: 0, z: 0);
    }
  }

  bool get _isPulseActive => _pulseStartedAtMs != null;

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }
}
