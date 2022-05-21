import 'package:cloud_firestore/cloud_firestore.dart';
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
    required String email,
    required String phone,
    required DateTime ts,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) {
    json["ts"] = ((json["ts"] as Timestamp).toDate().toString());

    return _$MessageFromJson(json);
  }
}
