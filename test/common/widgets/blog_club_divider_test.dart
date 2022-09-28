import 'package:blog_club/common/widget/core/blog_club_divider.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/widget_helpers.dart';

void main() {
  testWidgets('should find material BlogClubDivider.normalH widget', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normalH());
    expect(find.byType(SizedBox), findsOneWidget);
  });

  testWidgets('should find material BlogClubDivider.normal widget', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normal());
    expect(find.byType(SizedBox), findsOneWidget);
  });

  testWidgets('should find material BlogClubDivider.normalM widget', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normalM());
    expect(find.byType(SizedBox), findsOneWidget);
  });

  testWidgets('should find material BlogClubDivider.normal2 widget', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normal2());
    expect(find.byType(SizedBox), findsOneWidget);
  });

  testWidgets('should find material BlogClubDivider.normal3 widget', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normal3());
    expect(find.byType(SizedBox), findsOneWidget);
  });

  testWidgets('should find material BlogClubDivider.normal4 widget', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normal4());
    expect(find.byType(SizedBox), findsOneWidget);
  });

  testWidgets('check correct size', (tester) async {
    await waitWidgetWithPump(tester, const BlogClubDivider.normal4());
    final sizedBoxFinder = find.byType(SizedBox);
    final sizedBoxWidget = tester.firstWidget<SizedBox>(sizedBoxFinder);
    expect(sizedBoxWidget.height, BlogDimensions.normal4);
    expect(sizedBoxWidget.width, BlogDimensions.normal4);
  });
}
