/// Sail modes for the water drone.
class SailMode {
  static const int manual = 0;
  static const int waypoint = 1;
  static const int returnToHome = 2;
  // Add more as discovered from the firmware
}

/// Arm status values.
class ArmStatus {
  static const int disarmed = 0;
  static const int armed = 1;
}

/// GPS fix types (MAVLink standard).
class GpsFixType {
  static const int noFix = 0;
  static const int noGps = 1;
  static const int fix2D = 2;
  static const int fix3D = 3;
  static const int dgps = 4;
  static const int rtk = 5;
}
