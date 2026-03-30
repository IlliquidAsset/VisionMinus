import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../connection/connection_provider.dart';

/// Phone GPS position stream provider.
final phonePositionProvider = StreamProvider<Position>((ref) {
  return Geolocator.getPositionStream(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 3,
    ),
  );
});

/// Breadcrumb trail of boat positions.
final boatTrailProvider = StateNotifierProvider<BoatTrailNotifier, List<LatLng>>((ref) {
  final notifier = BoatTrailNotifier();
  ref.listen(boatStateProvider, (prev, next) {
    if (next.gps.hasFix && next.gps.latE7 != 0) {
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

/// Whether the map camera should follow the boat.
final mapFollowBoatProvider = StateProvider<bool>((ref) => true);

enum MapFocusCommand { boat, phone }

final mapFocusCommandProvider = StateProvider<MapFocusCommand?>((ref) => null);

/// Whether waypoint editing mode is active.
final waypointEditModeProvider = StateProvider<bool>((ref) => false);

/// RTH active state for map visualization.
final rthActiveProvider = StateProvider<bool>((ref) => false);
