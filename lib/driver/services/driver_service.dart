import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/driver/domain/driver.dart';
import 'package:wigootaxiadmin/shared/firestore/firestore_failures.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';

class DriverService {
  DriverService(this.firestore) {
    collectionReference = firestore.collection('drivers');
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

  Future<Either<FireStoreFailure, List<Driver>>> getDrivers() async {
    try {
      final data = await collectionReference
          .where('status', isEqualTo: 'accepted')
          .orderBy(FieldPath.documentId)
          .get();
      final requests = data.docs
          .map(
            (doc) => Driver.fromJson((doc.data() as Map<String, dynamic>)
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
