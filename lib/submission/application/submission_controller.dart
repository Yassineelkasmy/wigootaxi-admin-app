import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/submission/application/submission_event.dart';
import 'package:wigootaxiadmin/submission/application/submission_state.dart';
import 'package:wigootaxiadmin/submission/services/submission_service.dart';

class SubmissionController extends StateNotifier<SubmissionState> {
  SubmissionController(this.submissionService)
      : super(SubmissionState.initial()) {
    mapEventToState(const SubmissionEvent.fetchRequested());
  }
  final SubmissionService submissionService;

  Future mapEventToState(SubmissionEvent event) {
    return event.map(
      fetchRequested: (event) async {
        state = state.copyWith(isLoading: true);
        final driversOrFailure = await submissionService.getSubmissions();
        driversOrFailure.fold(
          (failure) => null,
          (submissions) => state = state.copyWith(submissions: submissions),
        );
        print(state.submissions.length);
        state = state.copyWith(isLoading: false);
      },
      statusChanged: (event) async {
        final successOrFailure = await submissionService.changeSubmissionStatus(
          event.id,
          event.status,
        );
      },
    );
  }
}
