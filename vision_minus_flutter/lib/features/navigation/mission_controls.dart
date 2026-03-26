import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'navigation_provider.dart';
import '../map/map_provider.dart';

class MissionControls extends ConsumerWidget {
  const MissionControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navState = ref.watch(navigationProvider);
    final editMode = ref.watch(waypointEditModeProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Edit/Done toggle
          _buildButton(
            label: editMode ? 'Done' : 'Edit',
            icon: editMode ? Icons.check : Icons.edit,
            color: editMode ? Colors.green : Colors.blue,
            onTap: () {
              final newEditMode = !editMode;
              ref.read(waypointEditModeProvider.notifier).state = newEditMode;
              if (newEditMode) {
                ref.read(navigationProvider.notifier).startEditing();
              } else {
                ref.read(navigationProvider.notifier).stopEditing();
              }
            },
          ),

          // Upload
          if (navState.waypoints.isNotEmpty &&
              (navState.missionState == MissionState.editing ||
               navState.missionState == MissionState.idle))
            _buildButton(
              label: 'Upload',
              icon: Icons.cloud_upload,
              color: Colors.amber,
              onTap: () => ref.read(navigationProvider.notifier).uploadMission(),
            ),

          // Start
          if (navState.missionState == MissionState.uploaded)
            _buildButton(
              label: 'Start',
              icon: Icons.play_arrow,
              color: Colors.green,
              onTap: () => ref.read(navigationProvider.notifier).startMission(),
            ),

          // Pause/Resume
          if (navState.missionState == MissionState.running)
            _buildButton(
              label: 'Pause',
              icon: Icons.pause,
              color: Colors.amber,
              onTap: () => ref.read(navigationProvider.notifier).pauseMission(),
            ),
          if (navState.missionState == MissionState.paused)
            _buildButton(
              label: 'Resume',
              icon: Icons.play_arrow,
              color: Colors.green,
              onTap: () => ref.read(navigationProvider.notifier).resumeMission(),
            ),

          // Cancel (during running/paused/uploaded)
          if (navState.missionState == MissionState.running ||
              navState.missionState == MissionState.paused ||
              navState.missionState == MissionState.uploaded)
            _buildButton(
              label: 'Cancel',
              icon: Icons.stop,
              color: Colors.red,
              onTap: () => _confirmCancel(context, ref),
            ),

          // Status message
          if (navState.statusMessage != null)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                navState.statusMessage!,
                style: TextStyle(
                  color: navState.missionState == MissionState.error
                      ? Colors.red
                      : Colors.white54,
                  fontSize: 11,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withValues(alpha: 0.5)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 4),
            Text(label, style: TextStyle(color: color, fontSize: 11)),
          ],
        ),
      ),
    );
  }

  void _confirmCancel(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Cancel Mission?'),
        content: const Text('The boat will stop and return to manual control.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Keep Running'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              ref.read(navigationProvider.notifier).cancelMission();
            },
            child: const Text('Cancel Mission', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
