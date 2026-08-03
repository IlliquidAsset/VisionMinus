import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../connection/connection_provider.dart';

class PhoneHeading {
  final double bearingDeg;
  final int updatedAtMs;

  const PhoneHeading({
    required this.bearingDeg,
    required this.updatedAtMs,
  });
}

/// Phone GPS position stream provider.
final phonePositionProvider = StreamProvider<Position>((ref) {
  return Geolocator.getPositionStream(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 3,
    ),
  );
});

/// Phone heading stream from Android sensors.
final phoneHeadingProvider = StreamProvider<PhoneHeading?>((ref) {
  PowerSdkBridge.init();
  return PowerSdkBridge.phoneHeadingStream.map((event) {
    final type = event['type']?.toString();
    if (type != 'phone_heading') {
      return null;
    }
    final bearing = (event['heading_deg'] as num?)?.toDouble();
    if (bearing == null || bearing.isNaN || bearing.isInfinite) {
      return null;
    }
    return PhoneHeading(
      bearingDeg: bearing,
      updatedAtMs: (event['ts_ms'] as num?)?.toInt() ??
          DateTime.now().millisecondsSinceEpoch,
    );
  });
});

/// Breadcrumb trail of boat positions.
final boatTrailProvider = StateNotifierProvider<BoatTrailNotifier, List<LatLng>>((ref) {
  final notifier = BoatTrailNotifier();
  ref.listen(boatStateProvider, (prev, next) {
    if (next.gps.hasFix && next.gps.isSane) {
      notifier.addPoint(LatLng(next.gps.lat, next.gps.lon));
    }
  });
  return notifier;
});

class BoatTrailNotifier extends StateNotifier<List<LatLng>> {
  BoatTrailNotifier() : super([]);

  void addPoint(LatLng point) {
    // Only add if moved at least ~1 meter from last point
    if (state.isEmpty) {
      state = [point];
      return;
    }
    final last = state.last;
    final dlat = (point.latitude - last.latitude).abs();
    final dlon = (point.longitude - last.longitude).abs();
    if (dlat > 0.00001 || dlon > 0.00001) {
      state = [...state, point];
    }
  }

  void clear() {
    state = [];
  }
}

enum MapFollowMode { drone, phone, free }

/// Map camera follow/orientation mode.
final mapFollowModeProvider =
    StateProvider<MapFollowMode>((ref) => MapFollowMode.phone);

enum MapFocusCommand { boat, phone }

final mapFocusCommandProvider = StateProvider<MapFocusCommand?>((ref) => null);

/// Whether waypoint editing mode is active.
final waypointEditModeProvider = StateProvider<bool>((ref) => false);

/// RTH active state for map visualization.
final rthActiveProvider = StateProvider<bool>((ref) => false);
