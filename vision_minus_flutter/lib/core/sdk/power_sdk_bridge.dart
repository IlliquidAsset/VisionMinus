import 'package:flutter/services.dart';

/// Bridge to the native PowerVision SDK via MethodChannel and EventChannels.
class PowerSdkBridge {
  static const _method = MethodChannel('com.visionminus/sdk');
  static const _gpsChannel = EventChannel('com.visionminus/gps');
  static const _batteryChannel = EventChannel('com.visionminus/battery');
  static const _connectionChannel = EventChannel('com.visionminus/connection');
  static const _navigationChannel = EventChannel('com.visionminus/navigation');
  static const _attitudeChannel = EventChannel('com.visionminus/attitude');

  // --- Streams ---

  static Stream<Map<String, dynamic>> get gpsStream =>
      _gpsChannel.receiveBroadcastStream().map(_castEvent);

  static Stream<Map<String, dynamic>> get batteryStream =>
      _batteryChannel.receiveBroadcastStream().map(_castEvent);

  static Stream<Map<String, dynamic>> get connectionStream =>
      _connectionChannel.receiveBroadcastStream().map(_castEvent);

  static Stream<Map<String, dynamic>> get navigationStream =>
      _navigationChannel.receiveBroadcastStream().map(_castEvent);

  static Stream<Map<String, dynamic>> get attitudeStream =>
      _attitudeChannel.receiveBroadcastStream().map(_castEvent);

  // --- Connection ---

  static Future<bool> connect() async {
    final result = await _method.invokeMethod<bool>('connect');
    return result ?? false;
  }

  static Future<void> disconnect() async {
    await _method.invokeMethod('disconnect');
  }

  static Future<bool> isConnected() async {
    final result = await _method.invokeMethod<bool>('isConnected');
    return result ?? false;
  }

  // --- Arm/Disarm ---

  static Future<int> setArmStatus(int status) async {
    final result = await _method.invokeMethod<int>('setArmStatus', {'status': status});
    return result ?? -1;
  }

  // --- Sail Mode ---

  static Future<int> setSailMode(int mode) async {
    final result = await _method.invokeMethod<int>('setSailMode', {'mode': mode});
    return result ?? -1;
  }

  // --- Speed Mode ---

  static Future<int> setSpeedMode(int mode) async {
    final result = await _method.invokeMethod<int>('setSpeedMode', {'mode': mode});
    return result ?? -1;
  }

  // --- Joystick ---

  static Future<int> controlRocker({
    required int x,
    required int y,
    int r = 0,
    int z = 0,
  }) async {
    final result = await _method.invokeMethod<int>('controlRocker', {
      'x': x,
      'y': y,
      'r': r,
      'z': z,
    });
    return result ?? -1;
  }

  // --- Waypoint Mission ---

  /// Upload waypoints to the boat.
  /// Each waypoint map should contain: lat, lon, thrust (1-100), stayTime, recvRadius, direction
  static Future<int> uploadWaypoints(List<Map<String, double>> waypoints) async {
    final result = await _method.invokeMethod<int>('uploadWaypoints', {
      'waypoints': waypoints,
    });
    return result ?? -1;
  }

  static Future<int> downloadWaypoints() async {
    final result = await _method.invokeMethod<int>('downloadWaypoints');
    return result ?? -1;
  }

  // --- Return to Home ---

  static Future<int> rtl() async {
    final result = await _method.invokeMethod<int>('rtl');
    return result ?? -1;
  }

  /// Set the return point. type=1 for custom (phone GPS).
  static Future<int> setReturnPoint({
    int type = 1,
    required double lat,
    required double lon,
    double alt = 0.0,
  }) async {
    final result = await _method.invokeMethod<int>('setReturnPoint', {
      'type': type,
      'lat': lat,
      'lon': lon,
      'alt': alt,
    });
    return result ?? -1;
  }

  /// Update the user (phone) location on the boat. Lat/lon in degE7 format.
  static Future<int> setUserLocation({required int lat, required int lon}) async {
    final result = await _method.invokeMethod<int>('setUserLocation', {
      'lat': lat,
      'lon': lon,
    });
    return result ?? -1;
  }

  static Future<int> getHomePoint() async {
    final result = await _method.invokeMethod<int>('getHomePoint');
    return result ?? -1;
  }

  static Future<int> getRemainingRtlTime() async {
    final result = await _method.invokeMethod<int>('getRemainingRtlTime');
    return result ?? -1;
  }

  // --- Light ---

  static Future<int> controlLight(int mode) async {
    final result = await _method.invokeMethod<int>('controlLight', {'mode': mode});
    return result ?? -1;
  }

  // --- Gimbal ---

  static Future<void> setGimbalPitch(int pitch) async {
    await _method.invokeMethod('setGimbalPitch', {'pitch': pitch});
  }

  // --- Calibration ---

  static Future<int> startMagCalibration() async {
    final result = await _method.invokeMethod<int>('startMagCalibration');
    return result ?? -1;
  }

  static Future<int> cancelMagCalibration() async {
    final result = await _method.invokeMethod<int>('cancelMagCalibration');
    return result ?? -1;
  }

  // --- Nest Opener ---

  static Future<int> setNestOpenerStatus(int status) async {
    final result = await _method.invokeMethod<int>('setNestOpenerStatus', {'status': status});
    return result ?? -1;
  }

  // --- Low Power ---

  static Future<int> nowLowPowerReturn() async {
    final result = await _method.invokeMethod<int>('nowLowPowerReturn');
    return result ?? -1;
  }

  static Future<int> refuseLowPowerReturn() async {
    final result = await _method.invokeMethod<int>('refuseLowPowerReturn');
    return result ?? -1;
  }

  // --- Helper ---

  static Map<String, dynamic> _castEvent(dynamic event) {
    if (event is Map) {
      return Map<String, dynamic>.from(event);
    }
    return {'type': 'unknown', 'raw': event};
  }
}
