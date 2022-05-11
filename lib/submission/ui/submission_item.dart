import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';

class SubmissionItem extends StatelessWidget {
  SubmissionItem({Key? key, required this.submission}) : super(key: key);
  final Submission submission;

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
                    submission.type,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  2.h.verticalSpace,
                  Text(
                    submission.phone,
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
                    submission.email,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  2.h.verticalSpace,
                  Text(
                    DateFormat('yyyy-MM-dd hh:mm').format(submission.ts),
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
