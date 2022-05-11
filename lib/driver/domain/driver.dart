import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@JsonSerializable()
@freezed
class Driver with _$Driver {
  const factory Driver({
    required String id,
    required String username,
    required bool isPhoneVerified,
    required String email,
    required String phone,
    required DateTime ts,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) {
    json["ts"] = ((json["ts"] as Timestamp).toDate().toString());

    return _$DriverFromJson(json);
  }
}
