import 'package:blog_club/common/widget/core/blog_club_button.dart';
import 'package:blog_club/common/widget/core/blog_club_divider.dart';
import 'package:blog_club/common/widget/core/focus_layout.dart';
import 'package:blog_club/presentation/page/auth/login_page.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_button.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_input.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_social_media.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';

const Key SECOND_AUTH_PAGE_FORM = Key('SECOND_AUTH_PAGE_FORM');

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
      backgroundColor: BlogColors.firstBackgroundColorAuthPage,
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
                  width: BlogDimensions.authPageLogoWeight,
                  height: BlogDimensions.authPageLogoHeight,
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(
                    BlogDimensions.borderRadiusAuthPart,
                  ),
                ),
                child: ColoredBox(
                  color: BlogColors.secondBackgroundColorAuthPage,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: BlogDimensions.bigPadding,
                        ),
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
                        padding: const EdgeInsets.only(
                          top: BlogDimensions.topPaddingAuthPart,
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(
                              BlogDimensions.borderRadiusAuthPart,
                            ),
                          ),
                          child: ColoredBox(
                            color: BlogColors.firstBackgroundColorAuthPage,
                            child: Padding(
                              padding: const EdgeInsets.all(
                                BlogDimensions.contentPaddingAuthPart,
                              ),
                              child: ValueListenableBuilder(
                                valueListenable: _isLogin,
                                builder: (_, bool isLogin, __) {
                                  return isLogin ? const LoginPage() : const _RegisterPart();
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

class _RegisterPart extends StatelessWidget {
  const _RegisterPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          style: BlogStyles.subtitleAuthPage,
        ),
        const BlogClubDivider.normal4(),
        Form(
          key: SECOND_AUTH_PAGE_FORM,
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
                key: Key('EMAIL_REG'),
                textInputAction: TextInputAction.next,
              ),
              BlogClubDivider.normalM(),
              Text(
                'Password',
                style: BlogStyles.isonorm18,
              ),
              AuthInput(
                key: Key('PASSWORD_INPUT'),
                isPassword: true,
                textInputAction: TextInputAction.next,
              ),
              BlogClubDivider.normalM(),
              Text(
                'Confirm password',
                style: BlogStyles.isonorm18,
              ),
              AuthInput(
                key: Key('CONFIRM_PASSWORD_INPUT'),
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
          buttonColor: BlogColors.secondBackgroundColorAuthPage,
          textStyle: BlogStyles.buttonAuthPage,
        ),
        const BlogClubDivider.normal2(),
        Center(
          child: Text(
            'Or sing up with'.toUpperCase(),
            style: BlogStyles.orSingInWithTitle,
          ),
        ),
        const BlogClubDivider.normal2(),
        const AuthSocialMedia(),
      ],
    );
  }
}
