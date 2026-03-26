import 'package:flutter/material.dart';
import '../../../core/models/gps_position.dart';

class GpsStatusWidget extends StatelessWidget {
  final GpsPosition gps;

  const GpsStatusWidget({super.key, required this.gps});

  @override
  Widget build(BuildContext context) {
    final fixColor = gps.fixType >= 3
        ? Colors.green
        : gps.fixType >= 2
            ? Colors.amber
            : Colors.red;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.satellite_alt, size: 16, color: fixColor),
              const SizedBox(width: 4),
              Text(
                '${gps.satellites} sats',
                style: TextStyle(color: fixColor, fontSize: 12),
              ),
              const SizedBox(width: 8),
              Text(
                _fixTypeLabel(gps.fixType),
                style: TextStyle(color: fixColor, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Lat: ${gps.lat.toStringAsFixed(7)}',
            style: const TextStyle(color: Colors.white70, fontSize: 11, fontFamily: 'monospace'),
          ),
          Text(
            'Lon: ${gps.lon.toStringAsFixed(7)}',
            style: const TextStyle(color: Colors.white70, fontSize: 11, fontFamily: 'monospace'),
          ),
        ],
      ),
    );
  }

  String _fixTypeLabel(int fixType) {
    switch (fixType) {
      case 0:
        return 'No Fix';
      case 1:
        return 'No GPS';
      case 2:
        return '2D Fix';
      case 3:
        return '3D Fix';
      case 4:
        return 'DGPS';
      case 5:
        return 'RTK';
      default:
        return 'Unknown';
    }
  }
}
