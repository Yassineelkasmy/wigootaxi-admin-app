// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth/ui/login_page.dart' as _i3;
import '../driver/ui/drivers_page.dart' as _i4;
import '../home/ui/home_page.dart' as _i2;
import '../splash/ui/splash_page.dart' as _i1;
import '../submission/ui/submissions_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    DriversPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DriversPage());
    },
    SubmissionsPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SubmissionsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i6.RouteConfig(DriversPageRoute.name, path: '/drivers-page'),
        _i6.RouteConfig(SubmissionsPageRoute.name, path: '/submissions-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i7.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.DriversPage]
class DriversPageRoute extends _i6.PageRouteInfo<void> {
  const DriversPageRoute()
      : super(DriversPageRoute.name, path: '/drivers-page');

  static const String name = 'DriversPageRoute';
}

/// generated route for
/// [_i5.SubmissionsPage]
class SubmissionsPageRoute extends _i6.PageRouteInfo<void> {
  const SubmissionsPageRoute()
      : super(SubmissionsPageRoute.name, path: '/submissions-page');

  static const String name = 'SubmissionsPageRoute';
}
