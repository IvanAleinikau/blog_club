import 'package:blog_club/common/widget/core/blog_club_divider.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_social_media_button.dart';
import 'package:flutter/material.dart';

class AuthSocialMedia extends StatelessWidget {
  const AuthSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthSocialMediaButton.google(
          onTap: () {},
        ),
        const BlogClubDivider.normal2(),
        AuthSocialMediaButton.facebook(
          onTap: () {},
        ),
        const BlogClubDivider.normal2(),
        AuthSocialMediaButton.twitter(
          onTap: () {},
        ),
      ],
    );
  }
}
