// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:projet_transverse_equipe_7/main.dart';

void main() {
  testWidgets('Home page is created', (WidgetTester tester) async {
    final testWidget = MaterialApp(
      home: HomePage(onPressed: () => false,),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();
  });

  testWidgets('Home page contains hello wolrd text', (WidgetTester tester) async {
    final testWidget = MaterialApp(
      home: HomePage(onPressed: () => false,),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();
    expect(find.text('Hello World!'), findsOneWidget);
  });

  testWidgets('Home page contains button', (WidgetTester tester) async {
    final testW = MaterialApp(home: HomePage(onPressed: () => false,));

    await tester.pumpWidget(testW);
    await tester.pumpAndSettle();

    final buttonMaterial = find.descendant(
        of: find.byType(ElevatedButton),
        matching: find.byType(Material)
    );

    final materialButton = tester.widget<Material>(buttonMaterial);

    expect(materialButton.color, Colors.blue);
    expect(find.text('Weather today'), findsOneWidget);
    expect(find.byKey(Key('icon_weather')), findsOneWidget);
  });

  testWidgets('notify when button is pressed', (WidgetTester tester) async {
    var pressed = false;
    final testWidget = MaterialApp(
      home: HomePage(
        onPressed: () => pressed = true,
      ),
    );

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(pressed, isTrue);
  });
}
