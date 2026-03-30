import 'package:flutter/material.dart';

class CameraControls extends StatelessWidget {
  final bool isRecording;
  final VoidCallback onPhoto;
  final VoidCallback onVideoToggle;
  final VoidCallback onSettings;

  const CameraControls({
    super.key,
    required this.isRecording,
    required this.onPhoto,
    required this.onVideoToggle,
    required this.onSettings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      color: Colors.black.withValues(alpha: 0.28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _captureButton(
            onTap: onPhoto,
            child: Container(
              width: 18,
              height: 18,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(height: 18),
          _captureButton(
            onTap: onVideoToggle,
            borderColor: isRecording ? Colors.redAccent : Colors.white70,
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: isRecording ? Colors.redAccent : Colors.white,
                borderRadius: BorderRadius.circular(isRecording ? 4 : 999),
              ),
            ),
          ),
          const SizedBox(height: 18),
          IconButton(
            onPressed: onSettings,
            icon: const Icon(Icons.settings, color: Colors.white, size: 22),
          ),
        ],
      ),
    );
  }

  Widget _captureButton({
    required VoidCallback onTap,
    required Widget child,
    Color borderColor = Colors.white70,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black45,
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Center(child: child),
      ),
    );
  }
}

class BottomRightControls extends StatelessWidget {
  final bool lightOn;
  final VoidCallback onCnuTap;
  final VoidCallback onLightTap;
  final VoidCallback onMediaTap;

  const BottomRightControls({
    super.key,
    required this.lightOn,
    required this.onCnuTap,
    required this.onLightTap,
    required this.onMediaTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _chip(icon: Icons.photo_camera_back, onTap: onCnuTap),
          const SizedBox(width: 8),
          _chip(
            icon: Icons.lightbulb,
            onTap: onLightTap,
            active: lightOn,
          ),
          const SizedBox(width: 8),
          _chip(icon: Icons.perm_media, onTap: onMediaTap),
        ],
      ),
    );
  }

  Widget _chip({
    required IconData icon,
    required VoidCallback onTap,
    bool active = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(999),
      child: Ink(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: active ? Colors.amber.withValues(alpha: 0.35) : Colors.black45,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white38),
        ),
        child: Icon(
          icon,
          color: active ? Colors.amberAccent : Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
