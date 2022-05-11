import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_event.freezed.dart';

@freezed
class SubmissionEvent with _$SubmissionEvent {
  const factory SubmissionEvent.fetchRequested() = FetchRequested;
}
