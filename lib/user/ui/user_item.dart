import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/driver/domain/driver.dart';

class UserItem extends StatelessWidget {
  UserItem({Key? key, required this.driver}) : super(key: key);
  final Driver driver;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 15.w,
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.person),
              10.w.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    driver.username,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  2.h.verticalSpace,
                  Text(
                    driver.phone,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    driver.email,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  2.h.verticalSpace,
                  Text(
                    DateFormat('yyyy-MM-dd hh:mm').format(driver.ts),
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
