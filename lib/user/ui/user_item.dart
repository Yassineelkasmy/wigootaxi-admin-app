import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/user/domain/user.dart';

class UserItem extends StatelessWidget {
  UserItem({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: ElevatedButton(
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
                      user.username,
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    2.h.verticalSpace,
                    Text(
                      user.phone ?? '-----',
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
                      DateFormat('yyyy-MM-dd hh:mm').format(user.ts),
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
      ),
    );
  }
}
