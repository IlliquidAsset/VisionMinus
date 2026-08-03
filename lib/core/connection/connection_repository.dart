import 'dart:async';

import 'package:flutter/services.dart';

import '../sdk/power_sdk_bridge.dart';
import 'connection_phase.dart';
import 'connection_state.dart';
import 'transport_mode.dart';

/// Sole consumer of native connection runtime events.
class ConnectionRepository {
  static const EventChannel _connectionStateChannel =
      EventChannel('com.visionminus/connection_state');

  final StreamController<ConnectionState> _controller =
      StreamController<ConnectionState>.broadcast();

  StreamSubscription? _subscription;

  ConnectionState _state = const ConnectionState(
    transport: TransportMode.none,
    phase: ConnectionPhase.idle,
    sessionGeneration: 0,
  );

  ConnectionRepository() {
    PowerSdkBridge.init();
    _controller.add(_state);

    _subscription = _connectionStateChannel.receiveBroadcastStream().listen(
      _handleEvent,
      onError: _handleError,
    );

    _hydrateFromMethodChannel();
  }

  Stream<ConnectionState> get connectionStateStream => _controller.stream;

  ConnectionState get currentState => _state;

  Future<void> _hydrateFromMethodChannel() async {
    try {
      final snapshot = await PowerSdkBridge.getConnectionStatus();
      _updateState(snapshot);
    } catch (_) {
      // Connection state will continue to stream from EventChannel.
    }
  }

  void _handleEvent(dynamic event) {
    if (event is! Map) return;
    _updateState(Map<String, dynamic>.from(event));
  }

  void _handleError(Object error) {
    _state = _state.copyWith(
      phase: ConnectionPhase.error,
      errorMessage: error.toString(),
    );
    _controller.add(_state);
  }

  void _updateState(Map<String, dynamic> payload) {
    final transport = _parseTransport(payload['transport']);
    final phase = _parsePhase(payload['phase']);

    final nextState = _state.copyWith(
      transport: transport,
      phase: phase,
      sessionGeneration: (payload['sessionGeneration'] as num?)?.toInt() ??
          (payload['generation'] as num?)?.toInt() ??
          _state.sessionGeneration,
      statusMessage: payload['statusMessage']?.toString() ??
          payload['message']?.toString() ??
          _state.statusMessage,
      errorMessage: payload['errorMessage']?.toString() ??
          (phase == ConnectionPhase.error
              ? payload['message']?.toString()
              : _state.errorMessage),
    );

    _state = nextState;
    _controller.add(_state);
  }

  TransportMode _parseTransport(dynamic raw) {
    final normalized = _normalize(raw?.toString());
    if (normalized == 'wifi') return TransportMode.wifi;
    if (normalized == 'usb') return TransportMode.usb;
    if (normalized == 'none') return TransportMode.none;
    return _state.transport;
  }

  ConnectionPhase _parsePhase(dynamic raw) {
    final normalized = _normalize(raw?.toString());
    for (final phase in ConnectionPhase.values) {
      if (_normalize(phase.name) == normalized) {
        return phase;
      }
    }
    return _state.phase;
  }

  String _normalize(String? value) {
    if (value == null) return '';
    return value.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  }

  void dispose() {
    _subscription?.cancel();
    _controller.close();
  }
}
