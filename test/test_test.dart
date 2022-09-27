import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;

  setUp(() async {
    sut = MaterialApp(
      home: Scaffold(
        body: SplashArea(
          child: Container(),
          onTap: () {},
        ),
      ),
    );
  });

  testWidgets('just example', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(SplashArea), findsOneWidget);
  });
}
