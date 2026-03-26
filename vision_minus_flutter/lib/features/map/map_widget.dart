import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../shared/utils/geo_utils.dart';
import '../connection/connection_provider.dart';
import '../navigation/navigation_provider.dart';
import 'map_provider.dart';

class MapWidget extends ConsumerStatefulWidget {
  const MapWidget({super.key});

  @override
  ConsumerState<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends ConsumerState<MapWidget> {
  GoogleMapController? _mapController;

  // Default to Cherokee Lake area
  static const _defaultPosition = LatLng(36.17, -83.5);

  @override
  Widget build(BuildContext context) {
    final boatState = ref.watch(boatStateProvider);
    final phonePos = ref.watch(phonePositionProvider);
    final trail = ref.watch(boatTrailProvider);
    final followBoat = ref.watch(mapFollowBoatProvider);
    final editMode = ref.watch(waypointEditModeProvider);
    final rthActive = ref.watch(rthActiveProvider);
    final navState = ref.watch(navigationProvider);

    // Build markers
    final markers = <Marker>{};
    final polylines = <Polyline>{};

    // Boat marker
    final boatPos = boatState.gps;
    if (boatPos.hasFix && boatPos.latE7 != 0) {
      markers.add(Marker(
        markerId: const MarkerId('boat'),
        position: LatLng(boatPos.lat, boatPos.lon),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        anchor: const Offset(0.5, 0.5),
        infoWindow: InfoWindow(
          title: 'Boat',
          snippet: '${boatPos.speedFtPerSec.toStringAsFixed(1)} ft/s  ${boatPos.satellites} sats',
        ),
      ));

      // Follow boat with camera
      if (followBoat && _mapController != null) {
        _mapController!.animateCamera(
          CameraUpdate.newLatLng(LatLng(boatPos.lat, boatPos.lon)),
        );
      }
    }

    // Phone marker (home position)
    phonePos.whenData((pos) {
      markers.add(Marker(
        markerId: const MarkerId('phone'),
        position: LatLng(pos.latitude, pos.longitude),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: const InfoWindow(title: 'Home (Phone)'),
      ));

      // RTH line from boat to phone
      if (rthActive && boatPos.hasFix) {
        polylines.add(Polyline(
          polylineId: const PolylineId('rth_path'),
          points: [
            LatLng(boatPos.lat, boatPos.lon),
            LatLng(pos.latitude, pos.longitude),
          ],
          color: Colors.orange,
          width: 3,
          patterns: [PatternItem.dash(20), PatternItem.gap(10)],
        ));
      }
    });

    // Breadcrumb trail
    if (trail.length >= 2) {
      polylines.add(Polyline(
        polylineId: const PolylineId('trail'),
        points: trail,
        color: Colors.cyan.withValues(alpha: 0.6),
        width: 2,
      ));
    }

    // Waypoint markers and route line
    final waypoints = navState.waypoints;
    if (waypoints.isNotEmpty) {
      final wpPoints = <LatLng>[];
      for (var i = 0; i < waypoints.length; i++) {
        final wp = waypoints[i];
        final isActive = navState.missionState == MissionState.running &&
            navState.currentWaypointIndex == i;
        wpPoints.add(LatLng(wp.lat, wp.lon));
        markers.add(Marker(
          markerId: MarkerId('wp_$i'),
          position: LatLng(wp.lat, wp.lon),
          icon: BitmapDescriptor.defaultMarkerWithHue(
            isActive ? BitmapDescriptor.hueAzure : BitmapDescriptor.hueGreen,
          ),
          infoWindow: InfoWindow(
            title: 'WP ${i + 1}',
            snippet: 'Thrust: ${wp.thrustPercent.toInt()}%',
          ),
          draggable: editMode,
          onDragEnd: editMode
              ? (newPos) {
                  ref.read(navigationProvider.notifier).updateWaypoint(
                        i,
                        wp.copyWith(lat: newPos.latitude, lon: newPos.longitude),
                      );
                }
              : null,
        ));
      }

      // Waypoint route polyline
      if (wpPoints.length >= 2) {
        polylines.add(Polyline(
          polylineId: const PolylineId('mission_route'),
          points: wpPoints,
          color: Colors.green,
          width: 3,
          patterns: [PatternItem.dash(15), PatternItem.gap(8)],
        ));
      }
    }

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: boatPos.hasFix && boatPos.latE7 != 0
                ? LatLng(boatPos.lat, boatPos.lon)
                : _defaultPosition,
            zoom: 16,
          ),
          mapType: MapType.satellite,
          markers: markers,
          polylines: polylines,
          myLocationEnabled: false,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (controller) {
            _mapController = controller;
          },
          onTap: editMode
              ? (latLng) {
                  ref.read(navigationProvider.notifier).addWaypoint(
                        latLng.latitude,
                        latLng.longitude,
                      );
                }
              : null,
          onCameraMove: (_) {
            // User moved the map manually — stop auto-follow
            if (followBoat) {
              ref.read(mapFollowBoatProvider.notifier).state = false;
            }
          },
        ),

        // Distance overlay (top-center)
        if (boatPos.hasFix)
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: Center(
              child: phonePos.when(
                data: (pos) {
                  final dist = GeoUtils.distanceFeet(
                    boatPos.lat, boatPos.lon,
                    pos.latitude, pos.longitude,
                  );
                  final bearing = GeoUtils.bearing(
                    pos.latitude, pos.longitude,
                    boatPos.lat, boatPos.lon,
                  );
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      '${dist.toStringAsFixed(0)} ft  ${bearing.toStringAsFixed(0)}°',
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  );
                },
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
              ),
            ),
          ),

        // Follow button (bottom-left)
        Positioned(
          bottom: 16,
          left: 16,
          child: FloatingActionButton.small(
            heroTag: 'follow',
            backgroundColor: followBoat ? Colors.blue : Colors.grey[800],
            onPressed: () {
              ref.read(mapFollowBoatProvider.notifier).state = !followBoat;
              if (!followBoat && boatPos.hasFix) {
                _mapController?.animateCamera(
                  CameraUpdate.newLatLng(LatLng(boatPos.lat, boatPos.lon)),
                );
              }
            },
            child: Icon(
              followBoat ? Icons.gps_fixed : Icons.gps_not_fixed,
              color: Colors.white,
            ),
          ),
        ),

        // Edit mode indicator
        if (editMode)
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'TAP TO ADD WAYPOINTS',
                style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }
}
