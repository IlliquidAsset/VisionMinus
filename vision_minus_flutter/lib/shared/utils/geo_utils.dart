import 'dart:math';

/// Utility functions for GPS coordinate conversions and calculations.
class GeoUtils {
  /// Convert decimal degrees to degE7 integer (MAVLink format).
  static int toDegE7(double degrees) => (degrees * 1e7).round();

  /// Convert degE7 integer to decimal degrees.
  static double fromDegE7(int degE7) => degE7 / 1e7;

  /// Calculate distance in meters between two lat/lon points using Haversine.
  static double distanceMeters(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const R = 6371000.0; // Earth radius in meters
    final dLat = _toRad(lat2 - lat1);
    final dLon = _toRad(lon2 - lon1);
    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRad(lat1)) * cos(_toRad(lat2)) * sin(dLon / 2) * sin(dLon / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return R * c;
  }

  /// Calculate distance in feet.
  static double distanceFeet(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    return distanceMeters(lat1, lon1, lat2, lon2) * 3.28084;
  }

  /// Calculate bearing in degrees from point 1 to point 2.
  static double bearing(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    final dLon = _toRad(lon2 - lon1);
    final y = sin(dLon) * cos(_toRad(lat2));
    final x = cos(_toRad(lat1)) * sin(_toRad(lat2)) -
        sin(_toRad(lat1)) * cos(_toRad(lat2)) * cos(dLon);
    return (_toDeg(atan2(y, x)) + 360) % 360;
  }

  static double _toRad(double deg) => deg * pi / 180;
  static double _toDeg(double rad) => rad * 180 / pi;
}
