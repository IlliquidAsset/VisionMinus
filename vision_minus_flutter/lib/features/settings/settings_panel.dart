import 'dart:async';
import 'dart:developer' as developer;
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/models/boat_state.dart' as bs;
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
  List<String> _logFiles = const [];
  String _currentLogPath = '';
  bool _logRecording = false;

  StreamSubscription<Map<String, dynamic>>? _batterySub;
  StreamSubscription<Map<String, dynamic>>? _connectionSub;
  StreamSubscription<Map<String, dynamic>>? _navigationSub;
  Timer? _calibrationStartTimeout;
  Timer? _calibrationTerminalTimeout;

  bs.CommandIntentState _calibrationStartIntent = bs.CommandIntentState.idle;
  bs.CommandIntentState _calibrationTerminalIntent = bs.CommandIntentState.idle;
  String? _calibrationIntentReason;
  int? _lastCalibrationStatus;
  bool _calibrationTimeoutVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() => _showPanel = true);
    });
    _batterySub = PowerSdkBridge.batteryStream.listen(_onBatteryEvent);
    _connectionSub = PowerSdkBridge.connectionStream.listen(_onConnectionEvent);
    _navigationSub = PowerSdkBridge.navigationStream.listen(_onNavigationEvent);
    _loadConnectionStatus();
  }

  @override
  void dispose() {
    _batterySub?.cancel();
    _connectionSub?.cancel();
    _navigationSub?.cancel();
    _calibrationStartTimeout?.cancel();
    _calibrationTerminalTimeout?.cancel();
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
            _buildCalibrationFsmCard(boat),
            const SizedBox(height: 14),
            _infoRow('Calibration start intent', _calibrationStartIntent.name),
            _infoRow('Calibration terminal intent', _calibrationTerminalIntent.name),
            _infoRow(
              'Calibration reason',
              _calibrationIntentReason ?? 'No calibration command yet',
            ),
            _infoRow(
              'Last calibration callback',
              _lastCalibrationStatus?.toString() ?? 'No callback',
            ),
            const SizedBox(height: 8),
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
            const SizedBox(height: 8),
            const _PlainText('Runtime logs'),
            const SizedBox(height: 8),
            _infoRow('Recording', _logRecording ? 'Active' : 'Inactive'),
            _infoRow(
              'Active log',
              _currentLogPath.isEmpty ? 'Unavailable' : _currentLogPath,
            ),
            if (_logFiles.isEmpty)
              const _PlainText('No runtime logs available yet.')
            else
              ..._logFiles.take(5).map(
                (path) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: OutlinedButton(
                    onPressed: () => _openLogFile(path),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white24),
                    ),
                    child: Text(
                      _logLabel(path),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
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

  Widget _buildCalibrationFsmCard(bs.BoatState boat) {
    final phase = _effectiveCalibrationPhase(boat);
    final progress = (boat.calibrationProgress.clamp(0, 100)).toDouble() / 100.0;
    final progressText = '${(progress * 100).round()}%';
    final statusSummary = _calibrationStatusSummary(boat);
    final showOrientation = phase == bs.CalibrationPhase.orienting;
    final showProgress =
        phase == bs.CalibrationPhase.progressing || phase == bs.CalibrationPhase.orienting;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.03),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _phaseColor(phase).withValues(alpha: 0.55)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Compass calibration state',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: _phaseColor(phase).withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  _phaseLabel(phase),
                  style: TextStyle(
                    color: _phaseColor(phase),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            statusSummary,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
          if (showOrientation) ...[
            const SizedBox(height: 10),
            Text(
              _orientationGuidance(boat.calibrationOrientationSide),
              style: const TextStyle(
                color: Colors.cyanAccent,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
          if (showProgress) ...[
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: LinearProgressIndicator(
                minHeight: 6,
                value: progress,
                backgroundColor: Colors.white10,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.cyanAccent),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Progress $progressText',
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
          const SizedBox(height: 10),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: List.generate(6, (index) {
              final done = ((boat.calibrationSideDoneMask >> index) & 0x1) == 1;
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: done
                      ? Colors.green.withValues(alpha: 0.2)
                      : Colors.white.withValues(alpha: 0.06),
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                    color: done ? Colors.greenAccent : Colors.white24,
                  ),
                ),
                child: Text(
                  'Side ${index + 1}${done ? ' ✓' : ''}',
                  style: TextStyle(
                    color: done ? Colors.greenAccent : Colors.white70,
                    fontSize: 12,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  bs.CalibrationPhase _effectiveCalibrationPhase(bs.BoatState boat) {
    if (_calibrationTimeoutVisible ||
        _calibrationStartIntent == bs.CommandIntentState.timeout ||
        _calibrationTerminalIntent == bs.CommandIntentState.timeout) {
      return bs.CalibrationPhase.timeout;
    }
    if (_calibrationIntentReason?.toLowerCase().contains('cancelled') ?? false) {
      return bs.CalibrationPhase.cancelled;
    }
    return boat.calibrationPhase;
  }

  String _phaseLabel(bs.CalibrationPhase phase) {
    switch (phase) {
      case bs.CalibrationPhase.idle:
        return 'Idle';
      case bs.CalibrationPhase.startPending:
        return 'Pending';
      case bs.CalibrationPhase.started:
        return 'Started';
      case bs.CalibrationPhase.orienting:
        return 'Orienting';
      case bs.CalibrationPhase.progressing:
        return 'Progressing';
      case bs.CalibrationPhase.success:
        return 'Success';
      case bs.CalibrationPhase.failed:
        return 'Failed';
      case bs.CalibrationPhase.timeout:
        return 'Timeout';
      case bs.CalibrationPhase.cancelled:
        return 'Cancelled';
    }
  }

  Color _phaseColor(bs.CalibrationPhase phase) {
    switch (phase) {
      case bs.CalibrationPhase.success:
        return Colors.greenAccent;
      case bs.CalibrationPhase.failed:
      case bs.CalibrationPhase.timeout:
      case bs.CalibrationPhase.cancelled:
        return Colors.redAccent;
      case bs.CalibrationPhase.orienting:
      case bs.CalibrationPhase.progressing:
      case bs.CalibrationPhase.started:
        return Colors.cyanAccent;
      case bs.CalibrationPhase.startPending:
        return Colors.amberAccent;
      case bs.CalibrationPhase.idle:
        return Colors.white70;
    }
  }

  String _calibrationStatusSummary(bs.BoatState boat) {
    final status = boat.calibrationRawStatus;
    if (_calibrationTimeoutVisible) {
      return 'Calibration timed out after '
          '${bs.RuntimeCommandTimeouts.calibrationTerminal.inSeconds}s without success/failure callback.';
    }
    if (status == 5 && boat.calibrationPhase == bs.CalibrationPhase.startPending) {
      return 'Calibration pending: request accepted but not started yet.';
    }
    if (status == 6 && boat.calibrationPhase == bs.CalibrationPhase.success) {
      return 'Calibration already completed on device.';
    }
    if (boat.calibrationPhase == bs.CalibrationPhase.success) {
      return 'Calibration completed successfully.';
    }
    if (boat.calibrationPhase == bs.CalibrationPhase.failed) {
      return 'Calibration failed. Restart calibration and follow orientation guidance.';
    }
    if (boat.calibrationPhase == bs.CalibrationPhase.started) {
      return 'Start callback confirmed. Waiting for orientation/progress callbacks.';
    }
    return _calibrationIntentReason ?? 'Waiting for calibration callback state.';
  }

  String _orientationGuidance(int side) {
    if (side >= 0) {
      return 'Rotate boat to Side ${side + 1} and keep motion steady.';
    }
    return 'Rotate boat to the highlighted side and keep motion steady.';
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
      case 1:
        return 'Low';
      case 2:
        return 'Medium';
      case 3:
        return 'High';
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
    _calibrationStartTimeout?.cancel();
    _calibrationTerminalTimeout?.cancel();
    _calibrationTimeoutVisible = false;
    _setCalibrationIntent(
      start: bs.CommandIntentState.sent,
      terminal: bs.CommandIntentState.idle,
      reason:
          'Sent start calibration command; waiting for callback (${bs.RuntimeCommandTimeouts.calibrationStart.inSeconds}s timeout)',
      lifecycle: 'sent',
    );
    _calibrationStartTimeout = Timer(bs.RuntimeCommandTimeouts.calibrationStart, () {
      if (!mounted || _calibrationStartIntent == bs.CommandIntentState.confirmed) {
        return;
      }
      _setCalibrationIntent(
        start: bs.CommandIntentState.timeout,
        reason:
            'Calibration start timeout after ${bs.RuntimeCommandTimeouts.calibrationStart.inSeconds}s (no mag_calibration_status callback)',
        lifecycle: 'timed_out',
      );
    });
    final result = await PowerSdkBridge.startMagCalibration();
    if (!mounted) return;
    if (result == 0) {
      _setCalibrationIntent(
        start: bs.CommandIntentState.acked,
        reason: 'Start calibration acknowledged by method return',
        lifecycle: 'acked',
      );
      _showSnack('Compass calibration start command sent');
    } else {
      _calibrationStartTimeout?.cancel();
      _setCalibrationIntent(
        start: bs.CommandIntentState.failed,
        terminal: bs.CommandIntentState.failed,
        reason: 'Start calibration failed (code: $result)',
        lifecycle: 'failed',
      );
      _showSnack('Start calibration failed ($result)');
    }
  }

  Future<void> _cancelCalibration() async {
    final result = await PowerSdkBridge.cancelMagCalibration();
    if (!mounted) return;
    if (result == 0) {
      _calibrationTerminalTimeout?.cancel();
      _calibrationTimeoutVisible = false;
      _setCalibrationIntent(
        terminal: bs.CommandIntentState.confirmed,
        reason: 'Calibration cancelled by user command',
        lifecycle: 'confirmed',
      );
      _showSnack('Compass calibration cancelled');
    } else {
      _setCalibrationIntent(
        terminal: bs.CommandIntentState.failed,
        reason: 'Cancel calibration failed (code: $result)',
        lifecycle: 'failed',
      );
      _showSnack('Cancel calibration failed ($result)');
    }
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
      final logFiles = await PowerSdkBridge.listLogFiles();
      final currentLogPath = await PowerSdkBridge.getLogPath();
      final logRecording = await PowerSdkBridge.isLogRecording();
      if (!mounted) return;
      setState(() {
        _storageInfo = storage;
        _cameraSettings = camera;
        _logFiles = logFiles;
        _currentLogPath = currentLogPath;
        _logRecording = logRecording;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _storageInfo = const {};
        _cameraSettings = const {};
        _logFiles = const [];
        _currentLogPath = '';
        _logRecording = false;
      });
    }
  }

  Future<void> _openLogFile(String path) async {
    final content = await PowerSdkBridge.readLogFile(path);
    if (!mounted) return;
    await showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF141414),
          title: Text(
            _logLabel(path),
            style: const TextStyle(color: Colors.white),
          ),
          content: SizedBox(
            width: 520,
            child: SingleChildScrollView(
              child: SelectableText(
                content.isEmpty ? 'Log file is empty' : content,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                  fontFamily: 'monospace',
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  String _logLabel(String path) {
    final parts = path.split('/');
    return parts.isEmpty ? path : parts.last;
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

  void _onNavigationEvent(Map<String, dynamic> event) {
    if (event['type'] != 'mag_calibration_status') {
      return;
    }
    final previousStatus = _lastCalibrationStatus;
    final status = (event['status'] as num?)?.toInt() ?? -1;
    _lastCalibrationStatus = status;

    if (_calibrationStartIntent == bs.CommandIntentState.idle ||
        _calibrationStartIntent == bs.CommandIntentState.failed) {
      _setCalibrationIntent(
        start: bs.CommandIntentState.stale,
        reason: 'Stale mag_calibration_status=$status without active start command',
        lifecycle: 'stale',
      );
      return;
    }

    _calibrationTimeoutVisible = false;
    if (_calibrationStartIntent != bs.CommandIntentState.confirmed) {
      _calibrationStartTimeout?.cancel();
      _setCalibrationIntent(
        start: bs.CommandIntentState.confirmed,
        terminal: bs.CommandIntentState.acked,
        reason: 'Calibration start confirmed from callback status=$status',
        lifecycle: 'confirmed',
      );
      _armCalibrationTerminalTimeout();
    }

    if (_isCalibrationTerminal(status, previousStatus: previousStatus)) {
      _calibrationTerminalTimeout?.cancel();
      final terminalIntent = _terminalIntentForStatus(status);
      _setCalibrationIntent(
        terminal: terminalIntent,
        reason: _terminalReason(status),
        lifecycle: terminalIntent == bs.CommandIntentState.failed ? 'failed' : 'confirmed',
      );
    } else if (status == 5) {
      _setCalibrationIntent(
        terminal: bs.CommandIntentState.acked,
        reason: 'Calibration pending callback received (status=5)',
        lifecycle: 'pending',
      );
    } else if (status == 6 && previousStatus == null) {
      _setCalibrationIntent(
        terminal: bs.CommandIntentState.confirmed,
        reason: 'Calibration already completed callback received (status=6)',
        lifecycle: 'confirmed',
      );
    }
  }

  void _armCalibrationTerminalTimeout() {
    _calibrationTerminalTimeout?.cancel();
    _calibrationTerminalTimeout =
        Timer(bs.RuntimeCommandTimeouts.calibrationTerminal, () {
      if (!mounted || _calibrationTerminalIntent == bs.CommandIntentState.confirmed) {
        return;
      }
      _calibrationTimeoutVisible = true;
      _setCalibrationIntent(
        terminal: bs.CommandIntentState.timeout,
        reason:
            'Calibration terminal timeout after ${bs.RuntimeCommandTimeouts.calibrationTerminal.inSeconds}s',
        lifecycle: 'timed_out',
      );
    });
  }

  bool _isCalibrationTerminal(int status, {required int? previousStatus}) {
    if (status < 0 || status == 7 || status == 8 || status == 9) {
      return true;
    }
    if (status == 6 && previousStatus != null && previousStatus > 1) {
      return true;
    }
    if (status == 5 && previousStatus != null && previousStatus > 1) {
      return true;
    }
    return false;
  }

  bs.CommandIntentState _terminalIntentForStatus(int status) {
    if (status == 9) {
      _calibrationTimeoutVisible = true;
      return bs.CommandIntentState.timeout;
    }
    if (status < 0 || status == 7) {
      return bs.CommandIntentState.failed;
    }
    return bs.CommandIntentState.confirmed;
  }

  String _terminalReason(int status) {
    switch (status) {
      case 8:
        return 'Calibration success callback status=8';
      case 9:
        return 'Calibration timeout callback status=9';
      case 7:
        return 'Calibration start failed callback status=7';
      case 6:
        return 'Calibration failed/timeout callback status=6';
      case 5:
        return 'Calibration success callback status=5';
      default:
        return status < 0
            ? 'Calibration terminal failure callback status=$status'
            : 'Calibration terminal callback status=$status';
    }
  }

  void _setCalibrationIntent({
    bs.CommandIntentState? start,
    bs.CommandIntentState? terminal,
    required String reason,
    required String lifecycle,
  }) {
    _logCalibrationLifecycle(
      lifecycle: lifecycle,
      reason: reason,
      start: start ?? _calibrationStartIntent,
      terminal: terminal ?? _calibrationTerminalIntent,
      callbackStatus: _lastCalibrationStatus,
    );
    if (!mounted) {
      return;
    }
    setState(() {
      if (start != null) {
        _calibrationStartIntent = start;
      }
      if (terminal != null) {
        _calibrationTerminalIntent = terminal;
      }
      _calibrationIntentReason = reason;
    });
  }

  void _logCalibrationLifecycle({
    required String lifecycle,
    required String reason,
    required bs.CommandIntentState start,
    required bs.CommandIntentState terminal,
    required int? callbackStatus,
  }) {
    developer.log(
      'command=calibration lifecycle=$lifecycle start=${start.name} terminal=${terminal.name} callback=$callbackStatus reason="$reason"',
      name: 'runtime.command.lifecycle',
      time: DateTime.now(),
    );
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
