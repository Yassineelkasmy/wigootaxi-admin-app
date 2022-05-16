import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/user/application/user_event.dart';
import 'package:wigootaxiadmin/user/application/user_state.dart';
import 'package:wigootaxiadmin/user/services/users_service.dart';

class UserController extends StateNotifier<UserState> {
  UserController(this.driverService) : super(UserState.initial()) {
    mapEventToState(const UserEvent.fetchRequested());
  }
  final UserService driverService;

  Future mapEventToState(UserEvent event) {
    return event.map(
      fetchRequested: (event) async {
        state = state.copyWith(isLoading: true);
        final driversOrFailure = await driverService.getDrivers();
        driversOrFailure.fold(
          (failure) => null,
          (users) => state = state.copyWith(users: users),
        );
        print(state.users.length);
        state = state.copyWith(isLoading: false);
      },
    );
  }
}
