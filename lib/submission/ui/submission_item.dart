import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wigootaxiadmin/routes/router.gr.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';

class SubmissionItem extends StatelessWidget {
  SubmissionItem({Key? key, required this.submission}) : super(key: key);
  final Submission submission;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20.h,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 15.w,
          ),
        ),
        onPressed: () {
          AutoRouter.of(context)
              .push(SubmissionDetailsPageRoute(submission: submission));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.file_copy),
                10.w.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      submission.username,
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
      ),
    );
  }
}
