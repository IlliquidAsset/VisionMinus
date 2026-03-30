import 'connection_phase.dart';
import 'transport_mode.dart';

/// Immutable Connection Core state snapshot shared across layers.
class ConnectionState {
  final TransportMode transport;
  final ConnectionPhase phase;
  final int sessionGeneration;
  final String? statusMessage;
  final String? errorMessage;

  const ConnectionState({
    required this.transport,
    required this.phase,
    required this.sessionGeneration,
    this.statusMessage,
    this.errorMessage,
  });

  ConnectionState copyWith({
    TransportMode? transport,
    ConnectionPhase? phase,
    int? sessionGeneration,
    String? statusMessage,
    String? errorMessage,
  }) {
    return ConnectionState(
      transport: transport ?? this.transport,
      phase: phase ?? this.phase,
      sessionGeneration: sessionGeneration ?? this.sessionGeneration,
      statusMessage: statusMessage ?? this.statusMessage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
