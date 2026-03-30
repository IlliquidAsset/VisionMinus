import 'package:flutter/material.dart';

import '../../core/sdk/power_sdk_bridge.dart';

class MediaGalleryScreen extends StatefulWidget {
  const MediaGalleryScreen({super.key});

  @override
  State<MediaGalleryScreen> createState() => _MediaGalleryScreenState();
}

class _MediaGalleryScreenState extends State<MediaGalleryScreen> {
  Map<String, dynamic> _storageInfo = const {};
  Map<String, dynamic> _cameraSettings = const {};
  bool _loading = true;
  bool _switchingStorage = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _loading = true);
    try {
      final storage = await PowerSdkBridge.getStorageInfo();
      final camera = await PowerSdkBridge.getCameraSettings();
      if (!mounted) return;
      setState(() {
        _storageInfo = storage;
        _cameraSettings = camera;
      });
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _setStorageDevice(int type) async {
    setState(() => _switchingStorage = true);
    final result = await PowerSdkBridge.setStorageDevice(type);
    if (!mounted) return;
    if (result != 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to switch storage ($result)')),
      );
      setState(() => _switchingStorage = false);
      return;
    }
    await _loadData();
    if (!mounted) return;
    setState(() => _switchingStorage = false);
  }

  @override
  Widget build(BuildContext context) {
    final storageType = (_storageInfo['storageType'] as num?)?.toInt() ?? 0;
    final restPhotos = (_storageInfo['restPhotos'] as num?)?.toInt() ?? 0;
    final restRecordTime = (_storageInfo['restRecordTime'] as num?)?.toInt() ?? 0;

    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      appBar: AppBar(
        backgroundColor: const Color(0xFF141414),
        foregroundColor: Colors.white,
        title: const Text('Media Gallery'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator(color: Colors.white70))
          : RefreshIndicator(
              color: Colors.white,
              backgroundColor: const Color(0xFF141414),
              onRefresh: _loadData,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _section(
                    title: 'Storage',
                    children: [
                      _storageToggle(storageType),
                      const SizedBox(height: 12),
                      _infoRow('Active storage', _storageTypeLabel(storageType)),
                      _infoRow('SD size', _formatStorageSize(_storageInfo['sdSize'])),
                      _infoRow('eMMC size', _formatStorageSize(_storageInfo['emmcSize'])),
                      _infoRow('Photos taken', '$restPhotos remaining'),
                      _infoRow('Record time', '${_formatDuration(restRecordTime)} remaining'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _section(
                    title: 'Camera Settings',
                    children: [
                      _infoRow('Photo format', _cameraValue(_cameraSettings['photoFormat'])),
                      _infoRow('Resolution', 'N/A (not exposed by current bridge)'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _section(
                    title: 'Information',
                    children: [
                      _plain(
                        'Media files are stored on the drone\'s camera module.',
                      ),
                      const SizedBox(height: 8),
                      _plain(
                        'File listing is not available from the current Flutter bridge. The camera module uses a separate HTTP API at http://192.168.1.10/.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  Widget _storageToggle(int selectedType) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: _switchingStorage || selectedType == 0
                ? null
                : () => _setStorageDevice(0),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(
                color: selectedType == 0 ? Colors.white : Colors.white24,
              ),
              backgroundColor:
                  selectedType == 0 ? Colors.white12 : Colors.transparent,
            ),
            child: const Text('SD'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: OutlinedButton(
            onPressed: _switchingStorage || selectedType == 1
                ? null
                : () => _setStorageDevice(1),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(
                color: selectedType == 1 ? Colors.white : Colors.white24,
              ),
              backgroundColor:
                  selectedType == 1 ? Colors.white12 : Colors.transparent,
            ),
            child: const Text('eMMC'),
          ),
        ),
      ],
    );
  }

  Widget _section({required String title, required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  Widget _plain(String value) {
    return Text(
      value,
      style: const TextStyle(color: Colors.white70, fontSize: 13),
    );
  }

  String _storageTypeLabel(int type) {
    if (type == 0) return 'SD';
    if (type == 1) return 'eMMC';
    return 'Unknown ($type)';
  }

  String _cameraValue(dynamic value) {
    final intValue = (value as num?)?.toInt();
    if (intValue == null) return 'Unknown';
    return intValue.toString();
  }

  String _formatStorageSize(dynamic value) {
    final bytes = (value as num?)?.toDouble();
    if (bytes == null || bytes <= 0) return 'Unknown';
    const mb = 1024 * 1024;
    const gb = 1024 * 1024 * 1024;
    if (bytes >= gb) {
      return '${(bytes / gb).toStringAsFixed(2)} GB';
    }
    return '${(bytes / mb).toStringAsFixed(0)} MB';
  }

  String _formatDuration(int seconds) {
    if (seconds <= 0) return '0m';
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;
    if (hours > 0) return '${hours}h ${minutes}m';
    if (minutes > 0) return '${minutes}m ${secs}s';
    return '${secs}s';
  }
}
