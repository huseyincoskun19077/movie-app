// This is a basic Flutter widget test.

import 'package:flutter_test/flutter_test.dart';

import 'package:nodelabsmovieapp/main.dart';

void main() {
  testWidgets('Movie app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MovieApp());

    // Verify that the splash screen is displayed.
    await tester.pump();
    
    // Wait for splash screen to finish and navigate to home
    await tester.pump(const Duration(seconds: 4));
    
    // Verify that we're on the home screen
    expect(find.text('Movie App'), findsOneWidget);
  });
}
