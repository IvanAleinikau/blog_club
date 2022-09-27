import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;

  setUp(() async {
    sut = MaterialApp(
      home: Scaffold(
        body: Container(),
      ),
    );
  });

  testWidgets('should show correct text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(Container), findsOneWidget);
  });
}
