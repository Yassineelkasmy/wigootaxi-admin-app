import 'package:auto_route/annotations.dart';
import 'package:wigootaxiadmin/auth/ui/login_page.dart';
import 'package:wigootaxiadmin/driver/ui/drivers_page.dart';
import 'package:wigootaxiadmin/home/ui/home_page.dart';
import 'package:wigootaxiadmin/splash/ui/splash_page.dart';
import 'package:wigootaxiadmin/submission/ui/document_image_page.dart';
import 'package:wigootaxiadmin/submission/ui/submission_details.dart';
import 'package:wigootaxiadmin/submission/ui/submissions_page.dart';
import 'package:wigootaxiadmin/user/ui/users_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage),
  AutoRoute(page: HomePage, initial: true),
  AutoRoute(page: LoginPage),
  AutoRoute(page: DriversPage),
  AutoRoute(page: UsersPage),
  AutoRoute(page: SubmissionsPage),
  AutoRoute(page: SubmissionDetailsPage),
  AutoRoute(page: DocumentImagePage),
])
class $AppRouter {}
