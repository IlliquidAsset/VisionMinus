import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/models/boat_state.dart';
import '../../core/models/gps_position.dart';
import '../../core/models/battery_status.dart';

/// Main boat state provider — aggregates all telemetry streams.
final boatStateProvider =
    StateNotifierProvider<BoatStateNotifier, BoatState>((ref) {
  return BoatStateNotifier();
});

class BoatStateNotifier extends StateNotifier<BoatState> {
  StreamSubscription? _gpsSub;
  StreamSubscription? _batterySub;
  StreamSubscription? _connectionSub;
  StreamSubscription? _navigationSub;
  StreamSubscription? _attitudeSub;

  BoatStateNotifier() : super(const BoatState()) {
    _listenToStreams();
  }

  void _listenToStreams() {
    _connectionSub = PowerSdkBridge.connectionStream.listen((event) {
      final type = event['type'] as String?;
      switch (type) {
        case 'usb_state':
          final usbState = event['state'] as String?;
          switch (usbState) {
            case 'connected':
              state = state.copyWith(connectionState: ConnectionState.connected);
            case 'disconnected':
              state = state.copyWith(connectionState: ConnectionState.disconnected);
            case 'requesting_permission':
              state = state.copyWith(connectionState: ConnectionState.requestingPermission);
            case 'error':
              state = state.copyWith(
                connectionState: ConnectionState.error,
                errorMessage: event['message'] as String?,
              );
            default:
              break;
          }
        case 'arm_status':
          state = state.copyWith(isArmed: (event['status'] as int?) == 1);
        case 'current_mode':
          // Could track mode changes here
          break;
        case 'error':
          state = state.copyWith(errorMessage: event['error'] as String?);
      }
    });

    _gpsSub = PowerSdkBridge.gpsStream.listen((event) {
      final type = event['type'] as String?;
      if (type == 'gps_raw_int' || type == 'w4_gps') {
        state = state.copyWith(gps: GpsPosition.fromEvent(event));
      }
    });

    _batterySub = PowerSdkBridge.batteryStream.listen((event) {
      final type = event['type'] as String?;
      if (type == 'w4_battery' || type == 'battery_status') {
        state = state.copyWith(battery: BatteryStatus.fromEvent(event));
      }
    });

    _navigationSub = PowerSdkBridge.navigationStream.listen((event) {
      final type = event['type'] as String?;
      switch (type) {
        case 'sail_mode':
          state = state.copyWith(sailMode: event['mode'] as int? ?? 0);
        case 'speed_mode':
          state = state.copyWith(speedMode: event['mode'] as int? ?? 0);
      }
    });

    _attitudeSub = PowerSdkBridge.attitudeStream.listen((event) {
      if (event['type'] == 'attitude') {
        state = state.copyWith(
          roll: (event['roll'] as num?)?.toDouble() ?? 0,
          pitch: (event['pitch'] as num?)?.toDouble() ?? 0,
          yaw: (event['yaw'] as num?)?.toDouble() ?? 0,
        );
      }
    });
  }

  Future<void> connect() async {
    state = state.copyWith(connectionState: ConnectionState.connecting);
    await PowerSdkBridge.connect();
  }

  Future<void> disconnect() async {
    await PowerSdkBridge.disconnect();
    state = state.copyWith(connectionState: ConnectionState.disconnected);
  }

  @override
  void dispose() {
    _gpsSub?.cancel();
    _batterySub?.cancel();
    _connectionSub?.cancel();
    _navigationSub?.cancel();
    _attitudeSub?.cancel();
    super.dispose();
  }
}
