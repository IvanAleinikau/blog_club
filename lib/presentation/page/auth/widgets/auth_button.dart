import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final VoidCallback onTap;
  final bool isActive;

  const AuthButton({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashArea(
      borderRadius: BorderRadius.circular(
        BlogDimensions.defaultBorderRadius,
      ),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(BlogDimensions.normalH),
        child: Text(
          title,
          style: textStyle.copyWith(
            color: isActive ? BlogColors.authActiveTab : BlogColors.authInactiveTab,
          ),
        ),
      ),
    );
  }
}
