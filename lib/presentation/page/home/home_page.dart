import 'package:auto_route/auto_route.dart';
import 'package:blog_club/common/constants/nothing.dart';
import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/di/getters.dart';
import 'package:blog_club/presentation/route/router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SplashArea(
          child: const Text('logout'),
          onTap: () {
            logoutUseCase.call(Nothing());
            Future.delayed(const Duration(seconds: 3), () {
              context.router.push(const AuthDeclarativeRoute());
            });
          },
        ),
      ),
    );
  }
}
