// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../auth/ui/login_page.dart' as _i3;
import '../driver/ui/drivers_page.dart' as _i4;
import '../home/ui/home_page.dart' as _i2;
import '../messages/domain/message.dart' as _i14;
import '../messages/ui/message_details_page.dart' as _i8;
import '../messages/ui/messages_page.dart' as _i9;
import '../splash/ui/splash_page.dart' as _i1;
import '../submission/domain/submission.dart' as _i13;
import '../submission/ui/document_image_page.dart' as _i10;
import '../submission/ui/submission_details.dart' as _i7;
import '../submission/ui/submissions_page.dart' as _i6;
import '../user/ui/users_page.dart' as _i5;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomePageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    DriversPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DriversPage());
    },
    UsersPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UsersPage());
    },
    SubmissionsPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SubmissionsPage());
    },
    SubmissionDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionDetailsPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SubmissionDetailsPage(
              key: args.key, submission: args.submission));
    },
    MessageDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MessageDetailsPageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.MessageDetailsPage(key: args.key, message: args.message));
    },
    MessagesPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.MessagesPage());
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.DocumentImagePage(
              key: args.key, image: args.image, title: args.title));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i11.RouteConfig(HomePageRoute.name, path: '/'),
        _i11.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i11.RouteConfig(DriversPageRoute.name, path: '/drivers-page'),
        _i11.RouteConfig(UsersPageRoute.name, path: '/users-page'),
        _i11.RouteConfig(SubmissionsPageRoute.name, path: '/submissions-page'),
        _i11.RouteConfig(SubmissionDetailsPageRoute.name,
            path: '/submission-details-page'),
        _i11.RouteConfig(MessageDetailsPageRoute.name,
            path: '/message-details-page'),
        _i11.RouteConfig(MessagesPageRoute.name, path: '/messages-page'),
        _i11.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i11.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i11.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i11.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i12.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.DriversPage]
class DriversPageRoute extends _i11.PageRouteInfo<void> {
  const DriversPageRoute()
      : super(DriversPageRoute.name, path: '/drivers-page');

  static const String name = 'DriversPageRoute';
}

/// generated route for
/// [_i5.UsersPage]
class UsersPageRoute extends _i11.PageRouteInfo<void> {
  const UsersPageRoute() : super(UsersPageRoute.name, path: '/users-page');

  static const String name = 'UsersPageRoute';
}

/// generated route for
/// [_i6.SubmissionsPage]
class SubmissionsPageRoute extends _i11.PageRouteInfo<void> {
  const SubmissionsPageRoute()
      : super(SubmissionsPageRoute.name, path: '/submissions-page');

  static const String name = 'SubmissionsPageRoute';
}

/// generated route for
/// [_i7.SubmissionDetailsPage]
class SubmissionDetailsPageRoute
    extends _i11.PageRouteInfo<SubmissionDetailsPageRouteArgs> {
  SubmissionDetailsPageRoute(
      {_i12.Key? key, required _i13.Submission submission})
      : super(SubmissionDetailsPageRoute.name,
            path: '/submission-details-page',
            args: SubmissionDetailsPageRouteArgs(
                key: key, submission: submission));

  static const String name = 'SubmissionDetailsPageRoute';
}

class SubmissionDetailsPageRouteArgs {
  const SubmissionDetailsPageRouteArgs({this.key, required this.submission});

  final _i12.Key? key;

  final _i13.Submission submission;

  @override
  String toString() {
    return 'SubmissionDetailsPageRouteArgs{key: $key, submission: $submission}';
  }
}

/// generated route for
/// [_i8.MessageDetailsPage]
class MessageDetailsPageRoute
    extends _i11.PageRouteInfo<MessageDetailsPageRouteArgs> {
  MessageDetailsPageRoute({_i12.Key? key, required _i14.Message message})
      : super(MessageDetailsPageRoute.name,
            path: '/message-details-page',
            args: MessageDetailsPageRouteArgs(key: key, message: message));

  static const String name = 'MessageDetailsPageRoute';
}

class MessageDetailsPageRouteArgs {
  const MessageDetailsPageRouteArgs({this.key, required this.message});

  final _i12.Key? key;

  final _i14.Message message;

  @override
  String toString() {
    return 'MessageDetailsPageRouteArgs{key: $key, message: $message}';
  }
}

/// generated route for
/// [_i9.MessagesPage]
class MessagesPageRoute extends _i11.PageRouteInfo<void> {
  const MessagesPageRoute()
      : super(MessagesPageRoute.name, path: '/messages-page');

  static const String name = 'MessagesPageRoute';
}

/// generated route for
/// [_i10.DocumentImagePage]
class DocumentImagePageRoute
    extends _i11.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute(
      {_i12.Key? key, required String image, required String title})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(
                key: key, image: image, title: title));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs(
      {this.key, required this.image, required this.title});

  final _i12.Key? key;

  final String image;

  final String title;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image, title: $title}';
  }
}
