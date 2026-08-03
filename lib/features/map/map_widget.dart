import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../core/models/boat_state.dart';
import '../../core/models/gps_position.dart';
import '../../shared/utils/geo_utils.dart';
import '../connection/connection_provider.dart';
import '../navigation/navigation_provider.dart';
import '../settings/unit_system_provider.dart';
import 'map_provider.dart';

class MapWidget extends ConsumerStatefulWidget {
  final bool compact;

  const MapWidget({super.key, this.compact = false});

  @override
  ConsumerState<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends ConsumerState<MapWidget> {
  GoogleMapController? _mapController;
  static const int _phoneHeadingStaleMs = 2000;
  static const int _droneHeadingStaleMs = 2000;
  static const double _cameraBearingThresholdDeg = 2;
  static const double _cameraTargetThresholdMeters = 1.5;

  // Default to Cherokee Lake area
  static const _defaultPosition = LatLng(36.17, -83.5);
  LatLng? _lastCameraTarget;
  double? _lastCameraBearing;
  bool _programmaticCameraMove = false;

  @override
  Widget build(BuildContext context) {
    final boatState = ref.watch(boatStateProvider);
    final phonePos = ref.watch(phonePositionProvider);
    final phoneHeading = ref.watch(phoneHeadingProvider);
    final trail = ref.watch(boatTrailProvider);
    final followMode = ref.watch(mapFollowModeProvider);
    final focusCommand = ref.watch(mapFocusCommandProvider);
    final editMode = ref.watch(waypointEditModeProvider);
    final rthActive = ref.watch(rthActiveProvider);
    final navState = ref.watch(navigationProvider);
    final unitSystem = ref.watch(unitSystemProvider);
    final boatPos = boatState.gps;
    final boatHasSaneFix = boatPos.hasFix && boatPos.isSane;
    final cameraBearing = _resolveCameraBearing(
      followMode: followMode,
      boatState: boatState,
      phoneHeading: phoneHeading.valueOrNull,
    );

    if (!widget.compact && focusCommand != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        switch (focusCommand) {
          case MapFocusCommand.boat:
            if (boatHasSaneFix) {
              _animateCameraTarget(LatLng(boatPos.lat, boatPos.lon), cameraBearing);
            }
            break;
          case MapFocusCommand.phone:
            phonePos.whenData((pos) {
              _animateCameraTarget(
                LatLng(pos.latitude, pos.longitude),
                cameraBearing,
              );
            });
            break;
        }
        ref.read(mapFocusCommandProvider.notifier).state = null;
      });
    }

    // Build markers
    final markers = <Marker>{};
    final polylines = <Polyline>{};

