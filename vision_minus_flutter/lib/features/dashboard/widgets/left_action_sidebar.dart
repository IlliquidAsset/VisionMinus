import 'package:flutter/material.dart';

class LeftActionSidebar extends StatelessWidget {
  final bool hookOpened;
  final bool isArmed;
  final VoidCallback onRthTap;
  final VoidCallback onIntelligentTap;
  final VoidCallback onToggleHook;
  final VoidCallback onArmToggleTap;

  const LeftActionSidebar({
    super.key,
    required this.hookOpened,
    required this.isArmed,
    required this.onRthTap,
    required this.onIntelligentTap,
    required this.onToggleHook,
    required this.onArmToggleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _action(
          icon: Icons.home_filled,
          onTap: onRthTap,
        ),
        const SizedBox(height: 10),
        _action(
          icon: Icons.auto_awesome,
          onTap: onIntelligentTap,
        ),
        const SizedBox(height: 10),
        _action(
          icon: hookOpened
              ? Icons.vertical_align_top
              : Icons.vertical_align_bottom,
          active: hookOpened,
          onTap: onToggleHook,
        ),
        const SizedBox(height: 10),
        _action(
          icon: isArmed ? Icons.lock_open : Icons.lock,
          active: isArmed,
          onTap: onArmToggleTap,
        ),
      ],
    );
  }

  Widget _action({
    required IconData icon,
    required VoidCallback onTap,
    bool active = false,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Ink(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          color: active ? Colors.cyan.withValues(alpha: 0.3) : Colors.black54,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white30),
        ),
        child: Icon(icon, color: Colors.white, size: 22),
      ),
    );
  }
}
