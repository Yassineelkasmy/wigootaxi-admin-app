import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/drivers/domain/driver.dart';
import 'package:wigootaxiadmin/shared/firestore/firestore_failures.dart';

class DriverService {
  DriverService(this.firestore) {
    collectionReference = firestore.collection('users');
  }

  final FirebaseFirestore firestore;

  late CollectionReference collectionReference;

  Future<Either<FireStoreFailure, List<Driver>>> getSubmissions() async {
    try {
      final data =
          await collectionReference.orderBy(FieldPath.documentId).get();
      final requests = data.docs
          .map(
            (doc) => Driver.fromJson((doc.data() as Map<String, dynamic>)
              ..putIfAbsent('id', () => doc.id)),
          )
          .toList();
      return right(requests);
    } catch (_) {
      return left(const FireStoreFailure.serverError());
    }
  }
}
