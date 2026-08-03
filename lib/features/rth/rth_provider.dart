import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/models/gps_position.dart';
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
  bool _homeVerified = false;
  bool _locationUpdateInFlight = false;

  bool get isHomeVerified => _homeVerified;

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

      if (!GpsPosition.isCoordinateSane(pos.latitude, pos.longitude)) {
        developer.log(
          'BLOCKED setHomeToPhone: insane phone GPS lat=${pos.latitude} lon=${pos.longitude}',
          name: 'runtime.safety',
        );
        state = state.copyWith(
          status: RthStatus.error,
          statusMessage: 'Phone GPS position invalid — cannot set home',
        );
        return;
      }

      final setReturnPointResult = await PowerSdkBridge.setReturnPoint(
        type: 1,
        lat: pos.latitude,
        lon: pos.longitude,
      );
      if (setReturnPointResult != 0) {
        state = state.copyWith(
          status: RthStatus.error,
          statusMessage: 'Set home failed (code: $setReturnPointResult)',
        );
        return;
      }

      // Send initial user location
      final setUserLocationResult = await PowerSdkBridge.setUserLocation(
        lat: GeoUtils.toDegE7(pos.latitude),
        lon: GeoUtils.toDegE7(pos.longitude),
      );
      if (setUserLocationResult != 0) {
        state = state.copyWith(
          status: RthStatus.error,
          statusMessage: 'Phone location upload failed (code: $setUserLocationResult)',
        );
        return;
      }

      // Start periodic updates every 5 seconds
      _startPeriodicLocationUpdates();
      _homeVerified = true;

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
        if (_locationUpdateInFlight) {
          return;
        }
        _locationUpdateInFlight = true;
        try {
          final pos = await Geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
          );
          if (!GpsPosition.isCoordinateSane(pos.latitude, pos.longitude)) {
            return;
          }
          await PowerSdkBridge.setUserLocation(
            lat: GeoUtils.toDegE7(pos.latitude),
            lon: GeoUtils.toDegE7(pos.longitude),
          );
        } catch (_) {
          // Silently continue — phone GPS may temporarily be unavailable
        } finally {
          _locationUpdateInFlight = false;
        }
      },
    );
  }

  /// Trigger return to home.
  Future<void> returnToHome() async {
    if (!_homeVerified) {
      developer.log(
        'BLOCKED RTH: home position never verified this session',
        name: 'runtime.safety',
      );
      state = state.copyWith(
        status: RthStatus.error,
        statusMessage: 'RTH blocked — set home first',
      );
      return;
    }
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
