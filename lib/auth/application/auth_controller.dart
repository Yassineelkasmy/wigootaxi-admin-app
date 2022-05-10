import 'package:wigootaxiadmin/auth/application/auth_event.dart';
import 'package:wigootaxiadmin/auth/application/auth_state.dart';
import 'package:wigootaxiadmin/auth/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthController extends StateNotifier<AuthState> {
  AuthController(
    this._authService,
  ) : super(const AuthState.initial());
  final FireBaseAuthService _authService;

  Future mapEventToState(AuthEvent authEvent) {
    return authEvent.map(
      authCheckRequested: (_) async {
        final userOption = await _authService.getSignedUser();
        userOption.fold(() {
          state = const AuthState.unauthenticated();
        }, (user) async {
          state = AuthState.authenticated(user);
        });
      },
      signedOut: (_) async {
        state = const AuthState.unauthenticated();
      },
    );
  }
}
