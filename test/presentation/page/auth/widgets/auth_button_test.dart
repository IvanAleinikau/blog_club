import 'dart:async';

import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_button.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/widget_helpers.dart';

void main() {
  group('inactive AuthButton', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        AuthButton(
          title: 'title',
          textStyle: BlogStyles.roboto18,
          onTap: completer.complete,
        ),
      );
    });

    testWidgets('should find material inactive AuthButton widget', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byType(SplashArea), findsOneWidget);
      expect(find.byType(Padding), findsOneWidget);
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
  });

  group('active AuthButton', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        AuthButton(
          title: 'title',
          textStyle: BlogStyles.roboto18,
          onTap: completer.complete,
          isActive: true,
        ),
      );
    });

    testWidgets('should find material active AuthButton widget', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byType(AuthButton), findsOneWidget);
    });
  });
}
