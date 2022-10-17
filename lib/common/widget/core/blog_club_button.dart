import 'package:blog_club/common/constants/app_constants.dart';
import 'package:blog_club/common/constants/ui_constants.dart';
import 'package:blog_club/common/widget/core/empty_widget.dart';
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
  final bool isHaveChild;
  final Widget child;

  const BlogClubButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.width,
    this.textStyle,
    required this.buttonColor,
  })  : height = BlogDimensions.blogClubButtonHeight,
        isHaveChild = false,
        child = const EmptyWidget(),
        super(key: key);

  const BlogClubButton.withChild({
    Key? key,
    this.width,
    required this.buttonColor,
    required this.child,
  })  : height = BlogDimensions.blogClubButtonHeight,
        isHaveChild = true,
        onTap = defaultFunction,
        title = EMPTY_STRING,
        textStyle = const TextStyle(),
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
            child: !isHaveChild
                ? Text(
                    title,
                    style: textStyle,
                    overflow: TextOverflow.ellipsis,
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
