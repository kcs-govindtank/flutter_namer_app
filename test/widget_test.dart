
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
  });
}

