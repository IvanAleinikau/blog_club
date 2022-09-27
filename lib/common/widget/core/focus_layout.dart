import 'package:flutter/material.dart';

class FocusLayout extends StatelessWidget {
  const FocusLayout({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).focusedChild?.unfocus();
        if (FocusScope.of(context).hasFocus) FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}
