import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/connection/connection_phase.dart';
import '../../core/connection/connection_state.dart' as runtime;
import '../../core/connection/transport_mode.dart';
import '../../core/sdk/power_sdk_bridge.dart';
import '../connection/connection_provider.dart';
import '../../core/models/boat_state.dart' as bs;
import '../dashboard/dashboard_screen.dart';

enum ConnectionUIState {
  wifiAutoConnecting,
  wifiInstructions,
  droneOffline,
  usbFallback,
  connected,
  error,
}

class ConnectionScreen extends ConsumerStatefulWidget {
  const ConnectionScreen({super.key});

  @override
  ConsumerState<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends ConsumerState<ConnectionScreen> {
  static const _phaseLabels = [
    'IDLE',
    'DISCOVERING',
    'CONNECTING',
    'CONNECTED',
    'ERROR',
  ];

  String _wifiConfidence = 'NONE';
  Set<String> _availableTransports = <String>{};
  bool _isBootstrapping = true;
  bool _autoConnectAttempted = false;
  bool _hasNavigated = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(_checkWifiAndConnect);
  }

  Future<void> _checkWifiAndConnect() async {
    await _refreshAvailability();

    if ((_wifiConfidence == 'HIGH' || _wifiConfidence == 'MEDIUM') &&
        !_autoConnectAttempted) {
      _autoConnectAttempted = true;
      await ref.read(connectionControllerProvider).autoConnect();
    }
  }

  Future<void> _refreshAvailability() async {
    final confidence = (await PowerSdkBridge.getWifiConfidence()).toUpperCase();
    final transports = await PowerSdkBridge.getAvailableTransports();

    if (!mounted) return;

    setState(() {
      _wifiConfidence = confidence;
      _availableTransports = _normalizeTransports(transports);
      _isBootstrapping = false;
    });
  }

  Set<String> _normalizeTransports(dynamic raw) {
    if (raw is List) {
      return raw
          .map((entry) => entry.toString().toUpperCase())
          .where((entry) => entry.isNotEmpty)
          .toSet();
    }
    return <String>{};
  }

  Future<void> _retry(runtime.ConnectionState connectionState) async {
    await _refreshAvailability();

    if (_wifiConfidence == 'HIGH') {
      await ref.read(connectionControllerProvider).autoConnect();
      return;
    }

    if (_wifiConfidence == 'MEDIUM' || _wifiConfidence == 'LOW') {
      await ref.read(connectionControllerProvider).connectWifi();
      return;
    }

    if (_canShowUsbFallback(connectionState)) {
      await ref.read(connectionControllerProvider).connectUsb();
    }
  }

  bool _isConnectedPhase(ConnectionPhase phase) {
    return phase == ConnectionPhase.connected || phase == ConnectionPhase.degraded;
  }

  bool _canShowUsbFallback(runtime.ConnectionState connectionState) {
    final usbAttached = _availableTransports.contains('USB');
    final wifiConnected = connectionState.transport == TransportMode.wifi &&
        _isConnectedPhase(connectionState.phase);
    final wifiAvailable = _wifiConfidence != 'NONE';

    return usbAttached && !wifiConnected && !wifiAvailable;
  }

  ConnectionUIState _resolveUiState(runtime.ConnectionState connectionState) {
    if (_isConnectedPhase(connectionState.phase)) {
      return ConnectionUIState.connected;
    }

    if (connectionState.phase == ConnectionPhase.error) {
      return _canShowUsbFallback(connectionState)
          ? ConnectionUIState.usbFallback
          : ConnectionUIState.error;
    }

    if (_wifiConfidence == 'HIGH' || _wifiConfidence == 'MEDIUM') {
      return ConnectionUIState.wifiAutoConnecting;
    }

    if (_wifiConfidence == 'LOW') {
      return ConnectionUIState.wifiInstructions;
    }

    if (_canShowUsbFallback(connectionState)) {
      return ConnectionUIState.usbFallback;
    }

    return ConnectionUIState.droneOffline;
  }

