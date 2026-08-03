import 'dart:math';
import 'package:flutter/material.dart';

class CompassWidget extends StatelessWidget {
  final double yaw; // radians from SDK

  const CompassWidget({super.key, required this.yaw});

  @override
  Widget build(BuildContext context) {
    final headingDeg = (yaw * 180 / pi + 360) % 360;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Transform.rotate(
            angle: yaw,
            child: const Icon(Icons.navigation, size: 20, color: Colors.cyan),
          ),
          const SizedBox(width: 8),
          Text(
            '${headingDeg.toStringAsFixed(0)}°',
            style: const TextStyle(color: Colors.cyan, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 4),
          Text(
            _cardinalDirection(headingDeg),
            style: const TextStyle(color: Colors.white54, fontSize: 11),
          ),
        ],
      ),
    );
  }

  String _cardinalDirection(double deg) {
    const directions = ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW'];
    final index = ((deg + 22.5) / 45).floor() % 8;
    return directions[index];
  }
}
