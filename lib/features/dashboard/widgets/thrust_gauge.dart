import 'package:flutter/material.dart';
import '../../../core/models/gps_position.dart';

class ThrustGauge extends StatelessWidget {
  final GpsPosition gps;

  const ThrustGauge({super.key, required this.gps});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.speed, size: 16, color: Colors.white54),
              const SizedBox(width: 4),
              Text(
                '${gps.speedFtPerSec.toStringAsFixed(1)} ft/s',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            '${gps.speedMps.toStringAsFixed(2)} m/s',
            style: const TextStyle(color: Colors.white38, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
