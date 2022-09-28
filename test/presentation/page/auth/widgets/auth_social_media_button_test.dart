import 'dart:async';

import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_social_media_button.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/widget_helpers.dart';

void main() {
  group('Google button', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        AuthSocialMediaButton.google(
          onTap: completer.complete,
        ),
      );
    });

    testWidgets('should find Google button', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('should execute callback', (tester) async {
      await waitWidgetWithPump(tester, widget);
      await tester.tap(find.byType(SplashArea));
      expect(completer.isCompleted, true);
    });

    testWidgets('check correct image size and icon', (tester) async {
      await waitWidgetWithPump(tester, widget);
      final imageFinder = find.byType(Image);
      final imageWidget = tester.firstWidget<Image>(imageFinder);
      expect(imageWidget.height, BlogDimensions.socialMediaIconSize);
      expect(imageWidget.width, BlogDimensions.socialMediaIconSize);
      expect(imageWidget.image, const AssetImage(BlogImage.googleIcon));
    });
  });

  group('Twitter button', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        AuthSocialMediaButton.twitter(
          onTap: completer.complete,
        ),
      );
    });

    testWidgets('should find Twitter button', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('check correct image size and icon', (tester) async {
      await waitWidgetWithPump(tester, widget);
      final imageFinder = find.byType(Image);
      final imageWidget = tester.firstWidget<Image>(imageFinder);
      expect(imageWidget.height, BlogDimensions.socialMediaIconSize);
      expect(imageWidget.width, BlogDimensions.socialMediaIconSize);
      expect(imageWidget.image, const AssetImage(BlogImage.twitterIcon));
    });
  });

  group('Facebook button', () {
    late Widget widget;
    final completer = Completer<void>();

    setUp(() {
      widget = buildMaterialWidget(
        AuthSocialMediaButton.facebook(
          onTap: completer.complete,
        ),
      );
    });

    testWidgets('should find Facebook button', (tester) async {
      await waitWidgetWithPump(tester, widget);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('check correct image size and icon', (tester) async {
      await waitWidgetWithPump(tester, widget);
      final imageFinder = find.byType(Image);
      final imageWidget = tester.firstWidget<Image>(imageFinder);
      expect(imageWidget.height, BlogDimensions.socialMediaIconSize);
      expect(imageWidget.width, BlogDimensions.socialMediaIconSize);
      expect(imageWidget.image, const AssetImage(BlogImage.facebookIcon));
    });
  });
}
