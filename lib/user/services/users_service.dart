import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/shared/firestore/firestore_failures.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';
import 'package:wigootaxiadmin/user/domain/user.dart';

class UserService {
  UserService(this.firestore) {
    collectionReference = firestore.collection('users');
  }

  final FirebaseFirestore firestore;

  late CollectionReference collectionReference;

  Future<Either<FireStoreFailure, List<Submission>>> getSubmissions() async {
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
      return left(const FireStoreFailure.serverError());
    }
  }

  Future<Either<FireStoreFailure, List<User>>> getDrivers() async {
    try {
      final data =
          await collectionReference.orderBy(FieldPath.documentId).get();
      final requests = data.docs
          .map(
            (doc) => User.fromJson((doc.data() as Map<String, dynamic>)
              ..putIfAbsent('id', () => doc.id)),
          )
          .toList();
      return right(requests);
    } catch (_) {
      print(_);
      return left(const FireStoreFailure.serverError());
    }
  }
}
