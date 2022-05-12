import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';
import 'package:wigootaxiadmin/submission/domain/submission_failure.dart';

class SubmissionService {
  SubmissionService(this.firestore) {
    collectionReference = firestore.collection('submissions');
  }

  final FirebaseFirestore firestore;

  late CollectionReference collectionReference;

  Future<Either<SubmissionFailure, List<Submission>>> getSubmissions() async {
    try {
      final data =
          await collectionReference.orderBy(FieldPath.documentId).get();
      final requests = data.docs
          .map(
            (doc) => Submission.fromJson((doc.data() as Map<String, dynamic>)
              ..putIfAbsent('id', () => doc.id)),
          )
          .toList();
      return right(requests);
    } catch (_) {
      return left(SubmissionFailure.serverError());
    }
  }

  Future<Either<SubmissionFailure, Submission>> getSubmission(
    String userid,
  ) async {
    try {
      final doc = await collectionReference.doc(userid).get();

      final data = (doc.data() as Map<String, dynamic>)
        ..putIfAbsent('id', () => doc.id);
      final submission = Submission.fromJson(data);
      return right(submission);
    } catch (e) {
      return left(const SubmissionFailure.serverError());
    }
  }

  Future<Either<SubmissionFailure, Unit>> changeSubmissionStatus(
    String id,
    String status,
  ) async {
    try {
      await collectionReference.doc(id).update({"status": status});
      return right(unit);
    } catch (e) {
      return left(const SubmissionFailure.serverError());
    }
  }
}
