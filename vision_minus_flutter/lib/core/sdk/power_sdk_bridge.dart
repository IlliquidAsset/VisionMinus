import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/services.dart';

import '../models/gps_position.dart';

class PowerSdkBridge {
  static const _method = MethodChannel('com.visionminus/sdk');
  static const _gpsChannel = EventChannel('com.visionminus/gps');
  static const _batteryChannel = EventChannel('com.visionminus/battery');
  static const _connectionChannel = EventChannel('com.visionminus/connection');
  static const _navigationChannel = EventChannel('com.visionminus/navigation');
  static const _attitudeChannel = EventChannel('com.visionminus/attitude');
  static const _phoneHeadingChannel = EventChannel('com.visionminus/phone_heading');

  static bool _initialized = false;

  static final StreamController<Map<String, dynamic>> _gpsController =
      StreamController.broadcast();
  static final StreamController<Map<String, dynamic>> _batteryController =
      StreamController.broadcast();
  static final StreamController<Map<String, dynamic>> _connectionController =
      StreamController.broadcast();
  static final StreamController<Map<String, dynamic>> _navigationController =
      StreamController.broadcast();
  static final StreamController<Map<String, dynamic>> _attitudeController =
      StreamController.broadcast();
  static final StreamController<Map<String, dynamic>> _phoneHeadingController =
      StreamController.broadcast();

  // --- Streams ---

  static void init() {
    if (_initialized) return;
    _initialized = true;

    _gpsChannel.receiveBroadcastStream().listen(
          (event) => _gpsController.add(_castEvent(event)),
          onError: (error) => _gpsController.addError(error),
        );

    _batteryChannel.receiveBroadcastStream().listen(
          (event) => _batteryController.add(_castEvent(event)),
          onError: (error) => _batteryController.addError(error),
        );

    _connectionChannel.receiveBroadcastStream().listen(
          (event) => _connectionController.add(_castEvent(event)),
          onError: (error) => _connectionController.addError(error),
        );

    _navigationChannel.receiveBroadcastStream().listen(
          (event) => _navigationController.add(_castEvent(event)),
          onError: (error) => _navigationController.addError(error),
        );

    _attitudeChannel.receiveBroadcastStream().listen(
          (event) => _attitudeController.add(_castEvent(event)),
          onError: (error) => _attitudeController.addError(error),
        );

    _phoneHeadingChannel.receiveBroadcastStream().listen(
          (event) => _phoneHeadingController.add(_castEvent(event)),
          onError: (error) => _phoneHeadingController.addError(error),
        );
  }

  static Stream<Map<String, dynamic>> get gpsStream => _gpsController.stream;

  static Stream<Map<String, dynamic>> get batteryStream =>
      _batteryController.stream;

  static Stream<Map<String, dynamic>> get connectionStream =>
      _connectionController.stream;

  static Stream<Map<String, dynamic>> get navigationStream =>
      _navigationController.stream;

  static Stream<Map<String, dynamic>> get attitudeStream =>
      _attitudeController.stream;

  static Stream<Map<String, dynamic>> get phoneHeadingStream =>
      _phoneHeadingController.stream;

  // --- Connection ---

  static Future<Map<String, dynamic>> connectWifi() async {
    final result = await _method.invokeMethod<dynamic>('connectWifi');
    return _castMethodMap(result);
  }

  static Future<Map<String, dynamic>> connectUsb() async {
    final result = await _method.invokeMethod<dynamic>('connectUsb');
    return _castMethodMap(result);
  }

  static Future<bool> connect() async {
    final result = await connectUsb();
    return (result['success'] as bool?) ?? false;
  }

  static Future<void> disconnect() async {
    await _method.invokeMethod('disconnect');
  }

  static Future<Map<String, dynamic>> getConnectionStatus() async {
    final result = await _method.invokeMethod<dynamic>('getConnectionStatus');
    return _castMethodMap(result);
  }

  static Future<List<String>> getAvailableTransports() async {
    final result =
        await _method.invokeMethod<dynamic>('getAvailableTransports');
    if (result is List) {
      return result.map((item) => item.toString()).toList();
    }
    return const [];
  }

  static Future<String> getWifiConfidence() async {
    final result = await _method.invokeMethod<dynamic>('getWifiConfidence');
    return result?.toString() ?? 'NONE';
  }

  static Future<bool> isConnected() async {
    final result = await getConnectionStatus();
    final phase = result['phase']?.toString().toLowerCase();
    return phase == 'connected';
  }

  // --- Arm/Disarm ---

  static Future<int> setArmStatus(int status) async {
    final result =
        await _method.invokeMethod<int>('setArmStatus', {'status': status});
    return result ?? -1;
  }

  static Future<Map<String, dynamic>> resyncRuntimeState({
    required String reason,
  }) async {
    final result = await _method.invokeMethod<dynamic>(
      'resyncRuntimeState',
      {'reason': reason},
    );
    return _castMethodMap(result);
  }

