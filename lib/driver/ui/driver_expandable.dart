import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/driver/domain/driver.dart';
import 'package:wigootaxiadmin/user/domain/user.dart';

class DriverExpandable extends StatelessWidget {
  DriverExpandable({Key? key, required this.driver}) : super(key: key);
  final Driver driver;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.h),
      child: ExpansionTile(
        expandedAlignment: Alignment.center,
        title: Text(
          driver.username,
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
                driver.email,
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
                driver.phone,
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
                DateFormat('yyyy-MM-dd hh:mm').format(driver.ts),
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
