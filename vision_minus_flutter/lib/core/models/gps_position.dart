/// GPS position from the boat's GPS receiver.
/// Coordinates arrive as degE7 integers from MAVLink.
class GpsPosition {
  final int latE7; // latitude in degE7
  final int lonE7; // longitude in degE7
  final int altMm; // altitude in mm
  final int eph; // GPS HDOP
  final int epv; // GPS VDOP
  final int velCmS; // velocity in cm/s
  final int cogCdeg; // course over ground in centidegrees
  final int fixType; // 0=nofix, 2=2D, 3=3D
  final int satellites;

  const GpsPosition({
    this.latE7 = 0,
    this.lonE7 = 0,
    this.altMm = 0,
    this.eph = 0,
    this.epv = 0,
    this.velCmS = 0,
    this.cogCdeg = 0,
    this.fixType = 0,
    this.satellites = 0,
  });

  /// Latitude in decimal degrees.
  double get lat => latE7 / 1e7;

  /// Longitude in decimal degrees.
  double get lon => lonE7 / 1e7;

  /// Altitude in meters.
  double get altMeters => altMm / 1000.0;

  /// Speed in feet per second (from cm/s).
  double get speedFtPerSec => velCmS * 0.0328084;

  /// Speed in m/s.
  double get speedMps => velCmS / 100.0;

  /// Course over ground in degrees.
  double get courseDeg => cogCdeg / 100.0;

  bool get hasFix => fixType >= 2;

  factory GpsPosition.fromEvent(Map<String, dynamic> event) {
    return GpsPosition(
      latE7: event['lat'] as int? ?? 0,
      lonE7: event['lon'] as int? ?? 0,
      altMm: event['alt'] as int? ?? 0,
      eph: event['eph'] as int? ?? 0,
      epv: event['epv'] as int? ?? 0,
      velCmS: event['vel'] as int? ?? 0,
      cogCdeg: event['cog'] as int? ?? 0,
      fixType: event['fix_type'] as int? ?? 0,
      satellites: event['satellites'] as int? ?? 0,
    );
  }

  @override
  String toString() =>
      'GPS(${lat.toStringAsFixed(7)}, ${lon.toStringAsFixed(7)}, fix=$fixType, sats=$satellites)';
}
