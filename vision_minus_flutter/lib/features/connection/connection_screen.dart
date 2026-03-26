import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../connection/connection_provider.dart';
import '../../core/models/boat_state.dart' as bs;
import '../dashboard/dashboard_screen.dart';

class ConnectionScreen extends ConsumerWidget {
  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boatState = ref.watch(boatStateProvider);

    // Auto-navigate to dashboard when connected
    if (boatState.connectionState == bs.ConnectionState.connected) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const DashboardScreen()),
        );
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _iconForState(boatState.connectionState),
              size: 80,
              color: _colorForState(boatState.connectionState),
            ),
            const SizedBox(height: 24),
            Text(
              'VisionMinus',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Water Drone Controller',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white54,
                  ),
            ),
            const SizedBox(height: 48),
            Text(
              _statusText(boatState.connectionState, boatState.errorMessage),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: _colorForState(boatState.connectionState),
                  ),
            ),
            const SizedBox(height: 24),
            if (boatState.connectionState == bs.ConnectionState.disconnected ||
                boatState.connectionState == bs.ConnectionState.error)
              ElevatedButton.icon(
                onPressed: () => ref.read(boatStateProvider.notifier).connect(),
                icon: const Icon(Icons.usb),
                label: const Text('Connect via USB'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            if (boatState.connectionState == bs.ConnectionState.connecting ||
                boatState.connectionState == bs.ConnectionState.requestingPermission)
              const CircularProgressIndicator(color: Colors.blue),
          ],
        ),
      ),
    );
  }

  IconData _iconForState(bs.ConnectionState state) {
    switch (state) {
      case bs.ConnectionState.connected:
        return Icons.check_circle;
      case bs.ConnectionState.connecting:
      case bs.ConnectionState.requestingPermission:
        return Icons.usb;
      case bs.ConnectionState.error:
        return Icons.error;
      case bs.ConnectionState.disconnected:
        return Icons.directions_boat;
    }
  }

  Color _colorForState(bs.ConnectionState state) {
    switch (state) {
      case bs.ConnectionState.connected:
        return Colors.green;
      case bs.ConnectionState.connecting:
      case bs.ConnectionState.requestingPermission:
        return Colors.amber;
      case bs.ConnectionState.error:
        return Colors.red;
      case bs.ConnectionState.disconnected:
        return Colors.white70;
    }
  }

  String _statusText(bs.ConnectionState state, String? error) {
    switch (state) {
      case bs.ConnectionState.connected:
        return 'Connected';
      case bs.ConnectionState.connecting:
        return 'Connecting...';
      case bs.ConnectionState.requestingPermission:
        return 'Requesting USB permission...';
      case bs.ConnectionState.error:
        return 'Error: ${error ?? "Unknown"}';
      case bs.ConnectionState.disconnected:
        return 'Connect your PowerVision water drone via USB';
    }
  }
}
