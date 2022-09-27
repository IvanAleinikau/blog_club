import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

class AuthSocialMediaButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const AuthSocialMediaButton.google({
    Key? key,
    required this.onTap,
  })  : icon = BlogImage.googleIcon,
        super(key: key);

  const AuthSocialMediaButton.twitter({
    Key? key,
    required this.onTap,
  })  : icon = BlogImage.twitterIcon,
        super(key: key);

  const AuthSocialMediaButton.facebook({
    Key? key,
    required this.onTap,
  })  : icon = BlogImage.facebookIcon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashArea.circle(
      onTap: onTap,
      child: Image.asset(
        icon,
        width: BlogDimensions.socialMediaIconSize,
        height: BlogDimensions.socialMediaIconSize,
      ),
    );
  }
}
