import 'gps_position.dart';
import 'battery_status.dart';

/// Connection state of the boat.
enum ConnectionState {
  disconnected,
  connecting,
  requestingPermission,
  connected,
  error,
}

/// Runtime command intent lifecycle states.
enum CommandIntentState {
  idle,
  sent,
  acked,
  confirmed,
  timeout,
  stale,
  failed,
}

/// Runtime quality for GPS callback authority.
enum GpsQualityState {
  unknown,
  noFix,
  degraded,
  good,
}

/// Runtime mission state fed by callbacks.
enum RuntimeMissionState {
  unknown,
  idle,
  running,
  completed,
  error,
}

/// Callback-driven compass calibration phase.
enum CalibrationPhase {
  idle,
  startPending,
  started,
  orienting,
  progressing,
  success,
  failed,
  timeout,
  cancelled,
}

/// Shared runtime command timeout constants from runtime contract appendix.
class RuntimeCommandTimeouts {
  static const Duration unlockConfirm = Duration(seconds: 3);
  static const Duration missionStart = Duration(seconds: 8);
  static const Duration calibrationStart = Duration(seconds: 15);
  static const Duration calibrationTerminal = Duration(seconds: 90);
  static const Duration highRateTelemetry = Duration(seconds: 2);
  static const Duration modeArmCalibration = Duration(seconds: 5);
}

/// Aggregate state of the boat.
class BoatState {
  final ConnectionState connectionState;
  final GpsPosition gps;
  final BatteryStatus battery;

  final bool isArmed;
  final int sailMode;
  final int speedMode;

  final double roll;
  final double pitch;
  final double yaw;

  final String currentMode;
  final String currentSubMode;
  final bool gpsRawPresent;
  final bool gpsAutonomyReady;
  final GpsDegradedReason? gpsDegradedReason;
  final GpsQualityState gpsQualityState;
  final CalibrationPhase calibrationPhase;
  final int calibrationRawStatus;
  final int calibrationProgress;
  final int calibrationOrientationSide;
  final int calibrationSideDoneMask;
  final RuntimeMissionState missionState;
  final int missionSequence;

  final CommandIntentState armCommandIntentState;
  final int armCommandTargetStatus;
  final String armCommandIntentReason;

  final int armStatusUpdatedAtMs;
  final int modeUpdatedAtMs;
  final int gpsUpdatedAtMs;
  final int calibrationUpdatedAtMs;
  final int missionUpdatedAtMs;
  final int telemetryUpdatedAtMs;
  final int armCommandIntentUpdatedAtMs;

  final String? errorMessage;

  const BoatState({
    this.connectionState = ConnectionState.disconnected,
    this.gps = const GpsPosition(),
    this.battery = const BatteryStatus(),

    this.isArmed = false,
    this.sailMode = 0,
    this.speedMode = 0,

    this.roll = 0,
    this.pitch = 0,
    this.yaw = 0,

    this.currentMode = '',
    this.currentSubMode = '',
    this.gpsRawPresent = false,
    this.gpsAutonomyReady = false,
    this.gpsDegradedReason,
    this.gpsQualityState = GpsQualityState.unknown,
    this.calibrationPhase = CalibrationPhase.idle,
    this.calibrationRawStatus = -1,
    this.calibrationProgress = 0,
    this.calibrationOrientationSide = -1,
    this.calibrationSideDoneMask = 0,
    this.missionState = RuntimeMissionState.unknown,
    this.missionSequence = -1,

    this.armCommandIntentState = CommandIntentState.idle,
    this.armCommandTargetStatus = -1,
    this.armCommandIntentReason = '',

    this.armStatusUpdatedAtMs = 0,
    this.modeUpdatedAtMs = 0,
    this.gpsUpdatedAtMs = 0,
    this.calibrationUpdatedAtMs = 0,
    this.missionUpdatedAtMs = 0,
    this.telemetryUpdatedAtMs = 0,
    this.armCommandIntentUpdatedAtMs = 0,

    this.errorMessage,
  });

  // Arm state does not expire — it stays valid until explicitly changed
  // by a callback or user action. The 3s TTL was causing self-inflicted
  // disarm by sending zero-rocker after timeout.
  bool get isUnlockConfirmed => isArmed;

  bool get isHighRateTelemetryFresh => isDomainFresh(
      telemetryUpdatedAtMs, RuntimeCommandTimeouts.highRateTelemetry);

  bool get isModeFresh =>
      isDomainFresh(modeUpdatedAtMs, RuntimeCommandTimeouts.modeArmCalibration);

  bool get isCalibrationFresh => isDomainFresh(
      calibrationUpdatedAtMs, RuntimeCommandTimeouts.modeArmCalibration);

  bool get isMissionFresh => isDomainFresh(
      missionUpdatedAtMs, RuntimeCommandTimeouts.modeArmCalibration);

  bool get isGpsRawPresent =>
      gpsRawPresent && isDomainFresh(gpsUpdatedAtMs, RuntimeCommandTimeouts.highRateTelemetry);

