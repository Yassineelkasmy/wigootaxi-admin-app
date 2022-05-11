import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';

part 'submission_state.freezed.dart';

@freezed
class SubmissionState with _$SubmissionState {
  const factory SubmissionState({
    required List<Submission> submissions,
    required bool isLoading,
    required int currentPage,
  }) = _SubmissionState;

  factory SubmissionState.initial() => SubmissionState(
        submissions: [],
        isLoading: false,
        currentPage: 1,
      );
}
