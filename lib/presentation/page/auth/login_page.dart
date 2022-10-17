import 'package:auto_route/auto_route.dart';
import 'package:blog_club/common/logger.dart';
import 'package:blog_club/common/utils/validator_service.dart';
import 'package:blog_club/common/widget/core/blog_club_button.dart';
import 'package:blog_club/common/widget/core/blog_club_divider.dart';
import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/domain/model/login/login_params.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_cubit.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_state.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_circular_progress_indicator.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_input.dart';
import 'package:blog_club/presentation/page/auth/widgets/auth_social_media.dart';
import 'package:blog_club/presentation/route/router.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  final loginEmailInputKey = const Key('loginEmailInputKey');
  final loginPasswordInputKey = const Key('loginPasswordInputKey');

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _focusEmail = FocusNode();
  final FocusNode _focusPassword = FocusNode();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusEmail.dispose();
    _focusPassword.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationStatusCubit, AuthenticationStatusState>(
      listener: listener,
      builder: (context, state) {
        return Column(
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
              style: BlogStyles.subtitleAuthPage,
            ),
            const BlogClubDivider.normal4(),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: BlogStyles.isonorm18,
                  ),
                  AuthInput(
                    key: widget.loginEmailInputKey,
                    textInputAction: TextInputAction.next,
                    controller: _email,
                    focusNode: _focusEmail,
                    validator: ValidationService.validateEmail,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(51),
                    ],
                  ),
                  const BlogClubDivider.normalM(),
                  const Text(
                    'Password',
                    style: BlogStyles.isonorm18,
                  ),
                  AuthInput(
                    key: widget.loginPasswordInputKey,
                    isPassword: true,
                    textInputAction: TextInputAction.done,
                    controller: _password,
                    focusNode: _focusPassword,
                    validator: ValidationService.validatePassword,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(51),
                    ],
                  ),
                ],
              ),
            ),
            const BlogClubDivider.normal2(),
            !state.isLoading
                ? BlogClubButton(
                    title: 'Login',
                    onTap: () {
                      context.read<AuthenticationStatusCubit>().loginWithEmail(
                            LoginParams(
                              email: _email.value.text,
                              password: _password.value.text,
                            ),
                          );
                    },
                    buttonColor: BlogColors.secondBackgroundColorAuthPage,
                    textStyle: BlogStyles.buttonAuthPage,
                  )
                : const BlogClubButton.withChild(
                    buttonColor: BlogColors.secondBackgroundColorAuthPage,
                    child: AuthCircularProgressIndicator(),
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
                  borderRadius: BorderRadius.circular(
                    BlogDimensions.smallBorderRadius,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: BlogDimensions.normalQ,
                    ),
                    child: Text(
                      'Reset here',
                      style: BlogStyles.resetHereButton,
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
                style: BlogStyles.orSingInWithTitle,
              ),
            ),
            const BlogClubDivider.normal2(),
            const AuthSocialMedia(),
          ],
        );
      },
    );
  }

  void _checkValidation() {
    if (ValidationService.validateEmail(_email.value.text) != null &&
        ValidationService.validatePassword(_password.value.text) != null) {
      logger.i('OK!');
    }
  }

  void listener(BuildContext context, AuthenticationStatusState state) {
    if (state.isAuthorised) {
      _email.clear();
      _password.clear();
      context.router.push(const HomeRoute());
    }
  }
}
