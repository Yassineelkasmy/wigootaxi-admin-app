import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/ui/driver_item.dart';
import 'package:wigootaxiadmin/providers/driver_provider.provider.dart';
import 'package:wigootaxiadmin/providers/submission_provider.dart';
import 'package:wigootaxiadmin/submission/ui/submission_item.dart';

class SubmissionsPage extends HookConsumerWidget {
  const SubmissionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submissionState = ref.watch(submissionProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Demandes'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: ListView.builder(
          itemCount: submissionState.submissions.length,
          itemBuilder: (context, index) {
            return SubmissionItem(
                submission: submissionState.submissions[index]);
          },
        ),
      ),
    );
  }
}
