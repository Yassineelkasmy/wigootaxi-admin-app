import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@JsonSerializable()
@freezed
class Message with _$Message {
  const factory Message({
    required String text,
    required String subject,
    required String attachment,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }
}