  static Future<Map<String, dynamic>> resyncMissionState({
    required String reason,
  }) async {
    final result = await _method.invokeMethod<dynamic>(
      'resyncMissionState',
      {'reason': reason},
    );
    return _castMethodMap(result);
  }

  // --- Camera ---

  static Future<int> cameraConnect() async =>
      await _method.invokeMethod<int>('cameraConnect') ?? -1;

  static Future<int> cameraDisconnect() async =>
      await _method.invokeMethod<int>('cameraDisconnect') ?? -1;

  static Future<int> takePhoto() async =>
      await _method.invokeMethod<int>('takePhoto') ?? -1;

  static Future<int> startRecord() async =>
      await _method.invokeMethod<int>('startRecord') ?? -1;

  static Future<int> stopRecord() async =>
      await _method.invokeMethod<int>('stopRecord') ?? -1;

  static Future<int> switchToPhotoMode() async =>
      await _method.invokeMethod<int>('switchToPhotoMode') ?? -1;

  static Future<int> switchToVideoMode() async =>
      await _method.invokeMethod<int>('switchToVideoMode') ?? -1;

  static Future<Map<String, dynamic>> getStorageInfo() async {
    final result = await _method.invokeMethod<dynamic>('getStorageInfo');
    return _castMethodMap(result);
  }

  static Future<int> setStorageDevice(int type) async {
    final result =
        await _method.invokeMethod<int>('setStorageDevice', {'type': type});
    return result ?? -1;
  }

  static Future<Map<String, dynamic>> getCameraSettings() async {
    final result = await _method.invokeMethod<dynamic>('getCameraSettings');
    return _castMethodMap(result);
  }

  static Future<int> setPhotoResolution(int resolution) async {
    final result = await _method
        .invokeMethod<int>('setPhotoResolution', {'resolution': resolution});
    return result ?? -1;
  }

  static Future<int> setPhotoFormat(int format) async {
    final result =
        await _method.invokeMethod<int>('setPhotoFormat', {'format': format});
    return result ?? -1;
  }

  // --- Sail Mode ---

  static Future<int> setSailMode(int mode) async {
    final result =
        await _method.invokeMethod<int>('setSailMode', {'mode': mode});
    return result ?? -1;
  }

  // --- Speed Mode ---

  static Future<int> setSpeedMode(int mode) async {
    final result =
        await _method.invokeMethod<int>('setSpeedMode', {'mode': mode});
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
  static Future<int> uploadWaypoints(
      List<Map<String, double>> waypoints) async {
    for (final wp in waypoints) {
      final lat = wp['lat'] ?? 0.0;
      final lon = wp['lon'] ?? 0.0;
      if (!GpsPosition.isCoordinateSane(lat, lon)) {
        developer.log(
          'BLOCKED uploadWaypoints: insane waypoint lat=$lat lon=$lon',
          name: 'runtime.safety',
        );
        return -99;
      }
    }
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

  static Future<int> setReturnPoint({
    int type = 1,
    required double lat,
    required double lon,
    double alt = 0.0,
  }) async {
    if (!GpsPosition.isCoordinateSane(lat, lon)) {
      developer.log(
        'BLOCKED setReturnPoint: insane coordinates lat=$lat lon=$lon',
        name: 'runtime.safety',
      );
      return -99;
    }
    final result = await _method.invokeMethod<int>('setReturnPoint', {
      'type': type,
      'lat': lat,
      'lon': lon,
      'alt': alt,
    });
    return result ?? -1;
  }

  static Future<int> setUserLocation(
      {required int lat, required int lon}) async {
    if (!GpsPosition.isCoordinateSaneE7(lat, lon)) {
      developer.log(
        'BLOCKED setUserLocation: insane coordinates latE7=$lat lonE7=$lon',
        name: 'runtime.safety',
      );
      return -99;
    }
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
    final result =
        await _method.invokeMethod<int>('controlLight', {'mode': mode});
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
    final result = await _method
        .invokeMethod<int>('setNestOpenerStatus', {'status': status});
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

  static Map<String, dynamic> _castMethodMap(dynamic result) {
    if (result is Map) {
      return Map<String, dynamic>.from(result);
    }
    return const <String, dynamic>{};
  }

  static Future<String> startLogRecording() async {
    final result = await _method.invokeMethod<String>('startLogRecording');
    return result ?? '';
  }

  static Future<String> stopLogRecording() async {
    final result = await _method.invokeMethod<String>('stopLogRecording');
    return result ?? '';
  }

  static Future<bool> isLogRecording() async {
    final result = await _method.invokeMethod<bool>('isLogRecording');
    return result ?? false;
  }

  static Future<String> getLogPath() async {
    final result = await _method.invokeMethod<String>('getLogPath');
    return result ?? '';
  }

  static Future<List<String>> listLogFiles() async {
    final result = await _method.invokeMethod<List>('listLogFiles');
    return result?.cast<String>() ?? [];
  }

  static Future<String> readLogFile(String path) async {
    final result = await _method.invokeMethod<String>('readLogFile', {
      'path': path,
    });
    return result ?? '';
  }
}
