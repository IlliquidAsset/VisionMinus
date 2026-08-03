class BatteryStatus {
  final int voltageRaw;
  final int percent;
  final int status;

  const BatteryStatus({
    this.voltageRaw = 0,
    this.percent = 0,
    this.status = 0,
  });

  double get voltageV {
    if (voltageRaw == 0) return 0;
    if (voltageRaw < 100) return voltageRaw.toDouble();
    return voltageRaw / 1000.0;
  }

  factory BatteryStatus.fromEvent(Map<String, dynamic> event) {
    return BatteryStatus(
      voltageRaw: event['voltage'] as int? ?? 0,
      percent: event['percent'] as int? ?? 0,
      status: event['status'] as int? ?? 0,
    );
  }
}
