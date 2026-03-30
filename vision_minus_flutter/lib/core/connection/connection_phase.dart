/// Declares the canonical lifecycle phases of the Connection Core state machine.
enum ConnectionPhase {
  idle,
  discovering,
  transportAvailable,
  connecting,
  sdkActive,
  droneConnecting,
  connected,
  degraded,
  disconnected,
  error;
}
