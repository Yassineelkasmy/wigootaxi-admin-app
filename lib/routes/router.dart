import 'package:auto_route/annotations.dart';
import 'package:wigootaxiadmin/home/ui/home_page.dart';
import 'package:wigootaxiadmin/splash/ui/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: HomePage),
])
class $AppRouter {}