  @override
  Widget build(BuildContext context) {
    final boatState = ref.watch(boatStateProvider);

    final connectionRepository = ref.watch(connectionRepositoryProvider);

    return StreamBuilder<runtime.ConnectionState>(
      stream: connectionRepository.connectionStateStream,
      initialData: connectionRepository.currentState,
      builder: (context, snapshot) {
        final connectionState = snapshot.data ?? connectionRepository.currentState;
        final uiState = _resolveUiState(connectionState);

        if (!_hasNavigated &&
            (_isConnectedPhase(connectionState.phase) ||
                boatState.connectionState == bs.ConnectionState.connected)) {
          _hasNavigated = true;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const DashboardScreen()),
              );
            }
          });
        }

        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _iconForUiState(uiState),
                    size: 76,
                    color: _colorForUiState(uiState),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'VisionMinus',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _primaryMessage(uiState, connectionState),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _secondaryMessage(uiState),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white60,
                        ),
                  ),
                  const SizedBox(height: 24),
                  _buildPhaseIndicator(connectionState.phase),
                  const SizedBox(height: 16),
                  if (_showProgressSpinner(uiState, connectionState.phase))
                    const CircularProgressIndicator(color: Colors.blue),
                  if (_isBootstrapping) ...[
                    const SizedBox(height: 12),
                    const CircularProgressIndicator(color: Colors.white54),
                  ],
                  const SizedBox(height: 20),
                  if (uiState == ConnectionUIState.wifiInstructions ||
                      uiState == ConnectionUIState.droneOffline ||
                      uiState == ConnectionUIState.error ||
                      uiState == ConnectionUIState.usbFallback)
                    ElevatedButton(
                      onPressed: () => _retry(connectionState),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 14,
                        ),
                      ),
                      child: const Text('Retry'),
                    ),
                  if (_canShowUsbFallback(connectionState)) ...[
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: () =>
                          ref.read(connectionControllerProvider).connectUsb(),
                      icon: const Icon(Icons.usb),
                      label: const Text('Use USB (Debug/Firmware)'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white70,
                        side: const BorderSide(color: Colors.white38),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          ),
        );
      },
    );
  }

  bool _showProgressSpinner(ConnectionUIState uiState, ConnectionPhase phase) {
    if (uiState == ConnectionUIState.wifiAutoConnecting) return true;
    if (phase == ConnectionPhase.discovering ||
        phase == ConnectionPhase.connecting ||
        phase == ConnectionPhase.sdkActive ||
        phase == ConnectionPhase.droneConnecting ||
        phase == ConnectionPhase.transportAvailable) {
      return true;
    }
    return false;
  }

  IconData _iconForUiState(ConnectionUIState state) {
    switch (state) {
      case ConnectionUIState.connected:
        return Icons.check_circle;
      case ConnectionUIState.error:
        return Icons.error;
      case ConnectionUIState.usbFallback:
        return Icons.usb;
      case ConnectionUIState.wifiAutoConnecting:
      case ConnectionUIState.wifiInstructions:
        return Icons.wifi;
      case ConnectionUIState.droneOffline:
        return Icons.directions_boat;
    }
  }

  Color _colorForUiState(ConnectionUIState state) {
    switch (state) {
      case ConnectionUIState.connected:
        return Colors.green;
      case ConnectionUIState.error:
        return Colors.redAccent;
      case ConnectionUIState.usbFallback:
        return Colors.blueAccent;
      case ConnectionUIState.wifiAutoConnecting:
      case ConnectionUIState.wifiInstructions:
        return Colors.lightBlueAccent;
      case ConnectionUIState.droneOffline:
        return Colors.white70;
    }
  }

  String _primaryMessage(
    ConnectionUIState uiState,
    runtime.ConnectionState connectionState,
  ) {
    switch (uiState) {
      case ConnectionUIState.wifiAutoConnecting:
        return _wifiProgressMessage(connectionState.phase);
      case ConnectionUIState.wifiInstructions:
        return 'Connect phone to drone WiFi';
      case ConnectionUIState.droneOffline:
        return 'Turn on drone and join its WiFi network';
      case ConnectionUIState.usbFallback:
        return 'WiFi unavailable. USB fallback is available.';
      case ConnectionUIState.connected:
        return 'Connected';
      case ConnectionUIState.error:
        return connectionState.errorMessage ?? 'Connection failed';
    }
  }

  String _secondaryMessage(ConnectionUIState uiState) {
    switch (uiState) {
      case ConnectionUIState.wifiAutoConnecting:
        return 'Auto-connecting to drone over WiFi';
      case ConnectionUIState.wifiInstructions:
        return 'After joining PDO_VEH_* WiFi, tap Retry.';
      case ConnectionUIState.droneOffline:
        return 'Power the drone, connect to PDO_VEH_* network, then Retry.';
      case ConnectionUIState.usbFallback:
        return 'Use USB only for debug/firmware when WiFi is unavailable.';
      case ConnectionUIState.connected:
        return 'Launching dashboard';
      case ConnectionUIState.error:
        return 'Check WiFi/USB and retry.';
    }
  }

  String _wifiProgressMessage(ConnectionPhase phase) {
    if (phase == ConnectionPhase.connected || phase == ConnectionPhase.degraded) {
      return 'Connected';
    }
    if (phase == ConnectionPhase.connecting ||
        phase == ConnectionPhase.sdkActive ||
        phase == ConnectionPhase.droneConnecting) {
      return 'Connecting...';
    }
    return 'Finding drone...';
  }

  Widget _buildPhaseIndicator(ConnectionPhase phase) {
    final activeLabel = _phaseLabelForPhase(phase);

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: _phaseLabels
          .map(
            (label) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: label == activeLabel ? Colors.blue : Colors.white12,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white24),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: label == activeLabel ? Colors.white : Colors.white70,
                  fontSize: 11,
                  fontWeight:
                      label == activeLabel ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  String _phaseLabelForPhase(ConnectionPhase phase) {
    switch (phase) {
      case ConnectionPhase.idle:
      case ConnectionPhase.disconnected:
        return 'IDLE';
      case ConnectionPhase.discovering:
      case ConnectionPhase.transportAvailable:
        return 'DISCOVERING';
      case ConnectionPhase.connecting:
      case ConnectionPhase.sdkActive:
      case ConnectionPhase.droneConnecting:
        return 'CONNECTING';
      case ConnectionPhase.connected:
      case ConnectionPhase.degraded:
        return 'CONNECTED';
      case ConnectionPhase.error:
        return 'ERROR';
    }
  }
}
