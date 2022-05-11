import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxiadmin/driver/domain/driver.dart';

class DriverItem extends StatelessWidget {
  DriverItem({Key? key, required this.driver}) : super(key: key);
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
                      fontSize: 12.sp,
                    ),
                  )
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
