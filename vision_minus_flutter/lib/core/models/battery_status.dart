class BatteryStatus {
  final int voltageMv;
  final int percent;
  final int status;

  const BatteryStatus({
    this.voltageMv = 0,
    this.percent = 0,
    this.status = 0,
  });

  double get voltageV => voltageMv / 1000.0;

  factory BatteryStatus.fromEvent(Map<String, dynamic> event) {
    return BatteryStatus(
      voltageMv: event['voltage'] as int? ?? 0,
      percent: event['percent'] as int? ?? 0,
      status: event['status'] as int? ?? 0,
    );
  }
}
