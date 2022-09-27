import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

class BlogClubDivider extends StatelessWidget {
  final double height;
  final double width;

  const BlogClubDivider.normalH()
      : height = BlogDimensions.normalH,
        width = BlogDimensions.normalH;

  const BlogClubDivider.normal()
      : height = BlogDimensions.normal,
        width = BlogDimensions.normal;

  const BlogClubDivider.normalM()
      : height = BlogDimensions.normalM,
        width = BlogDimensions.normalM;

  const BlogClubDivider.normal2()
      : height = BlogDimensions.normal2,
        width = BlogDimensions.normal2;

  const BlogClubDivider.normal3()
      : height = BlogDimensions.normal3,
        width = BlogDimensions.normal3;

  const BlogClubDivider.normal4()
      : height = BlogDimensions.normal4,
        width = BlogDimensions.normal4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
