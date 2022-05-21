import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@JsonSerializable()
@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required bool isPhoneVerified,
    required String email,
    String? phone,
    required DateTime ts,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) {
    json["ts"] = ((json["ts"] as Timestamp).toDate().toString());

    return _$UserFromJson(json);
  }
}
