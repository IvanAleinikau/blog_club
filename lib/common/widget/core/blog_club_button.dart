import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

class BlogClubButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double height;
  final double? width;
  final TextStyle? textStyle;
  final Color buttonColor;

  const BlogClubButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.width,
    this.textStyle,
    required this.buttonColor,
  })  : height = BlogDimensions.blogClubButtonHeight,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        BlogDimensions.defaultBorderRadius,
      ),
      child: Container(
        height: height,
        width: width,
        color: buttonColor,
        child: SplashArea(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style: textStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
