import 'package:auto_route/annotations.dart';
import 'package:wigootaxiadmin/auth/ui/login_page.dart';
import 'package:wigootaxiadmin/driver/ui/drivers_page.dart';
import 'package:wigootaxiadmin/home/ui/home_page.dart';
import 'package:wigootaxiadmin/splash/ui/splash_page.dart';
import 'package:wigootaxiadmin/submission/ui/submissions_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: HomePage),
  AutoRoute(page: LoginPage),
  AutoRoute(page: DriversPage),
  AutoRoute(page: SubmissionsPage),
])
class $AppRouter {}
