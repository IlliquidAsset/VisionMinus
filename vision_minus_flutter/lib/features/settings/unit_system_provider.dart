import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UnitSystem { imperial, metric }

final unitSystemProvider = StateProvider<UnitSystem>((ref) => UnitSystem.imperial);

double speedForUnit(double speedMps, UnitSystem unit) {
  if (unit == UnitSystem.imperial) {
    return speedMps * 2.23693629;
  }
  return speedMps;
}

String speedUnitLabel(UnitSystem unit) {
  return unit == UnitSystem.imperial ? 'mph' : 'm/s';
}

double distanceForUnit(double distanceMeters, UnitSystem unit) {
  if (unit == UnitSystem.imperial) {
    return distanceMeters * 3.2808399;
  }
  return distanceMeters;
}

String distanceUnitLabel(UnitSystem unit) {
  return unit == UnitSystem.imperial ? 'ft' : 'm';
}
