import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/connection/connection_controller.dart';
import '../../core/connection/connection_phase.dart';
import '../../core/connection/connection_repository.dart';
import '../../core/connection/connection_state.dart' as runtime;
import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/models/boat_state.dart';
import '../../core/models/gps_position.dart';
import '../../core/models/battery_status.dart';

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
  final Ref _ref;

  StreamSubscription? _gpsSub;
  StreamSubscription? _batterySub;
  StreamSubscription? _connectionSub;
  StreamSubscription? _navigationSub;
  StreamSubscription? _attitudeSub;

  BoatStateNotifier(this._ref) : super(const BoatState()) {
    PowerSdkBridge.init();
    _listenToStreams();
  }

  void _listenToStreams() {
    final connectionRepository = _ref.read(connectionRepositoryProvider);
    _applyConnectionState(connectionRepository.currentState);
    _connectionSub =
        connectionRepository.connectionStateStream.listen(_applyConnectionState);

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
          break;
        case 'speed_mode':
          state = state.copyWith(speedMode: event['mode'] as int? ?? 0);
          break;
        default:
          break;
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

  void _applyConnectionState(runtime.ConnectionState connectionState) {
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
    _connectionSub?.cancel();
    _navigationSub?.cancel();
    _attitudeSub?.cancel();
    super.dispose();
  }
}
