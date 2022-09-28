import 'dart:async';

import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/widget_helpers.dart';

void main() {
  group('SplashArea test', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        SplashArea(
          onTap: completer.complete,
          child: Container(),
        ),
      );
    });

    testWidgets('should find material by key widget', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byKey(SPLASH_AREA_MATERIAL_KEY), findsOneWidget);
    });

    testWidgets('should execute callback', (tester) async {
      await waitWidgetWithPump(tester, widget);
      await tester.tap(find.byType(InkWell));
      expect(completer.isCompleted, true);
    });
  });

  group('SplashArea.circle test', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        SplashArea.circle(
          onTap: completer.complete,
          child: Container(),
        ),
      );
    });

    testWidgets('should find SplashArea.circle widget', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byType(SplashArea), findsOneWidget);
    });

    testWidgets('should execute callback', (tester) async {
      await waitWidgetWithPump(tester, widget);
      await tester.tap(find.byType(InkWell));
      expect(completer.isCompleted, true);
    });
  });
}
