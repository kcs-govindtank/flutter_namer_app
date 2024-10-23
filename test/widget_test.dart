
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/main.dart';

void main() {
  testWidgets('Namer app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our app title is present.
    expect(find.text('Namer App'), findsOneWidget);

    // Verify that we have a list of word pairs.
    expect(find.byType(ListView), findsOneWidget);

    // Verify that we have at least one ListTile (word pair).
    expect(find.byType(ListTile), findsWidgets);

    // Verify that we have a favorite icon.
    expect(find.byIcon(Icons.favorite_border), findsWidgets);

    // Tap the first favorite icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.favorite_border).first);
    await tester.pump();

    // Verify that the icon has changed to a filled favorite icon.
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    // Verify that we have a list icon in the app bar.
    expect(find.byIcon(Icons.list), findsOneWidget);

    // Tap the list icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.list));
    await tester.pumpAndSettle();

    // Verify that we're on the saved suggestions page.
    expect(find.text('Saved Suggestions'), findsOneWidget);

    // Verify that we have a saved word pair.
    expect(find.byType(ListTile), findsOneWidget);
  });
}
