import 'package:flutter/material.dart';

import '../../settings/unit_system_provider.dart';

class BottomInfoBar extends StatelessWidget {
  final double speedMps;
  final double distanceMeters;
  final int speedMode;
  final bool lightOn;
  final UnitSystem unitSystem;
  final ValueChanged<int> onSpeedModeChanged;
  final VoidCallback onLightTap;

  const BottomInfoBar({
    super.key,
    required this.speedMps,
    required this.distanceMeters,
    required this.speedMode,
    required this.lightOn,
    required this.unitSystem,
    required this.onSpeedModeChanged,
    required this.onLightTap,
  });

  @override
  Widget build(BuildContext context) {
    final speedValue = speedForUnit(speedMps, unitSystem);
    final distanceValue = distanceForUnit(distanceMeters, unitSystem);
    final speedUnit = speedUnitLabel(unitSystem);
    final distanceUnit = distanceUnitLabel(unitSystem);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _metric(speedValue.toStringAsFixed(1), speedUnit, 'Speed'),
              const SizedBox(width: 16),
              _metric(distanceValue.toStringAsFixed(0), distanceUnit, 'Distance'),
            ],
          ),
          const SizedBox(height: 4),
          SizedBox(width: 120, child: _speedModes()),
        ],
      ),
    );
  }

  Widget _metric(String value, String unit, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white60, fontSize: 10),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 4),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                unit,
                style: const TextStyle(color: Colors.white70, fontSize: 11),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _speedModes() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          _modeButton('C', 0),
          _modeButton('N', 1),
          _modeButton('U', 2),
        ],
      ),
    );
  }

  Widget _modeButton(String label, int mode) {
    final active = speedMode == mode;
    return Expanded(
      child: GestureDetector(
        onTap: () => onSpeedModeChanged(mode),
        child: Container(
          height: 36,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active ? Colors.cyan.withValues(alpha: 0.28) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: active ? Colors.cyanAccent : Colors.transparent,
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: active ? Colors.cyanAccent : Colors.white70,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

}
