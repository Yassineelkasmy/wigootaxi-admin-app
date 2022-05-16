import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxiadmin/user/domain/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required List<User> users,
    required bool isLoading,
    required int currentPage,
  }) = _UserState;

  factory UserState.initial() => UserState(
        users: [],
        isLoading: false,
        currentPage: 1,
      );
}
