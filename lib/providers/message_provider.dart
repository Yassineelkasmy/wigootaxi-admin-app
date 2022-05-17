import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/messages/application/message_controller.dart';
import 'package:wigootaxiadmin/messages/application/message_state.dart';

final messageProvider =
    StateNotifierProvider.autoDispose<MessageController, MessageState>(
  (ref) {
    final messageController = MessageController();

    return messageController;
  },
);
