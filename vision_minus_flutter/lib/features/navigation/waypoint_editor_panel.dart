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
        padding: const EdgeInsets.all(6),
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
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
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
              padding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, index) {
                final wp = waypoints[index];
                return Card(
                  color: Colors.grey[850],
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
                        const SizedBox(width: 6),
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
                                height: 18,
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
                          width: 64,
                          child: Column(
                            children: [
                              const Text('Dwell (s)', style: TextStyle(color: Colors.white54, fontSize: 9)),
                              SizedBox(
                                height: 30,
                                width: 56,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: const TextStyle(color: Colors.white, fontSize: 11),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: wp.stayTimeSeconds.toStringAsFixed(0),
                                    hintStyle: const TextStyle(color: Colors.white38, fontSize: 11),
                                    isDense: true,
                                    filled: true,
                                    fillColor: Colors.black26,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: const BorderSide(color: Colors.white24),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: const BorderSide(color: Colors.white24),
                                    ),
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
