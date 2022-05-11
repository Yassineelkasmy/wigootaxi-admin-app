import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/providers/driver_provider.provider.dart';
import 'package:wigootaxiadmin/theme/spacings.dart';

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
        padding: kPadding,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
