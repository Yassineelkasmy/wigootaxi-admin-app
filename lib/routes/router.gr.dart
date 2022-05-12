// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../auth/ui/login_page.dart' as _i3;
import '../driver/ui/drivers_page.dart' as _i4;
import '../home/ui/home_page.dart' as _i2;
import '../splash/ui/splash_page.dart' as _i1;
import '../submission/domain/submission.dart' as _i10;
import '../submission/ui/document_image_page.dart' as _i7;
import '../submission/ui/submission_details.dart' as _i6;
import '../submission/ui/submissions_page.dart' as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    DriversPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DriversPage());
    },
    SubmissionsPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SubmissionsPage());
    },
    SubmissionDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionDetailsPageRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SubmissionDetailsPage(
              key: args.key, submission: args.submission));
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.DocumentImagePage(
              key: args.key, image: args.image, title: args.title));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashPageRoute.name, path: '/'),
        _i8.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i8.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i8.RouteConfig(DriversPageRoute.name, path: '/drivers-page'),
        _i8.RouteConfig(SubmissionsPageRoute.name, path: '/submissions-page'),
        _i8.RouteConfig(SubmissionDetailsPageRoute.name,
            path: '/submission-details-page'),
        _i8.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i8.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i8.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i9.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.DriversPage]
class DriversPageRoute extends _i8.PageRouteInfo<void> {
  const DriversPageRoute()
      : super(DriversPageRoute.name, path: '/drivers-page');

  static const String name = 'DriversPageRoute';
}

/// generated route for
/// [_i5.SubmissionsPage]
class SubmissionsPageRoute extends _i8.PageRouteInfo<void> {
  const SubmissionsPageRoute()
      : super(SubmissionsPageRoute.name, path: '/submissions-page');

  static const String name = 'SubmissionsPageRoute';
}

/// generated route for
/// [_i6.SubmissionDetailsPage]
class SubmissionDetailsPageRoute
    extends _i8.PageRouteInfo<SubmissionDetailsPageRouteArgs> {
  SubmissionDetailsPageRoute(
      {_i9.Key? key, required _i10.Submission submission})
      : super(SubmissionDetailsPageRoute.name,
            path: '/submission-details-page',
            args: SubmissionDetailsPageRouteArgs(
                key: key, submission: submission));

  static const String name = 'SubmissionDetailsPageRoute';
}

class SubmissionDetailsPageRouteArgs {
  const SubmissionDetailsPageRouteArgs({this.key, required this.submission});

  final _i9.Key? key;

  final _i10.Submission submission;

  @override
  String toString() {
    return 'SubmissionDetailsPageRouteArgs{key: $key, submission: $submission}';
  }
}

/// generated route for
/// [_i7.DocumentImagePage]
class DocumentImagePageRoute
    extends _i8.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute(
      {_i9.Key? key, required String image, required String title})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(
                key: key, image: image, title: title));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs(
      {this.key, required this.image, required this.title});

  final _i9.Key? key;

  final String image;

  final String title;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image, title: $title}';
  }
}
