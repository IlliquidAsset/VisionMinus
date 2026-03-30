import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../../shared/utils/geo_utils.dart';
import '../map/map_provider.dart';

enum RthStatus { idle, settingHome, active, returning, completed, error }

class RthState {
  final RthStatus status;
  final int remainingSeconds;
  final String? statusMessage;

  const RthState({
    this.status = RthStatus.idle,
    this.remainingSeconds = 0,
    this.statusMessage,
  });

  RthState copyWith({
    RthStatus? status,
    int? remainingSeconds,
    String? statusMessage,
  }) {
    return RthState(
      status: status ?? this.status,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      statusMessage: statusMessage,
    );
  }
}

final rthProvider = StateNotifierProvider<RthNotifier, RthState>((ref) {
  return RthNotifier(ref);
});

class RthNotifier extends StateNotifier<RthState> {
  final Ref _ref;
  Timer? _locationUpdateTimer;
  StreamSubscription? _navSub;

  RthNotifier(this._ref) : super(const RthState()) {
    PowerSdkBridge.init();
    _listenToNavEvents();
  }

  void _listenToNavEvents() {
    _navSub = PowerSdkBridge.navigationStream.listen((event) {
      final type = event['type'] as String?;
      switch (type) {
        case 'rtl_status':
          final status = event['status'] as String? ?? '';
          if (status.toLowerCase().contains('complet')) {
            state = state.copyWith(
              status: RthStatus.completed,
              statusMessage: 'Return complete',
            );
            _ref.read(rthActiveProvider.notifier).state = false;
          } else {
            state = state.copyWith(
              status: RthStatus.returning,
              statusMessage: status,
            );
          }
          break;
        case 'remaining_rtl_time':
          state = state.copyWith(
            remainingSeconds: event['time_seconds'] as int? ?? 0,
          );
          break;
        case 'execute_return_over':
          state = state.copyWith(
            status: RthStatus.completed,
            statusMessage: 'Return complete',
          );
          _ref.read(rthActiveProvider.notifier).state = false;
          break;
        case 'set_return_point_result':
          state = state.copyWith(
            status: RthStatus.idle,
            statusMessage: 'Home set',
          );
          break;
        default:
          break;
      }
    });
  }

  /// Set home position to current phone GPS and start periodic location updates.
  Future<void> setHomeToPhone() async {
    state = state.copyWith(status: RthStatus.settingHome);

    try {
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
      );

      // Set return point to phone location
      await PowerSdkBridge.setReturnPoint(
        type: 1,
        lat: pos.latitude,
        lon: pos.longitude,
      );

      // Send initial user location
      await PowerSdkBridge.setUserLocation(
        lat: GeoUtils.toDegE7(pos.latitude),
        lon: GeoUtils.toDegE7(pos.longitude),
      );

      // Start periodic updates every 5 seconds
      _startPeriodicLocationUpdates();

      state = state.copyWith(
        status: RthStatus.idle,
        statusMessage: 'Home set to phone',
      );
    } catch (e) {
      state = state.copyWith(
        status: RthStatus.error,
        statusMessage: 'Failed to get phone GPS: $e',
      );
    }
  }

  void _startPeriodicLocationUpdates() {
    _locationUpdateTimer?.cancel();
    _locationUpdateTimer = Timer.periodic(
      const Duration(seconds: 5),
      (_) async {
        try {
          final pos = await Geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
          );
          await PowerSdkBridge.setUserLocation(
            lat: GeoUtils.toDegE7(pos.latitude),
            lon: GeoUtils.toDegE7(pos.longitude),
          );
        } catch (_) {
          // Silently continue — phone GPS may temporarily be unavailable
        }
      },
    );
  }

  /// Trigger return to home.
  Future<void> returnToHome() async {
    state = state.copyWith(
      status: RthStatus.returning,
      statusMessage: 'Returning to home...',
    );
    _ref.read(rthActiveProvider.notifier).state = true;
    await PowerSdkBridge.rtl();
  }

  /// Cancel RTH and return to manual control.
  Future<void> cancelRth() async {
    await PowerSdkBridge.setSailMode(0); // manual mode
    state = state.copyWith(
      status: RthStatus.idle,
      statusMessage: 'RTH cancelled',
    );
    _ref.read(rthActiveProvider.notifier).state = false;
  }

  @override
  void dispose() {
    _locationUpdateTimer?.cancel();
    _navSub?.cancel();
    super.dispose();
  }
}
