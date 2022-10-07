// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthDeclarativeRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AuthDeclarativePage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          AuthDeclarativeRoute.name,
          path: '/auth-declarative-page',
          children: [
            RouteConfig(
              AuthRoute.name,
              path: 'auth-page',
              parent: AuthDeclarativeRoute.name,
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: AuthDeclarativeRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthDeclarativePage]
class AuthDeclarativeRoute extends PageRouteInfo<void> {
  const AuthDeclarativeRoute({List<PageRouteInfo>? children})
      : super(
          AuthDeclarativeRoute.name,
          path: '/auth-declarative-page',
          initialChildren: children,
        );

  static const String name = 'AuthDeclarativeRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: 'auth-page',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home-page',
        );

  static const String name = 'HomeRoute';
}
