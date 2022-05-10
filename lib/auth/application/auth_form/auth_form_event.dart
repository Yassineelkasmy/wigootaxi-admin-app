import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_event.freezed.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.signInWithEmailAndPasswordPressed(
      String email, String password) = SignInWithEmailAndPasswordPressed;

  const factory AuthFormEvent.signOutPressed() = SignOutPressed;
}
