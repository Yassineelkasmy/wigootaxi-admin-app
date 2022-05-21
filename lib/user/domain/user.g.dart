// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      username: json['username'] as String,
      isPhoneVerified: json['isPhoneVerified'] as bool,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      ts: DateTime.parse(json['ts'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'isPhoneVerified': instance.isPhoneVerified,
      'email': instance.email,
      'phone': instance.phone,
      'ts': instance.ts.toIso8601String(),
    };
