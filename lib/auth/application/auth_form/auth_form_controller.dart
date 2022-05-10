import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/auth/application/auth_controller.dart';
import 'package:wigootaxiadmin/auth/application/auth_event.dart';
import 'package:wigootaxiadmin/auth/application/auth_form/auth_form_event.dart';
import 'package:wigootaxiadmin/auth/application/auth_form/auth_form_state.dart';
import 'package:wigootaxiadmin/auth/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthFormController extends StateNotifier<AuthFormState> {
  AuthFormController(this._authStateController, this._authService)
      : super(AuthFormState.initial());
  final FireBaseAuthService _authService;
  final AuthController _authStateController;
  void checkAuthState() {
    _authStateController.mapEventToState(const AuthEvent.authCheckRequested());
  }

  Future mapEventToState(AuthFormEvent event) {
    return event.map(
      signInWithEmailAndPasswordPressed: (event) async {
        final authFailureOrSuccess =
            await _authService.signInWithEmailAndPassword(
          emailAddress: event.email,
          password: event.password,
        );
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        checkAuthState();
      },
      signOutPressed: (event) async {
        await _authService.signOut();
        checkAuthState();
      },
    );
  }
}
