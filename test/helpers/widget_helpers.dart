import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget buildMaterialWidget(Widget widgetToTest) {
  return MaterialApp(
    home: Scaffold(
      body: widgetToTest,
    ),
  );
}

Future<void> waitWidgetWithPumpAndSettle(WidgetTester tester, Widget materialWidget) async {
  await tester.pumpWidget(materialWidget);
  await tester.pumpAndSettle();
}

Future<void> waitWidgetWithPump(WidgetTester tester, Widget materialWidget) async {
  await tester.pumpWidget(materialWidget);
  await tester.pump();
}
