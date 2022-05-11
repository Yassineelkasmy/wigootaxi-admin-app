// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../auth/ui/login_page.dart' as _i3;
import '../driver/ui/drivers_page.dart' as _i4;
import '../home/ui/home_page.dart' as _i2;
import '../splash/ui/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomePageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    DriversPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DriversPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashPageRoute.name, path: '/'),
        _i5.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i5.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i5.RouteConfig(DriversPageRoute.name, path: '/drivers-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i5.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i6.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.DriversPage]
class DriversPageRoute extends _i5.PageRouteInfo<void> {
  const DriversPageRoute()
      : super(DriversPageRoute.name, path: '/drivers-page');

  static const String name = 'DriversPageRoute';
}