    // Boat marker
    if (boatHasSaneFix) {
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

      // Follow drone with camera
      if (followMode == MapFollowMode.drone && _mapController != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _animateCameraTarget(LatLng(boatPos.lat, boatPos.lon), cameraBearing);
        });
      }
    }

    // Phone marker (home position)
    phonePos.whenData((pos) {
      final phoneSane = GpsPosition.isCoordinateSane(pos.latitude, pos.longitude);
      if (!phoneSane) return;

      markers.add(Marker(
        markerId: const MarkerId('phone'),
        position: LatLng(pos.latitude, pos.longitude),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: const InfoWindow(title: 'Home (Phone)'),
      ));

      if (followMode == MapFollowMode.phone && _mapController != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _animateCameraTarget(LatLng(pos.latitude, pos.longitude), cameraBearing);
        });
      }

      // RTH line from boat to phone
      if (rthActive && boatHasSaneFix) {
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
        IgnorePointer(
          ignoring: widget.compact,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: boatHasSaneFix
                  ? LatLng(boatPos.lat, boatPos.lon)
                  : phonePos.when(
                      data: (pos) => GpsPosition.isCoordinateSane(pos.latitude, pos.longitude)
                          ? LatLng(pos.latitude, pos.longitude)
                          : _defaultPosition,
                      loading: () => _defaultPosition,
                      error: (_, __) => _defaultPosition,
                    ),
              zoom: 16,
              bearing: cameraBearing,
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
            onTap: widget.compact
                ? null
                : editMode
                ? (latLng) {
                    ref.read(navigationProvider.notifier).addWaypoint(
                          latLng.latitude,
                          latLng.longitude,
                        );
                  }
                : null,
            onCameraMove: (_) {
              if (_programmaticCameraMove || widget.compact) {
                return;
              }
              // User moved the map manually — stop auto-follow
              if (followMode != MapFollowMode.free) {
                ref.read(mapFollowModeProvider.notifier).state = MapFollowMode.free;
              }
            },
            onCameraIdle: () {
              _programmaticCameraMove = false;
            },
          ),
        ),

        // Distance overlay (top-center)
        if (!widget.compact && boatHasSaneFix)
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: Center(
              child: phonePos.when(
                data: (pos) {
                  final meters = GeoUtils.distanceMeters(
                    boatPos.lat,
                    boatPos.lon,
                    pos.latitude,
                    pos.longitude,
                  );
                  final dist = distanceForUnit(meters, unitSystem);
                  final distUnit = distanceUnitLabel(unitSystem);
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
                      '${dist.toStringAsFixed(0)} $distUnit  ${bearing.toStringAsFixed(0)}°',
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  );
                },
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
              ),
            ),
          ),

        // Locator button (bottom-left)
        if (!widget.compact)
          Positioned(
          bottom: 160,
          left: 16,
          child: FloatingActionButton.small(
            heroTag: 'follow',
            backgroundColor: _followModeColor(followMode),
            onPressed: () {
              final nextMode = _nextFollowMode(followMode);
              ref.read(mapFollowModeProvider.notifier).state = nextMode;

              if (nextMode == MapFollowMode.drone) {
                if (boatHasSaneFix) {
                  _animateCameraTarget(
                    LatLng(boatPos.lat, boatPos.lon),
                    _resolveCameraBearing(
                      followMode: nextMode,
                      boatState: boatState,
                      phoneHeading: phoneHeading.valueOrNull,
                    ),
                  );
                }
              } else if (nextMode == MapFollowMode.phone) {
                phonePos.whenData((pos) {
                  _animateCameraTarget(
                    LatLng(pos.latitude, pos.longitude),
                    _resolveCameraBearing(
                      followMode: nextMode,
                      boatState: boatState,
                      phoneHeading: phoneHeading.valueOrNull,
                    ),
                  );
                });
              }
            },
            child: Icon(
              _followModeIcon(followMode),
              color: Colors.white,
            ),
          ),
        ),

        // Edit mode indicator
        if (editMode && !widget.compact)
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

  void _animateCameraTarget(LatLng target, double bearing) {
    if (!GpsPosition.isCoordinateSane(target.latitude, target.longitude)) {
      return;
    }
    final lastTarget = _lastCameraTarget;
    final lastBearing = _lastCameraBearing;
    final targetChanged = lastTarget == null ||
        GeoUtils.distanceMeters(
              lastTarget.latitude,
              lastTarget.longitude,
              target.latitude,
              target.longitude,
            ) >
            _cameraTargetThresholdMeters;
    final bearingDelta = lastBearing == null
        ? 360.0
        : ((bearing - lastBearing).abs() % 360.0).clamp(0.0, 360.0);
    final bearingChanged = bearingDelta > _cameraBearingThresholdDeg &&
        (360.0 - bearingDelta) > _cameraBearingThresholdDeg;
    if (!targetChanged && !bearingChanged) {
      return;
    }
    _programmaticCameraMove = true;
    _lastCameraTarget = target;
    _lastCameraBearing = bearing;
    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: target,
          zoom: 16,
          bearing: bearing,
        ),
      ),
    );
  }

  double _resolveCameraBearing({
    required MapFollowMode followMode,
    required BoatState boatState,
    required PhoneHeading? phoneHeading,
  }) {
    final nowMs = DateTime.now().millisecondsSinceEpoch;

    if (followMode == MapFollowMode.drone) {
      final isStale = nowMs - boatState.telemetryUpdatedAtMs > _droneHeadingStaleMs;
      if (isStale) {
        return 0;
      }
      // Boat yaw is radians from SDK; map bearing expects degrees.
      return (boatState.yaw * 180 / pi + 360) % 360;
    }

    if (followMode == MapFollowMode.phone) {
      if (phoneHeading == null) {
        return 0;
      }
      final isStale = nowMs - phoneHeading.updatedAtMs > _phoneHeadingStaleMs;
      if (isStale) {
        return 0;
      }
      return phoneHeading.bearingDeg;
    }

    return 0;
  }

  MapFollowMode _nextFollowMode(MapFollowMode mode) {
    switch (mode) {
      case MapFollowMode.drone:
        return MapFollowMode.phone;
      case MapFollowMode.phone:
        return MapFollowMode.free;
      case MapFollowMode.free:
        return MapFollowMode.drone;
    }
  }

  IconData _followModeIcon(MapFollowMode mode) {
    switch (mode) {
      case MapFollowMode.drone:
        return Icons.directions_boat;
      case MapFollowMode.phone:
        return Icons.person_pin_circle;
      case MapFollowMode.free:
        return Icons.gps_off;
    }
  }

  Color _followModeColor(MapFollowMode mode) {
    switch (mode) {
      case MapFollowMode.drone:
        return Colors.blue;
      case MapFollowMode.phone:
        return Colors.green;
      case MapFollowMode.free:
        return Colors.grey;
    }
  }
}
