import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../connection/connection_provider.dart';
import '../connection/connection_screen.dart';
import '../../core/models/boat_state.dart' as bs;
import 'widgets/gps_status_widget.dart';
import 'widgets/battery_indicator.dart';
import 'widgets/thrust_gauge.dart';
import 'widgets/compass_widget.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boatState = ref.watch(boatStateProvider);

    // Navigate back to connection screen if disconnected
    if (boatState.connectionState == bs.ConnectionState.disconnected) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const ConnectionScreen()),
        );
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Row(
          children: [
            // Left panel: telemetry
            SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: boatState.isArmed ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          boatState.isArmed ? 'ARMED' : 'DISARMED',
                          style: TextStyle(
                            color: boatState.isArmed ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white24),
                  GpsStatusWidget(gps: boatState.gps),
                  const Divider(color: Colors.white24),
                  BatteryIndicator(battery: boatState.battery),
                  const Divider(color: Colors.white24),
                  ThrustGauge(gps: boatState.gps),
                  const Divider(color: Colors.white24),
                  CompassWidget(yaw: boatState.yaw),
                ],
              ),
            ),

            // Center: map/video placeholder
            Expanded(
              child: Container(
                color: Colors.black,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.map, size: 64, color: Colors.white24),
                      SizedBox(height: 16),
                      Text(
                        'Map view coming in Phase 3',
                        style: TextStyle(color: Colors.white38),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Right panel: controls
            SizedBox(
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _controlButton(
                    icon: Icons.home,
                    label: 'RTH',
                    color: Colors.orange,
                    onTap: () {
                      // TODO: Phase 4
                    },
                  ),
                  const SizedBox(height: 16),
                  _controlButton(
                    icon: Icons.route,
                    label: 'Mission',
                    color: Colors.blue,
                    onTap: () {
                      // TODO: Phase 5
                    },
                  ),
                  const SizedBox(height: 16),
                  _controlButton(
                    icon: Icons.power_settings_new,
                    label: boatState.isArmed ? 'Disarm' : 'Arm',
                    color: boatState.isArmed ? Colors.red : Colors.green,
                    onTap: () {
                      // TODO: Phase 5 - arm/disarm toggle
                    },
                  ),
                  const SizedBox(height: 16),
                  _controlButton(
                    icon: Icons.usb_off,
                    label: 'Disconnect',
                    color: Colors.grey,
                    onTap: () => ref.read(boatStateProvider.notifier).disconnect(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _controlButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              shape: BoxShape.circle,
              border: Border.all(color: color, width: 2),
            ),
            child: Icon(icon, color: color),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: color, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
