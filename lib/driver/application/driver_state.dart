import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxiadmin/driver/domain/driver.dart';

part 'driver_state.freezed.dart';

@freezed
class DriverState with _$DriverState {
  const factory DriverState({
    required List<Driver> drivers,
    required bool isLoading,
    required int currentPage,
  }) = _DriverState;

  factory DriverState.initial() => DriverState(
        drivers: [],
        isLoading: false,
        currentPage: 1,
      );
}
