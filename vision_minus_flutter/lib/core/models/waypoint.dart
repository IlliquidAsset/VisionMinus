/// A waypoint for mission planning.
class Waypoint {
  final double lat;
  final double lon;
  final double thrustPercent; // 1-100%
  final double stayTimeSeconds;
  final double recvRadiusMeters;
  final double directionDeg;

  const Waypoint({
    required this.lat,
    required this.lon,
    this.thrustPercent = 5,
    this.stayTimeSeconds = 0,
    this.recvRadiusMeters = 5,
    this.directionDeg = 0,
  });

  /// Convert to map for platform channel upload.
  Map<String, double> toUploadMap() {
    return {
      'lat': lat,
      'lon': lon,
      'thrust': thrustPercent,
      'stayTime': stayTimeSeconds,
      'recvRadius': recvRadiusMeters,
      'direction': directionDeg,
    };
  }

  Waypoint copyWith({
    double? lat,
    double? lon,
    double? thrustPercent,
    double? stayTimeSeconds,
    double? recvRadiusMeters,
    double? directionDeg,
  }) {
    return Waypoint(
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      thrustPercent: thrustPercent ?? this.thrustPercent,
      stayTimeSeconds: stayTimeSeconds ?? this.stayTimeSeconds,
      recvRadiusMeters: recvRadiusMeters ?? this.recvRadiusMeters,
      directionDeg: directionDeg ?? this.directionDeg,
    );
  }
}
