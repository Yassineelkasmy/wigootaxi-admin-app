import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxiadmin/messages/domain/message.dart';
import 'package:wigootaxiadmin/messages/failure/firestore_failure.dart';

class MessageService {
  Future<Either<FireStoreFailure, Unit>> sendMessage(Message message) async {
    try {
      await FirebaseFirestore.instance.collection('messages').doc().set({
        'message': message.text,
        'subject': message.subject,
        'attachment': message.attachment,
      });
      return right(unit);
    } catch (e) {
      return left(FireStoreFailure.serverError());
    }
  }

  Future<Either<FireStoreFailure, List<Message>>> getMessages() async {
    try {
      final data = await FirebaseFirestore.instance
          .collection('messages')
          .orderBy(FieldPath.documentId)
          .get();
      final requests = data.docs
          .map(
            (doc) => Message.fromJson((doc.data() as Map<String, dynamic>)
              ..putIfAbsent('id', () => doc.id)),
          )
          .toList();
      return right(requests);
    } catch (_) {
      return left(const FireStoreFailure.serverError());
    }
  }
}
