import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:wigootaxiadmin/auth/application/auth_controller.dart';
import 'package:wigootaxiadmin/auth/application/auth_event.dart';
import 'package:wigootaxiadmin/auth/application/auth_form/auth_form_controller.dart';
import 'package:wigootaxiadmin/auth/application/auth_form/auth_form_state.dart';
import 'package:wigootaxiadmin/auth/application/auth_state.dart';
import 'package:wigootaxiadmin/auth/domain/user.dart';
import 'package:wigootaxiadmin/auth/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAuthServiceProvider = Provider<FireBaseAuthService>((ref) {
  final firebaseAuth = FirebaseAuth.instance;
  final fireBaseAuthService = FireBaseAuthService(firebaseAuth);
  return fireBaseAuthService;
});

final authProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  final fireBaseAuthService = ref.watch(firebaseAuthServiceProvider);

  AuthController authController = AuthController(fireBaseAuthService);
  return authController..mapEventToState(const AuthEvent.authCheckRequested());
});

final authFormProvider =
    StateNotifierProvider<AuthFormController, AuthFormState>(
  (ref) {
    final fireBaseAuthService = ref.watch(firebaseAuthServiceProvider);
    final authController = ref.watch(authProvider.notifier);

    final authFormController = AuthFormController(
      authController,
      fireBaseAuthService,
    );
    return authFormController;
  },
);

final userProvider = Provider.autoDispose<User?>((ref) {
  final authState = ref.watch(authProvider);
  return authState.maybeMap(
    authenticated: (authenticated) => authenticated.user,
    orElse: () => null,
  );
});
