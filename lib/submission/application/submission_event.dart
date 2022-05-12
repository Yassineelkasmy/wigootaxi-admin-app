import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';

part 'submission_event.freezed.dart';

@freezed
class SubmissionEvent with _$SubmissionEvent {
  const factory SubmissionEvent.fetchRequested() = FetchRequested;
  const factory SubmissionEvent.statusChanged(String status, String id) =
      StatusChanged;
}
