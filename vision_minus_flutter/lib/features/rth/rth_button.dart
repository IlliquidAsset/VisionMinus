import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'rth_provider.dart';

class RthButton extends ConsumerWidget {
  const RthButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rthState = ref.watch(rthProvider);

    final isReturning = rthState.status == RthStatus.returning;
    final color = isReturning ? Colors.red : Colors.orange;

    return GestureDetector(
      onTap: () => _handleTap(context, ref, rthState),
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              shape: BoxShape.circle,
              border: Border.all(color: color, width: 2),
            ),
            child: isReturning
                ? const Icon(Icons.cancel, color: Colors.red)
                : const Icon(Icons.home, color: Colors.orange),
          ),
          const SizedBox(height: 4),
          Text(
            isReturning ? 'Cancel' : 'RTH',
            style: TextStyle(color: color, fontSize: 10),
          ),
          if (rthState.remainingSeconds > 0 && isReturning)
            Text(
              '${rthState.remainingSeconds}s',
              style: const TextStyle(color: Colors.white54, fontSize: 9),
            ),
        ],
      ),
    );
  }

  void _handleTap(BuildContext context, WidgetRef ref, RthState rthState) {
    if (rthState.status == RthStatus.returning) {
      // Cancel RTH
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Cancel Return to Home?'),
          content: const Text('The boat will stop and switch to manual control.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Keep Returning'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                ref.read(rthProvider.notifier).cancelRth();
              },
              child: const Text('Cancel RTH', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      );
    } else {
      // Trigger RTH
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Return to Home?'),
          content: const Text('The boat will navigate back to your phone location.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                ref.read(rthProvider.notifier).returnToHome();
              },
              child: const Text('Return Home', style: TextStyle(color: Colors.orange)),
            ),
          ],
        ),
      );
    }
  }
}
