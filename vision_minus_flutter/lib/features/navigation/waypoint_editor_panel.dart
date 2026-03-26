import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'navigation_provider.dart';

class WaypointEditorPanel extends ConsumerWidget {
  const WaypointEditorPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navState = ref.watch(navigationProvider);
    final waypoints = navState.waypoints;

    if (waypoints.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[900],
        child: const Center(
          child: Text(
            'Tap on the map to add waypoints',
            style: TextStyle(color: Colors.white54),
          ),
        ),
      );
    }

    return Container(
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with default thrust control
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Row(
              children: [
                Text(
                  '${waypoints.length} waypoint${waypoints.length == 1 ? '' : 's'}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () => ref.read(navigationProvider.notifier).clearWaypoints(),
                  icon: const Icon(Icons.delete_sweep, size: 16),
                  label: const Text('Clear All', style: TextStyle(fontSize: 11)),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red[300],
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                ),
              ],
            ),
          ),
          // Waypoint list
          Expanded(
            child: ListView.builder(
              itemCount: waypoints.length,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemBuilder: (context, index) {
                final wp = waypoints[index];
                return Card(
                  color: Colors.grey[850],
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: [
                        // Waypoint number
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Thrust slider — 1% to 100%
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Thrust: ${wp.thrustPercent.toInt()}%',
                                style: const TextStyle(color: Colors.white70, fontSize: 10),
                              ),
                              SizedBox(
                                height: 20,
                                child: Slider(
                                  value: wp.thrustPercent,
                                  min: 1,
                                  max: 100,
                                  divisions: 99,
                                  onChanged: (val) {
                                    ref.read(navigationProvider.notifier).updateWaypoint(
                                          index,
                                          wp.copyWith(thrustPercent: val),
                                        );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Dwell time
                        SizedBox(
                          width: 50,
                          child: Column(
                            children: [
                              const Text('Dwell', style: TextStyle(color: Colors.white38, fontSize: 9)),
                              SizedBox(
                                height: 24,
                                width: 40,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: const TextStyle(color: Colors.white, fontSize: 11),
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: '0s',
                                    hintStyle: TextStyle(color: Colors.white24, fontSize: 11),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    isDense: true,
                                  ),
                                  onSubmitted: (val) {
                                    final seconds = double.tryParse(val) ?? 0;
                                    ref.read(navigationProvider.notifier).updateWaypoint(
                                          index,
                                          wp.copyWith(stayTimeSeconds: seconds),
                                        );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Delete button
                        IconButton(
                          icon: const Icon(Icons.close, size: 16, color: Colors.red),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
                          onPressed: () => ref.read(navigationProvider.notifier).removeWaypoint(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