  bool get isGpsAutonomyReady =>
      gpsAutonomyReady && isDomainFresh(gpsUpdatedAtMs, RuntimeCommandTimeouts.highRateTelemetry);

  GpsDegradedReason? get effectiveGpsDegradedReason {
    if (!isDomainFresh(gpsUpdatedAtMs, RuntimeCommandTimeouts.highRateTelemetry)) {
      return GpsDegradedReason.stale;
    }
    if (!gpsRawPresent) {
      return GpsDegradedReason.noPosition;
    }
    if (!gpsAutonomyReady) {
      return gpsDegradedReason;
    }
    return null;
  }

  bool get hasPendingArmIntent =>
      (armCommandIntentState == CommandIntentState.sent ||
          armCommandIntentState == CommandIntentState.acked) &&
      isDomainFresh(
          armCommandIntentUpdatedAtMs, RuntimeCommandTimeouts.unlockConfirm);

  BoatState copyWith({
    ConnectionState? connectionState,
    GpsPosition? gps,
    BatteryStatus? battery,

    bool? isArmed,
    int? sailMode,
    int? speedMode,

    double? roll,
    double? pitch,
    double? yaw,

    String? currentMode,
    String? currentSubMode,
    bool? gpsRawPresent,
    bool? gpsAutonomyReady,
    GpsDegradedReason? gpsDegradedReason,
    bool clearGpsDegradedReason = false,
    GpsQualityState? gpsQualityState,
    CalibrationPhase? calibrationPhase,
    int? calibrationRawStatus,
    int? calibrationProgress,
    int? calibrationOrientationSide,
    int? calibrationSideDoneMask,
    RuntimeMissionState? missionState,
    int? missionSequence,

    CommandIntentState? armCommandIntentState,
    int? armCommandTargetStatus,
    String? armCommandIntentReason,

    int? armStatusUpdatedAtMs,
    int? modeUpdatedAtMs,
    int? gpsUpdatedAtMs,
    int? calibrationUpdatedAtMs,
    int? missionUpdatedAtMs,
    int? telemetryUpdatedAtMs,
    int? armCommandIntentUpdatedAtMs,

    String? errorMessage,
  }) {
    return BoatState(
      connectionState: connectionState ?? this.connectionState,
      gps: gps ?? this.gps,
      battery: battery ?? this.battery,

      isArmed: isArmed ?? this.isArmed,
      sailMode: sailMode ?? this.sailMode,
      speedMode: speedMode ?? this.speedMode,

      roll: roll ?? this.roll,
      pitch: pitch ?? this.pitch,
      yaw: yaw ?? this.yaw,

      currentMode: currentMode ?? this.currentMode,
      currentSubMode: currentSubMode ?? this.currentSubMode,
      gpsRawPresent: gpsRawPresent ?? this.gpsRawPresent,
      gpsAutonomyReady: gpsAutonomyReady ?? this.gpsAutonomyReady,
      gpsDegradedReason: clearGpsDegradedReason
          ? null
          : gpsDegradedReason ?? this.gpsDegradedReason,
      gpsQualityState: gpsQualityState ?? this.gpsQualityState,
      calibrationPhase: calibrationPhase ?? this.calibrationPhase,
      calibrationRawStatus: calibrationRawStatus ?? this.calibrationRawStatus,
      calibrationProgress: calibrationProgress ?? this.calibrationProgress,
      calibrationOrientationSide:
          calibrationOrientationSide ?? this.calibrationOrientationSide,
      calibrationSideDoneMask:
          calibrationSideDoneMask ?? this.calibrationSideDoneMask,
      missionState: missionState ?? this.missionState,
      missionSequence: missionSequence ?? this.missionSequence,

      armCommandIntentState: armCommandIntentState ?? this.armCommandIntentState,
      armCommandTargetStatus: armCommandTargetStatus ?? this.armCommandTargetStatus,
      armCommandIntentReason: armCommandIntentReason ?? this.armCommandIntentReason,

      armStatusUpdatedAtMs: armStatusUpdatedAtMs ?? this.armStatusUpdatedAtMs,
      modeUpdatedAtMs: modeUpdatedAtMs ?? this.modeUpdatedAtMs,
      gpsUpdatedAtMs: gpsUpdatedAtMs ?? this.gpsUpdatedAtMs,
      calibrationUpdatedAtMs:
          calibrationUpdatedAtMs ?? this.calibrationUpdatedAtMs,
      missionUpdatedAtMs: missionUpdatedAtMs ?? this.missionUpdatedAtMs,
      telemetryUpdatedAtMs: telemetryUpdatedAtMs ?? this.telemetryUpdatedAtMs,
      armCommandIntentUpdatedAtMs:
          armCommandIntentUpdatedAtMs ?? this.armCommandIntentUpdatedAtMs,

      errorMessage: errorMessage,
    );
  }

  bool isDomainFresh(int updatedAtMs, Duration timeout, {int? nowMs}) {
    if (updatedAtMs <= 0) {
      return false;
    }
    final now = nowMs ?? DateTime.now().millisecondsSinceEpoch;
    return now - updatedAtMs <= timeout.inMilliseconds;
  }
}
