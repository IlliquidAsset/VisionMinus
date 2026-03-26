import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vision_minus/main.dart';

void main() {
  testWidgets('App renders connection screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: VisionMinusApp()));
    expect(find.text('VisionMinus'), findsOneWidget);
    expect(find.text('Water Drone Controller'), findsOneWidget);
  });
}
