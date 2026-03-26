import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../connection/connection_provider.dart';
import '../connection/connection_screen.dart';
import '../../core/models/boat_state.dart' as bs;
import '../../core/sdk/power_sdk_bridge.dart';
import '../../core/sdk/sdk_constants.dart';
import '../map/map_widget.dart';
import '../map/map_provider.dart';
import '../rth/rth_button.dart';
import '../rth/rth_provider.dart';
import '../navigation/navigation_provider.dart';
import '../navigation/waypoint_editor_panel.dart';
import '../navigation/mission_controls.dart';
import 'widgets/gps_status_widget.dart';
import 'widgets/battery_indicator.dart';
import 'widgets/thrust_gauge.dart';
import 'widgets/compass_widget.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  bool _showWaypointPanel = false;

  @override
  void initState() {
    super.initState();
    // Set home position to phone GPS on dashboard load
    Future.microtask(() {
      ref.read(rthProvider.notifier).setHomeToPhone();
    });
  }

  @override
  Widget build(BuildContext context) {
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
            // Left panel: telemetry + optional waypoint editor
            SizedBox(
              width: _showWaypointPanel ? 280 : 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Arm status
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
                  const Divider(color: Colors.white24, height: 1),
                  GpsStatusWidget(gps: boatState.gps),
                  const Divider(color: Colors.white24, height: 1),
                  BatteryIndicator(battery: boatState.battery),
                  const Divider(color: Colors.white24, height: 1),
                  ThrustGauge(gps: boatState.gps),
                  const Divider(color: Colors.white24, height: 1),
                  CompassWidget(yaw: boatState.yaw),
                  const Divider(color: Colors.white24, height: 1),

                  // Waypoint editor panel (shown when editing)
                  if (_showWaypointPanel) ...[
                    const Expanded(child: WaypointEditorPanel()),
                    const MissionControls(),
                  ] else
                    const Spacer(),
                ],
              ),
            ),

            // Center: live map
            Expanded(
              child: const MapWidget(),
            ),

            // Right panel: controls
            SizedBox(
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // RTH button
                  const RthButton(),
                  const SizedBox(height: 16),

                  // Mission button
                  _controlButton(
                    icon: _showWaypointPanel ? Icons.map : Icons.route,
                    label: _showWaypointPanel ? 'Map' : 'Mission',
                    color: _showWaypointPanel ? Colors.cyan : Colors.blue,
                    onTap: () {
                      setState(() {
                        _showWaypointPanel = !_showWaypointPanel;
                      });
                      if (_showWaypointPanel) {
                        ref.read(waypointEditModeProvider.notifier).state = true;
                        ref.read(navigationProvider.notifier).startEditing();
                      } else {
                        ref.read(waypointEditModeProvider.notifier).state = false;
                        ref.read(navigationProvider.notifier).stopEditing();
                      }
                    },
                  ),
                  const SizedBox(height: 16),

                  // Arm/Disarm button
                  _controlButton(
                    icon: Icons.power_settings_new,
                    label: boatState.isArmed ? 'Disarm' : 'Arm',
                    color: boatState.isArmed ? Colors.red : Colors.green,
                    onTap: () => _toggleArm(context, ref, boatState.isArmed),
                  ),
                  const SizedBox(height: 16),

                  // Disconnect button
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

  void _toggleArm(BuildContext context, WidgetRef ref, bool isArmed) {
    if (isArmed) {
      // Disarm — confirm first
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Disarm Boat?'),
          content: const Text('This will stop all motors.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                PowerSdkBridge.setArmStatus(ArmStatus.disarmed);
              },
              child: const Text('Disarm', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      );
    } else {
      // Arm — confirm first
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Arm Boat?'),
          content: const Text('Motors will be ready. Ensure the area is clear.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                PowerSdkBridge.setArmStatus(ArmStatus.armed);
              },
              child: const Text('Arm', style: TextStyle(color: Colors.green)),
            ),
          ],
        ),
      );
    }
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
