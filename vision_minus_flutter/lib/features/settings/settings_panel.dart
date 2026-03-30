import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/sdk/power_sdk_bridge.dart';
import '../connection/connection_provider.dart';
import 'unit_system_provider.dart';

enum SettingsTab {
  control,
  battery,
  sonar,
  maintenance,
  about,
}

class SettingsPanel extends ConsumerStatefulWidget {
  final VoidCallback onClose;
  final bool isArmed;

  const SettingsPanel({
    super.key,
    required this.onClose,
    required this.isArmed,
  });

  @override
  ConsumerState<SettingsPanel> createState() => _SettingsPanelState();
}

class _SettingsPanelState extends ConsumerState<SettingsPanel> {
  static const String _appVersion = '1.0.0+1';

  SettingsTab _selectedTab = SettingsTab.control;
  bool _showPanel = false;

  List<int> _cellVoltages = const [];
  String _batteryWarning = 'Not reported';
  String _firmwareVersion = 'Unknown';
  Map<String, dynamic> _connectionStatus = const {};
  Map<String, dynamic> _storageInfo = const {};
  Map<String, dynamic> _cameraSettings = const {};

  StreamSubscription<Map<String, dynamic>>? _batterySub;
  StreamSubscription<Map<String, dynamic>>? _connectionSub;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() => _showPanel = true);
    });
    _batterySub = PowerSdkBridge.batteryStream.listen(_onBatteryEvent);
    _connectionSub = PowerSdkBridge.connectionStream.listen(_onConnectionEvent);
    _loadConnectionStatus();
  }

  @override
  void dispose() {
    _batterySub?.cancel();
    _connectionSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final boat = ref.watch(boatStateProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        final panelWidth = math.min(400.0, constraints.maxWidth * 0.6);
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: widget.onClose,
                child: Container(color: Colors.black.withValues(alpha: 0.58)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              width: panelWidth,
              child: TweenAnimationBuilder<Offset>(
                tween: Tween(
                  begin: const Offset(1, 0),
                  end: _showPanel ? Offset.zero : const Offset(1, 0),
                ),
                duration: const Duration(milliseconds: 220),
                curve: Curves.easeOutCubic,
                builder: (context, offset, child) {
                  return FractionalTranslation(
                    translation: offset,
                    child: child,
                  );
                },
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color(0xFF141414),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 20,
                        offset: Offset(-6, 0),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    child: Row(
                      children: [
                        _buildTabRail(),
                        Expanded(
                          child: Column(
                            children: [
                              _buildHeader(),
                              const Divider(height: 1, color: Colors.white12),
                              Expanded(
                                child: SingleChildScrollView(
                                  padding: const EdgeInsets.all(16),
                                  child: _buildTabContent(boat),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTabRail() {
    return Container(
      width: 50,
      color: const Color(0xFF0C0C0C),
      child: Column(
        children: [
          const SizedBox(height: 12),
          _tabButton(SettingsTab.control, Icons.gamepad),
          _tabButton(SettingsTab.battery, Icons.battery_full),
          _tabButton(SettingsTab.sonar, Icons.sensors),
          _tabButton(SettingsTab.maintenance, Icons.build),
          _tabButton(SettingsTab.about, Icons.info_outline),
        ],
      ),
    );
  }

  Widget _tabButton(SettingsTab tab, IconData icon) {
    final active = _selectedTab == tab;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: IconButton(
        onPressed: () => _onTabSelected(tab),
        icon: Icon(icon, color: active ? Colors.white : Colors.white54),
        style: IconButton.styleFrom(
          backgroundColor: active ? Colors.white12 : Colors.transparent,
          fixedSize: const Size(38, 38),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          const SizedBox(width: 16),
          Text(
            _tabTitle(_selectedTab),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: widget.onClose,
            icon: const Icon(Icons.close, color: Colors.white70),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget _buildTabContent(boat) {
    switch (_selectedTab) {
      case SettingsTab.control:
        final unitSystem = ref.watch(unitSystemProvider);
        return _section(
          children: [
            _infoRow('Speed mode', _speedModeLabel(boat.speedMode)),
            _infoRow('Max speed setting', 'Not available from telemetry'),
            _infoRow('Rocker sensitivity', 'Default'),
            _infoRow('Sail mode', _sailModeLabel(boat.sailMode)),
            _infoRow('Arm status', widget.isArmed ? 'Armed' : 'Disarmed'),
            const SizedBox(height: 8),
            const _PlainText('Units'),
            const SizedBox(height: 8),
            ToggleButtons(
              isSelected: [
                unitSystem == UnitSystem.imperial,
                unitSystem == UnitSystem.metric,
              ],
              onPressed: (index) {
                ref.read(unitSystemProvider.notifier).state =
                    index == 0 ? UnitSystem.imperial : UnitSystem.metric;
              },
              borderRadius: BorderRadius.circular(8),
              constraints: const BoxConstraints(minHeight: 34, minWidth: 90),
              color: Colors.white70,
              selectedColor: Colors.cyanAccent,
              fillColor: Colors.cyan.withValues(alpha: 0.18),
              children: const [
                Text('Imperial'),
                Text('Metric'),
              ],
            ),
          ],
        );
      case SettingsTab.battery:
        return _section(
          children: [
            _infoRow('Battery', '${boat.battery.percent}%'),
            _infoRow('Voltage', '${boat.battery.voltageV.toStringAsFixed(2)} V'),
            _infoRow(
              'Cell voltages',
              _cellVoltages.isEmpty
                  ? 'Unavailable'
                  : _cellVoltages.map((v) => '${(v / 1000).toStringAsFixed(2)}V').join('  '),
            ),
            _infoRow('Low battery warning threshold', _batteryWarning),
          ],
        );
      case SettingsTab.sonar:
        return _section(
          children: [
            const Text(
              'Sonar Module',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            _infoRow(
              'Connection status',
              'Not connected — Sonar module communicates on 192.168.1.1',
            ),
            _infoRow('Protocol', 'Wi-Fi direct'),
            _infoRow('Frequency', 'N/A (not connected)'),
            _infoRow('Depth range', 'Up to 40m (when connected)'),
            const SizedBox(height: 4),
            const _PlainText(
              'Connect to the sonar module\'s WiFi network to enable fish finder features',
            ),
          ],
        );
      case SettingsTab.maintenance:
        final storageType = (_storageInfo['storageType'] as num?)?.toInt() ?? -1;
        return _section(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: _startCalibration,
                  child: const Text('Compass calibration'),
                ),
                ElevatedButton(
                  onPressed: _cancelCalibration,
                  child: const Text('Cancel calibration'),
                ),
              ],
            ),
            const SizedBox(height: 14),
            _infoRow('Firmware version', _firmwareVersion),
            _infoRow('Device info', 'PowerVision PowerDolphin'),
            _infoRow('Connection phase', (_connectionStatus['phase'] ?? 'unknown').toString()),
            const SizedBox(height: 8),
            const _PlainText('Storage info'),
            const SizedBox(height: 8),
            _infoRow('SD size', _formatStorageSize(_storageInfo['sdSize'])),
            _infoRow('eMMC size', _formatStorageSize(_storageInfo['emmcSize'])),
            _infoRow('Active storage', _storageTypeLabel(storageType)),
            _infoRow(
              'Remaining photos',
              _naIfNegative((_storageInfo['restPhotos'] as num?)?.toInt()),
            ),
            const SizedBox(height: 8),
            const _PlainText('Camera settings'),
            const SizedBox(height: 8),
            _infoRow(
              'Photo format',
              _naIfNegative((_cameraSettings['photoFormat'] as num?)?.toInt()),
            ),
            _infoRow(
              'Photo style',
              _naIfNegative((_cameraSettings['photoStyle'] as num?)?.toInt()),
            ),
          ],
        );
      case SettingsTab.about:
        return _section(
          children: [
            _infoRow('App version', _appVersion),
            _infoRow('Drone model', 'PowerVision PowerDolphin'),
            _infoRow('Connection type', _connectionTypeLabel(_connectionStatus)),
            _infoRow(
              'SDK info',
              'transport=${(_connectionStatus['transport'] ?? 'unknown')} phase=${(_connectionStatus['phase'] ?? 'unknown')}',
            ),
          ],
        );
    }
  }

  Widget _section({required List<Widget> children}) {
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
        children: children,
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

  String _tabTitle(SettingsTab tab) {
    switch (tab) {
      case SettingsTab.control:
        return 'Control';
      case SettingsTab.battery:
        return 'Battery';
      case SettingsTab.sonar:
        return 'Sonar';
      case SettingsTab.maintenance:
        return 'Maintenance';
      case SettingsTab.about:
        return 'About';
    }
  }

  String _speedModeLabel(int mode) {
    switch (mode) {
      case 0:
        return 'Cruise';
      case 1:
        return 'Normal';
      case 2:
        return 'Underwater';
      default:
        return mode.toString();
    }
  }

  String _sailModeLabel(int mode) {
    switch (mode) {
      case 0:
        return 'Manual';
      case 1:
        return 'Waypoint';
      case 2:
        return 'Return Home';
      default:
        return mode.toString();
    }
  }

  String _connectionTypeLabel(Map<String, dynamic> status) {
    final transport = (status['transport'] ?? '').toString().toUpperCase();
    if (transport == 'WIFI') return 'WiFi';
    if (transport == 'USB') return 'USB';
    return 'Unknown';
  }

  void _onTabSelected(SettingsTab tab) {
    setState(() => _selectedTab = tab);
    if (tab == SettingsTab.maintenance) {
      unawaited(_loadMaintenanceInfo());
    }
  }

  Future<void> _startCalibration() async {
    final result = await PowerSdkBridge.startMagCalibration();
    if (!mounted) return;
    _showSnack(result == 0
        ? 'Compass calibration started'
        : 'Start calibration failed ($result)');
  }

  Future<void> _cancelCalibration() async {
    final result = await PowerSdkBridge.cancelMagCalibration();
    if (!mounted) return;
    _showSnack(result == 0
        ? 'Compass calibration cancelled'
        : 'Cancel calibration failed ($result)');
  }

  Future<void> _loadConnectionStatus() async {
    final status = await PowerSdkBridge.getConnectionStatus();
    if (!mounted) return;
    setState(() => _connectionStatus = status);
  }

  Future<void> _loadMaintenanceInfo() async {
    try {
      final storage = await PowerSdkBridge.getStorageInfo();
      final camera = await PowerSdkBridge.getCameraSettings();
      if (!mounted) return;
      setState(() {
        _storageInfo = storage;
        _cameraSettings = camera;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _storageInfo = const {};
        _cameraSettings = const {};
      });
    }
  }

  String _storageTypeLabel(int type) {
    if (type == 0) return 'SD';
    if (type == 1) return 'eMMC';
    if (type < 0) return 'N/A';
    return 'Unknown ($type)';
  }

  String _naIfNegative(int? value) {
    if (value == null || value < 0) return 'N/A';
    return value.toString();
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

  void _onBatteryEvent(Map<String, dynamic> event) {
    final type = event['type'];
    if (type == 'battery_detail') {
      final raw = event['cell_voltages'];
      if (raw is List) {
        setState(() => _cellVoltages = raw.map((e) => (e as num).toInt()).toList());
      }
    }
    if (type == 'battery_warning') {
      final warning = event['warning']?.toString();
      if (warning != null && warning.isNotEmpty) {
        setState(() => _batteryWarning = warning);
      }
    }
  }

  void _onConnectionEvent(Map<String, dynamic> event) {
    if (event['type'] == 'drone_version') {
      final version = event['version']?.toString();
      if (version != null && version.isNotEmpty) {
        setState(() => _firmwareVersion = version);
      }
    }
  }

  void _showSnack(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}

class _PlainText extends StatelessWidget {
  final String text;

  const _PlainText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white70, fontSize: 13),
    );
  }
}
