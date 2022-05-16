// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../auth/ui/login_page.dart' as _i3;
import '../driver/ui/drivers_page.dart' as _i4;
import '../home/ui/home_page.dart' as _i2;
import '../splash/ui/splash_page.dart' as _i1;
import '../submission/domain/submission.dart' as _i11;
import '../submission/ui/document_image_page.dart' as _i8;
import '../submission/ui/submission_details.dart' as _i7;
import '../submission/ui/submissions_page.dart' as _i6;
import '../user/ui/users_page.dart' as _i5;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    DriversPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DriversPage());
    },
    UsersPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UsersPage());
    },
    SubmissionsPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SubmissionsPage());
    },
    SubmissionDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionDetailsPageRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SubmissionDetailsPage(
              key: args.key, submission: args.submission));
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.DocumentImagePage(
              key: args.key, image: args.image, title: args.title));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i9.RouteConfig(HomePageRoute.name, path: '/'),
        _i9.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i9.RouteConfig(DriversPageRoute.name, path: '/drivers-page'),
        _i9.RouteConfig(UsersPageRoute.name, path: '/users-page'),
        _i9.RouteConfig(SubmissionsPageRoute.name, path: '/submissions-page'),
        _i9.RouteConfig(SubmissionDetailsPageRoute.name,
            path: '/submission-details-page'),
        _i9.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i9.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i9.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i10.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.DriversPage]
class DriversPageRoute extends _i9.PageRouteInfo<void> {
  const DriversPageRoute()
      : super(DriversPageRoute.name, path: '/drivers-page');

  static const String name = 'DriversPageRoute';
}

/// generated route for
/// [_i5.UsersPage]
class UsersPageRoute extends _i9.PageRouteInfo<void> {
  const UsersPageRoute() : super(UsersPageRoute.name, path: '/users-page');

  static const String name = 'UsersPageRoute';
}

/// generated route for
/// [_i6.SubmissionsPage]
class SubmissionsPageRoute extends _i9.PageRouteInfo<void> {
  const SubmissionsPageRoute()
      : super(SubmissionsPageRoute.name, path: '/submissions-page');

  static const String name = 'SubmissionsPageRoute';
}

/// generated route for
/// [_i7.SubmissionDetailsPage]
class SubmissionDetailsPageRoute
    extends _i9.PageRouteInfo<SubmissionDetailsPageRouteArgs> {
  SubmissionDetailsPageRoute(
      {_i10.Key? key, required _i11.Submission submission})
      : super(SubmissionDetailsPageRoute.name,
            path: '/submission-details-page',
            args: SubmissionDetailsPageRouteArgs(
                key: key, submission: submission));

  static const String name = 'SubmissionDetailsPageRoute';
}

class SubmissionDetailsPageRouteArgs {
  const SubmissionDetailsPageRouteArgs({this.key, required this.submission});

  final _i10.Key? key;

  final _i11.Submission submission;

  @override
  String toString() {
    return 'SubmissionDetailsPageRouteArgs{key: $key, submission: $submission}';
  }
}

/// generated route for
/// [_i8.DocumentImagePage]
class DocumentImagePageRoute
    extends _i9.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute(
      {_i10.Key? key, required String image, required String title})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(
                key: key, image: image, title: title));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs(
      {this.key, required this.image, required this.title});

  final _i10.Key? key;

  final String image;

  final String title;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image, title: $title}';
  }
}
