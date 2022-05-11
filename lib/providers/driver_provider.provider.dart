import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/application/driver_controller.dart';
import 'package:wigootaxiadmin/driver/application/driver_state.dart';
import 'package:wigootaxiadmin/driver/services/driver_service.dart';

final driverProivder = StateNotifierProvider<DriverController, DriverState>(
  (ref) {
    final driverController = DriverController(
      DriverService(FirebaseFirestore.instance),
    );

    return driverController;
  },
);
