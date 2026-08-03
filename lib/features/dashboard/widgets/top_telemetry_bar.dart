import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/boat_state.dart' as bs;
import '../../../core/connection/connection_phase.dart';
import '../../../core/connection/connection_state.dart' as runtime;
import '../../../core/connection/transport_mode.dart';
import '../../../core/models/gps_position.dart';
import '../../connection/connection_provider.dart';

class TopTelemetryBar extends ConsumerWidget {
  final bs.CommandIntentState intentState;
  final String intentReason;
  final int intentTargetStatus;
  final double intentOpacity;

  const TopTelemetryBar({
    super.key,
    required this.intentState,
    required this.intentReason,
    required this.intentTargetStatus,
    required this.intentOpacity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boat = ref.watch(boatStateProvider);
    final connectionRepository = ref.watch(connectionRepositoryProvider);

    return Container(
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      color: Colors.black.withValues(alpha: 0.62),
      child: StreamBuilder<runtime.ConnectionState>(
        stream: connectionRepository.connectionStateStream,
        initialData: connectionRepository.currentState,
        builder: (context, snapshot) {
          final connection = snapshot.data ?? connectionRepository.currentState;
          final signalColor = _signalColor(connection.phase);
          final mode = _modeLabel(connection.transport);

          return Row(
            children: [
              IconButton(
                onPressed: () => Navigator.maybePop(context),
                icon: const Icon(Icons.arrow_back, color: Colors.white, size: 18),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints.tightFor(width: 24, height: 24),
              ),
              const SizedBox(width: 1),
              _stat(
                icon: Icons.battery_6_bar,
                text: '${boat.battery.percent}%',
                color: _batteryColor(boat.battery.percent),
              ),
              const SizedBox(width: 6),
              _stat(
                icon: Icons.satellite_alt,
                text: '${boat.gps.satellites}',
                color: boat.gps.hasFix ? Colors.greenAccent : Colors.orangeAccent,
              ),
              const SizedBox(width: 6),
              _stat(icon: Icons.network_cell, text: 'SIG', color: signalColor),
              const SizedBox(width: 6),
              _stat(icon: Icons.usb, text: mode, color: Colors.white70),
              if (intentState != bs.CommandIntentState.idle) ...[
                const SizedBox(width: 8),
                AnimatedOpacity(
                  duration: const Duration(seconds: 5),
                  curve: Curves.linear,
                  opacity: intentOpacity,
                  child: _intentStatusChip(),
                ),
              ],
              const Spacer(),
              if (boat.effectiveGpsDegradedReason ==
                  GpsDegradedReason.missingEph)
                const Flexible(
                  child: Text(
                    'GPS telemetry present, autonomy confidence unavailable',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.amberAccent, fontSize: 10),
                  ),
                ),
              if (boat.effectiveGpsDegradedReason ==
                      GpsDegradedReason.missingEph &&
                  boat.errorMessage != null &&
                  boat.errorMessage!.isNotEmpty)
                const SizedBox(width: 6),
              if (boat.errorMessage != null && boat.errorMessage!.isNotEmpty)
                Flexible(
                  child: Text(
                    boat.errorMessage!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.orangeAccent, fontSize: 11),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _intentStatusChip() {
    final color = _intentColor(intentState);
    final reason = intentReason.trim();
    final label =
        'Unlock ${intentState.name}${intentTargetStatus < 0 ? '' : ' T:$intentTargetStatus'}${reason.isEmpty ? '' : ' • $reason'}';

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 250),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _intentColor(bs.CommandIntentState state) {
    return switch (state) {
      bs.CommandIntentState.failed ||
      bs.CommandIntentState.timeout ||
      bs.CommandIntentState.stale => Colors.redAccent,
      bs.CommandIntentState.confirmed => Colors.greenAccent,
      bs.CommandIntentState.acked => Colors.orangeAccent,
      bs.CommandIntentState.sent => Colors.blueAccent,
      bs.CommandIntentState.idle => Colors.white70,
    };
  }

  Widget _stat({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 15),
        const SizedBox(width: 2),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Color _batteryColor(int percent) {
    if (percent > 50) return Colors.greenAccent;
    if (percent > 20) return Colors.amberAccent;
    return Colors.redAccent;
  }

  Color _signalColor(ConnectionPhase phase) {
    switch (phase) {
      case ConnectionPhase.connected:
        return Colors.greenAccent;
      case ConnectionPhase.degraded:
        return Colors.amberAccent;
      case ConnectionPhase.error:
      case ConnectionPhase.disconnected:
        return Colors.redAccent;
      default:
        return Colors.white70;
    }
  }

  String _modeLabel(TransportMode mode) {
    switch (mode) {
      case TransportMode.wifi:
        return 'WiFi';
      case TransportMode.usb:
        return 'USB';
      case TransportMode.none:
        return 'NONE';
    }
  }
}
