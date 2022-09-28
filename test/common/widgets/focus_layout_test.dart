import 'package:blog_club/common/widget/core/blog_club_divider.dart';
import 'package:blog_club/common/widget/core/focus_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/widget_helpers.dart';

void main() {
  late Widget widget;
  final FocusNode focus = FocusNode();

  setUp(() {
    widget = buildMaterialWidget(
      FocusLayout(
        child: ListView(
          children: [
            const BlogClubDivider.normal4(),
            TextField(focusNode: focus),
          ],
        ),
      ),
    );
  });

  Future<void> getFocusedWidget(WidgetTester tester) async {
    FocusScope.of(tester.element(find.byType(TextField))).requestFocus(focus);
    await tester.pump();
    await tester.pumpAndSettle();
  }

  testWidgets('should find material FocusLayout widget', (tester) async {
    await waitWidgetWithPump(tester, widget);
    expect(find.byType(GestureDetector), findsOneWidget);
  });

  testWidgets('should unFocus on tap', (tester) async {
    await tester.pumpWidget(widget);
    expect(focus.hasFocus, isFalse);
    await getFocusedWidget(tester);
    expect(focus.hasFocus, isTrue);
    await tester.tapAt(const Offset(10, 10));
    await tester.pump();
    await tester.pumpAndSettle();
    expect(focus.hasFocus, false);
  });
}
