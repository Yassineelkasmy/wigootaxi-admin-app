import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/application/driver_event.dart';
import 'package:wigootaxiadmin/driver/application/driver_state.dart';
import 'package:wigootaxiadmin/driver/services/driver_service.dart';

class DriverController extends StateNotifier<DriverState> {
  DriverController(this.driverService) : super(DriverState.initial()) {
    mapEventToState(const DriverEvent.fetchRequested());
  }
  final DriverService driverService;

  Future mapEventToState(DriverEvent event) {
    return event.map(
      fetchRequested: (event) async {
        state = state.copyWith(isLoading: true);
        final driversOrFailure = await driverService.getDrivers();
        driversOrFailure.fold(
          (failure) => null,
          (drivers) => state = state.copyWith(drivers: drivers),
        );
        state = state.copyWith(isLoading: false);
      },
    );
  }
}
