import 'package:auto_route/auto_route.dart';
import 'package:blog_club/di/getters.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_cubit.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_state.dart';
import 'package:blog_club/presentation/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthDeclarativePage extends StatefulWidget {
  const AuthDeclarativePage({Key? key}) : super(key: key);

  @override
  State<AuthDeclarativePage> createState() => _AuthDeclarativePageState();
}

class _AuthDeclarativePageState extends State<AuthDeclarativePage> {
  late AuthenticationStatusCubit _cubit;

  @override
  void initState() {
    _cubit = authenticationStatusCubit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationStatusCubit, AuthenticationStatusState>(
      bloc: _cubit,
      builder: (context, state) {
        return AutoRouter.declarative(
          routes: (_) {
            return [
              state.isAuthorised ? const HomeRoute() : const AuthRoute(),
            ];
          },
        );
      },
    );
  }
}
