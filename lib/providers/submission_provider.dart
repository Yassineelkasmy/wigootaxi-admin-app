import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/driver/application/driver_controller.dart';
import 'package:wigootaxiadmin/submission/application/submission_controller.dart';
import 'package:wigootaxiadmin/submission/application/submission_state.dart';
import 'package:wigootaxiadmin/submission/services/submission_service.dart';

final submissionProvider =
    StateNotifierProvider<SubmissionController, SubmissionState>(
  (ref) {
    final submissionController = SubmissionController(
      SubmissionService(FirebaseFirestore.instance),
    );

    return submissionController;
  },
);
