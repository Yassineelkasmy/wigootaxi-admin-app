import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/ui/driver_item.dart';
import 'package:wigootaxiadmin/providers/user.provider.dart';
import 'package:wigootaxiadmin/user/ui/user_item.dart';
import 'package:wigootaxiadmin/user/ui/user_item_expandable.dart';

class UsersPage extends HookConsumerWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersState = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Utilisateurs'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: ListView.builder(
          itemCount: usersState.users.length,
          itemBuilder: (context, index) {
            return UserItemExpandable(user: usersState.users[index]);
          },
        ),
      ),
    );
  }
}
