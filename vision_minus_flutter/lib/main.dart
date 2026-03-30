import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'core/sdk/power_sdk_bridge.dart';
import 'features/connection/connection_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

  // Force landscape orientation for boat controller
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // Hide system UI for full-screen experience
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  PowerSdkBridge.init();

  runApp(const ProviderScope(child: VisionMinusApp()));
}

class VisionMinusApp extends StatelessWidget {
  const VisionMinusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VisionMinus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          primary: Colors.blue,
          secondary: Colors.cyan,
          surface: Colors.grey.shade900,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const ConnectionScreen(),
    );
  }
}
