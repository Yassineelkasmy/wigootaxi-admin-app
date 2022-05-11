import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHomeCard({
  required String text,
  required Icon icon,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 15.w,
      ),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            10.w.horizontalSpace,
            Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            )
          ],
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    ),
  );
}
