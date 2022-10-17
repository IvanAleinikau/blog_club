// coverage:ignore-file
import 'package:auto_route/auto_route.dart';
import 'package:blog_club/presentation/page/auth/auth_declarative_page.dart';
import 'package:blog_club/presentation/page/auth/auth_page.dart';
import 'package:blog_club/presentation/page/home/home_page.dart';
import 'package:blog_club/presentation/page/splash/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(
      page: AuthDeclarativePage,
      name: 'AuthDeclarativeRoute',
      children: [
        CustomRoute(
          page: AuthPage,
          name: 'AuthRoute',
        ),
      ],
    ),
    CustomRoute(
      page: HomePage,
      name: 'HomeRoute',
    ),
  ],
)
class AppRouter extends _$AppRouter {}

final router = AppRouter();
final routerContext = router.navigatorKey.currentContext;

GlobalKey<NavigatorState> get navigatorKey => router.navigatorKey;
