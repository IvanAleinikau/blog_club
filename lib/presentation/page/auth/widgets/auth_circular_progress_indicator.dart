import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

class AuthCircularProgressIndicator extends StatelessWidget {
  const AuthCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: BlogDimensions.authCircleProgressIndicatorSize,
      width: BlogDimensions.authCircleProgressIndicatorSize,
      child: CircularProgressIndicator(
        color: BlogColors.authCircleProgressIndicatorColor,
        strokeWidth: BlogDimensions.authCircleProgressIndicatorStrokeWidth,
      ),
    );
  }
}
