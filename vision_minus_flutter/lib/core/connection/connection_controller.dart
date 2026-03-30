import '../sdk/power_sdk_bridge.dart';

enum ConnectionAttemptMethod {
  wifi,
  usb,
}

class ConnectionController {
  ConnectionAttemptMethod? _lastAttempt;

  Future<Map<String, dynamic>> autoConnect() async {
    final confidence = (await PowerSdkBridge.getWifiConfidence()).toUpperCase();
    if (confidence == 'HIGH' || confidence == 'MEDIUM') {
      return connectWifi();
    }
    // No WiFi detected on drone subnet — try USB if available
    final transports = await PowerSdkBridge.getAvailableTransports();
    if (transports.contains('USB')) {
      return connectUsb();
    }
    return {'success': false, 'returnCode': -1, 'reason': 'no_transport'};
  }

  Future<Map<String, dynamic>> connectWifi() async {
    _lastAttempt = ConnectionAttemptMethod.wifi;
    return PowerSdkBridge.connectWifi();
  }

  Future<Map<String, dynamic>> connectUsb() async {
    _lastAttempt = ConnectionAttemptMethod.usb;
    return PowerSdkBridge.connectUsb();
  }

  Future<void> disconnect() async {
    await PowerSdkBridge.disconnect();
  }

  Future<Map<String, dynamic>> retry() async {
    switch (_lastAttempt) {
      case ConnectionAttemptMethod.wifi:
        return connectWifi();
      case ConnectionAttemptMethod.usb:
        return connectUsb();
      case null:
        return autoConnect();
    }
  }
}
