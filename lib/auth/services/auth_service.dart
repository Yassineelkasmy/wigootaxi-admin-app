import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/auth/domain/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

import '../domain/auth_failure.dart';

class FireBaseAuthService {
  FireBaseAuthService(this._fireBaseAuth);

  final FirebaseAuth _fireBaseAuth;

  Future<Option<User>> getSignedUser() async {
    final user = _fireBaseAuth.currentUser;
    if (user == null) {
      return none();
    } else {
      return optionOf(
        User(
          uid: user.uid,
          email: user.email!,
        ),
      );
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _fireBaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidCredentials());
      }
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      }
      return left(const AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _fireBaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future<void> signOut() async {
    await _fireBaseAuth.signOut();
  }
}
