enum GpsDegradedReason {
  missingEph,
  lowSats,
  badHdop,
  stale,
  noPosition,
}

extension GpsDegradedReasonWire on GpsDegradedReason {
  String get wireName {
    switch (this) {
      case GpsDegradedReason.missingEph:
        return 'missing_eph';
      case GpsDegradedReason.lowSats:
        return 'low_sats';
      case GpsDegradedReason.badHdop:
        return 'bad_hdop';
      case GpsDegradedReason.stale:
        return 'stale';
      case GpsDegradedReason.noPosition:
        return 'no_position';
    }
  }
}

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
  final bool isAutonomyReady;
  final GpsDegradedReason? degradedReason;

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
    this.isAutonomyReady = false,
    this.degradedReason,
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

  /// Raw GPS telemetry present (non-zero position).
  bool get hasFix => latE7 != 0 && lonE7 != 0;

  GpsPosition copyWith({
    int? latE7,
    int? lonE7,
    int? altMm,
    int? eph,
    int? epv,
    int? velCmS,
    int? cogCdeg,
    int? fixType,
    int? satellites,
    bool? isAutonomyReady,
    GpsDegradedReason? degradedReason,
    bool clearDegradedReason = false,
  }) {
    return GpsPosition(
      latE7: latE7 ?? this.latE7,
      lonE7: lonE7 ?? this.lonE7,
      altMm: altMm ?? this.altMm,
      eph: eph ?? this.eph,
      epv: epv ?? this.epv,
      velCmS: velCmS ?? this.velCmS,
      cogCdeg: cogCdeg ?? this.cogCdeg,
      fixType: fixType ?? this.fixType,
      satellites: satellites ?? this.satellites,
      isAutonomyReady: isAutonomyReady ?? this.isAutonomyReady,
      degradedReason: clearDegradedReason
          ? null
          : degradedReason ?? this.degradedReason,
    );
  }

  factory GpsPosition.fromEvent(Map<String, dynamic> event) {
    final lat = (event['lat'] as num?)?.toInt() ?? 0;
    final lon = (event['lon'] as num?)?.toInt() ?? 0;
    final sats = (event['satellites'] as num?)?.toInt() ?? 0;
    final hasEph = event.containsKey('eph');
    final eph = (event['eph'] as num?)?.toInt() ?? 0;
    final rawPresent = lat != 0 && lon != 0;
    final hasGoodHdop = hasEph && eph > 0 && eph <= 300;
    final autonomyReady = rawPresent && hasGoodHdop && sats > 8;
    final degradedReason = _resolveDegradedReason(
      rawPresent: rawPresent,
      hasEph: hasEph,
      hasGoodHdop: hasGoodHdop,
      satellites: sats,
      autonomyReady: autonomyReady,
    );

    return GpsPosition(
      latE7: lat,
      lonE7: lon,
      altMm: (event['alt'] as num?)?.toInt() ?? 0,
      eph: eph,
      epv: (event['epv'] as num?)?.toInt() ?? 0,
      velCmS: (event['vel'] as num?)?.toInt() ?? 0,
      cogCdeg: (event['cog'] as num?)?.toInt() ?? 0,
      fixType: (event['fix_type'] as num?)?.toInt() ?? 0,
      satellites: sats,
      isAutonomyReady: autonomyReady,
      degradedReason: degradedReason,
    );
  }

  static GpsDegradedReason? _resolveDegradedReason({
    required bool rawPresent,
    required bool hasEph,
    required bool hasGoodHdop,
    required int satellites,
    required bool autonomyReady,
  }) {
    if (autonomyReady) {
      return null;
    }
    if (!rawPresent) {
      return GpsDegradedReason.noPosition;
    }
    if (!hasEph) {
      return GpsDegradedReason.missingEph;
    }
    if (!hasGoodHdop) {
      return GpsDegradedReason.badHdop;
    }
    if (satellites <= 8) {
      return GpsDegradedReason.lowSats;
    }
    return GpsDegradedReason.missingEph;
  }

  static bool isCoordinateSane(double lat, double lon) {
    if (lat.abs() > 90 || lon.abs() > 180) return false;
    if (lat.abs() < 1.0 && lon.abs() < 1.0) return false;
    if (lat.isNaN || lon.isNaN || lat.isInfinite || lon.isInfinite) return false;
    return true;
  }

  /// Reject GPS data with impossible satellite counts or other telemetry
  /// that indicates the fix is garbage even if coordinates look plausible.
  bool get isTelemetrySane => satellites >= 0 && satellites <= 50;

  static bool isCoordinateSaneE7(int latE7, int lonE7) {
    return isCoordinateSane(latE7 / 1e7, lonE7 / 1e7);
  }

  bool get isSane => isCoordinateSane(lat, lon);

  @override
  String toString() =>
      'GPS(${lat.toStringAsFixed(7)}, ${lon.toStringAsFixed(7)}, fix=$fixType, sats=$satellites, raw=$hasFix, autonomy=$isAutonomyReady, degraded=${degradedReason?.wireName})';
}
