import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/application/driver_controller.dart';
import 'package:wigootaxiadmin/user/application/user_controller.dart';
import 'package:wigootaxiadmin/user/application/user_state.dart';
import 'package:wigootaxiadmin/user/services/users_service.dart';

final usersProvider = StateNotifierProvider<UserController, UserState>(
  (ref) {
    final usersController = UserController(
      UserService(FirebaseFirestore.instance),
    );

    return usersController;
  },
);
