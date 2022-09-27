import 'package:blog_club/common/widget/core/blog_club_button.dart';
import 'package:blog_club/common/widget/core/blog_club_divider.dart';
import 'package:blog_club/common/widget/core/focus_layout.dart';
import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_button.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_input.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_social_media_button.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final ValueNotifier<bool> _isLogin = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: FocusLayout(
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: BlogDimensions.normal4,
                  bottom: BlogDimensions.normal4,
                ),
                child: Image.asset(
                  BlogImage.appLogo,
                  width: 110,
                  height: 56,
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                child: ColoredBox(
                  color: Colors.blue.shade700,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ValueListenableBuilder(
                              valueListenable: _isLogin,
                              builder: (_, bool isLogin, __) => AuthButton(
                                title: 'Login'.toUpperCase(),
                                textStyle: BlogStyles.roboto18ls05,
                                isActive: isLogin,
                                onTap: () => _isLogin.value = true,
                              ),
                            ),
                            const SizedBox(
                              width: BlogDimensions.normal4,
                            ),
                            ValueListenableBuilder(
                              valueListenable: _isLogin,
                              builder: (_, bool isLogin, __) => AuthButton(
                                title: 'Sing up'.toUpperCase(),
                                textStyle: BlogStyles.roboto18ls05,
                                isActive: !isLogin,
                                onTap: () => _isLogin.value = false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                          child: ColoredBox(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: ValueListenableBuilder(
                                valueListenable: _isLogin,
                                builder: (_, bool isLogin, __) {
                                  return isLogin
                                      ? Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            const BlogClubDivider.normalH(),
                                            Text(
                                              'Welcome Back',
                                              style: BlogStyles.isonorm26ls05w700,
                                            ),
                                            const BlogClubDivider.normal(),
                                            Text(
                                              'Sing in with you account',
                                              style:
                                                  BlogStyles.isonorm16.copyWith(color: Colors.grey),
                                            ),
                                            const BlogClubDivider.normal4(),
                                            Form(
                                              onChanged: () {
                                                //check validation
                                              },
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Username',
                                                    style: BlogStyles.isonorm18,
                                                  ),
                                                  AuthInput(
                                                    textInputAction: TextInputAction.next,
                                                  ),
                                                  BlogClubDivider.normalM(),
                                                  Text(
                                                    'Password',
                                                    style: BlogStyles.isonorm18,
                                                  ),
                                                  AuthInput(
                                                    isPassword: true,
                                                    textInputAction: TextInputAction.done,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const BlogClubDivider.normal2(),
                                            BlogClubButton(
                                              title: 'Login',
                                              onTap: () {},
                                              buttonColor: Colors.blue.shade700,
                                              textStyle: BlogStyles.isonorm22.copyWith(
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                            const BlogClubDivider.normal2(),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  'Forgot your password?',
                                                  style: BlogStyles.isonorm18,
                                                ),
                                                const SizedBox(
                                                  width: BlogDimensions.normalQ,
                                                ),
                                                SplashArea(
                                                  borderRadius: BorderRadius.circular(5),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(
                                                      horizontal: 3,
                                                    ),
                                                    child: Text(
                                                      'Reset here',
                                                      style: BlogStyles.isonorm18.copyWith(
                                                        color: Colors.blue.shade700,
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: () {},
                                                ),
                                              ],
                                            ),
                                            const BlogClubDivider.normal2(),
                                            Center(
                                              child: Text(
                                                'Or sing in with'.toUpperCase(),
                                                style: BlogStyles.isonorm18.copyWith(
                                                  color: Colors.grey.shade900,
                                                ),
                                              ),
                                            ),
                                            const BlogClubDivider.normal2(),
                                            Row(
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
                                            ),
                                          ],
                                        )
                                      : Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            const BlogClubDivider.normalH(),
                                            Text(
                                              'Welcome!',
                                              style: BlogStyles.isonorm26ls05w700,
                                            ),
                                            const BlogClubDivider.normal(),
                                            Text(
                                              'Create your account',
                                              style:
                                                  BlogStyles.isonorm16.copyWith(color: Colors.grey),
                                            ),
                                            const BlogClubDivider.normal4(),
                                            Form(
                                              onChanged: () {
                                                //check validation
                                              },
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Username',
                                                    style: BlogStyles.isonorm18,
                                                  ),
                                                  AuthInput(
                                                    textInputAction: TextInputAction.next,
                                                  ),
                                                  BlogClubDivider.normalM(),
                                                  Text(
                                                    'Password',
                                                    style: BlogStyles.isonorm18,
                                                  ),
                                                  AuthInput(
                                                    isPassword: true,
                                                    textInputAction: TextInputAction.next,
                                                  ),
                                                  BlogClubDivider.normalM(),
                                                  Text(
                                                    'Confirm password',
                                                    style: BlogStyles.isonorm18,
                                                  ),
                                                  AuthInput(
                                                    isPassword: true,
                                                    textInputAction: TextInputAction.done,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const BlogClubDivider.normal2(),
                                            BlogClubButton(
                                              title: 'Sing up',
                                              onTap: () {},
                                              buttonColor: Colors.blue.shade700,
                                              textStyle: BlogStyles.isonorm22.copyWith(
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                            const BlogClubDivider.normal2(),
                                            Center(
                                              child: Text(
                                                'Or sing up with'.toUpperCase(),
                                                style: BlogStyles.isonorm18.copyWith(
                                                  color: Colors.grey.shade900,
                                                ),
                                              ),
                                            ),
                                            const BlogClubDivider.normal2(),
                                            Row(
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
                                            ),
                                          ],
                                        );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
