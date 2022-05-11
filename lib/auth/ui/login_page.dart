import 'package:flutter/material.dart';
import 'package:wigootaxiadmin/auth/application/auth_form/auth_form_event.dart';
import 'package:wigootaxiadmin/providers/auth_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends HookConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final loginForm = FormGroup(
    {
      'username': FormControl<String>(validators: [
        Validators.required,
      ]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(6),
      ]),
    },
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormState = ref.watch(authFormProvider);
    final authFormController = ref.watch(authFormProvider.notifier);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReactiveForm(
              formGroup: loginForm,
              child: Column(
                children: [
                  ReactiveTextField(
                    formControlName: 'username',
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      hintText: 'username',
                    ),
                  ),
                  20.h.verticalSpace,
                  ReactiveTextField(
                    formControlName: 'password',
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      hintText: 'password',
                    ),
                  ),
                ],
              ),
            ),
            20.h.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  if (loginForm.valid) {
                    authFormController.mapEventToState(
                      AuthFormEvent.signInWithEmailAndPasswordPressed(
                        "${loginForm.value['username']}@wigootaxi.ma",
                        loginForm.value['password'].toString(),
                      ),
                    );
                  }
                },
                child: Text(
                  "Login",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
