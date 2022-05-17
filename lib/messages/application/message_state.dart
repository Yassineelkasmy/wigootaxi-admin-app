import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxiadmin/messages/domain/message.dart';

part 'message_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required bool sent,
    required bool isLoading,
    required List<Message> messages,
  }) = _MessageState;

  factory MessageState.initial() => MessageState(
        sent: false,
        isLoading: false,
        messages: [],
      );
}
