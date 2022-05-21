import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/ui/driver_expandable.dart';
import 'package:wigootaxiadmin/driver/ui/driver_item.dart';
import 'package:wigootaxiadmin/providers/driver_provider.provider.dart';

class DriversPage extends HookConsumerWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final driverState = ref.watch(driverProivder);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chauffeurs'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: ListView.builder(
          itemCount: driverState.drivers.length,
          itemBuilder: (context, index) {
            return DriverExpandable(driver: driverState.drivers[index]);
          },
        ),
      ),
    );
  }
}
