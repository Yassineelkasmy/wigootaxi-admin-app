import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/auth/application/auth_state.dart';
import 'package:wigootaxiadmin/auth/ui/login_page.dart';
import 'package:wigootaxiadmin/providers/auth_provider.dart';
import 'package:wigootaxiadmin/routes/router.gr.dart';
import 'package:wigootaxiadmin/shared/logo.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    ref.listen<AuthState>(authProvider, (_, nextAuthState) {
      nextAuthState.map(
        initial: (_) {},
        authenticated: (_) => AutoRouter.of(context).push(HomePageRoute()),
        unauthenticated: (unAuth) {
          AutoRouter.of(context).push(LoginPageRoute());
        },
      );
    });

    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/intro.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: FlexColor.blue.light.primary.withOpacity(0.8),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: buildLogo(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Vous serez au bon endroit, au bon moment, avec le bon prix",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
