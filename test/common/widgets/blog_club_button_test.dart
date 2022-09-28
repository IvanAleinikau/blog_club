import 'dart:async';

import 'package:blog_club/common/widget/core/blog_club_button.dart';
import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/widget_helpers.dart';

void main() {
  late Widget widget;
  final completer = Completer<void>();

  setUp(() {
    widget = buildMaterialWidget(
      BlogClubButton(
        title: 'title',
        onTap: completer.complete,
        buttonColor: const Color(0xFFFFFFFF),
      ),
    );
  });

  testWidgets('should find material BlogClubButton widget', (tester) async {
    await waitWidgetWithPump(tester, widget);
    expect(find.byType(ClipRRect), findsOneWidget);
    expect(find.byType(SplashArea), findsOneWidget);
    expect(find.byType(Center), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
  });

  testWidgets('should execute callback', (tester) async {
    await waitWidgetWithPump(tester, widget);
    await tester.tap(find.byType(SplashArea));
    expect(completer.isCompleted, true);
  });

  testWidgets('should find button title', (tester) async {
    await waitWidgetWithPump(tester, widget);
    expect(find.text('title'), findsOneWidget);
  });
}
