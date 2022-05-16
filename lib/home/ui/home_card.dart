import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHomeCard({
  required String text,
  required IconData icon,
  required void Function() onPressed,
}) {
  return TextButton(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: Colors.white,
      elevation: 2,
    ),
    onPressed: onPressed,
    child: SizedBox(
      width: 100.w,
      height: 100.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30.w,
          ),
          const SizedBox(height: 2),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    ),
  );
}
