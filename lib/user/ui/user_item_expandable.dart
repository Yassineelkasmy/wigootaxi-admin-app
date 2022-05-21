import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/user/domain/user.dart';

class UserItemExpandable extends StatelessWidget {
  UserItemExpandable({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.h),
      child: ExpansionTile(
        expandedAlignment: Alignment.center,
        title: Text(
          user.username,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        childrenPadding: EdgeInsets.symmetric(vertical: 5.h),
        leading: Icon(
          Icons.man,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail),
              10.w.horizontalSpace,
              Text(
                user.email,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          10.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              10.w.horizontalSpace,
              Text(
                user.phone ?? '-----',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          10.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_month),
              10.w.horizontalSpace,
              Text(
                DateFormat('yyyy-MM-dd hh:mm').format(user.ts),
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
