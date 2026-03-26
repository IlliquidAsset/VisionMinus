import 'package:flutter/material.dart';
import '../../../core/models/battery_status.dart';

class BatteryIndicator extends StatelessWidget {
  final BatteryStatus battery;

  const BatteryIndicator({super.key, required this.battery});

  @override
  Widget build(BuildContext context) {
    final color = battery.percent > 50
        ? Colors.green
        : battery.percent > 20
            ? Colors.amber
            : Colors.red;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            battery.percent > 80
                ? Icons.battery_full
                : battery.percent > 50
                    ? Icons.battery_5_bar
                    : battery.percent > 20
                        ? Icons.battery_3_bar
                        : Icons.battery_1_bar,
            color: color,
            size: 20,
          ),
          const SizedBox(width: 4),
          Text(
            '${battery.percent}%',
            style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Text(
            '${battery.voltageV.toStringAsFixed(1)}V',
            style: const TextStyle(color: Colors.white54, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
