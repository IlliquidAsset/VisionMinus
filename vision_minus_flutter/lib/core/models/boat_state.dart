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
    this.errorMessage,
  });

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
      errorMessage: errorMessage,
    );
  }
}
