// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      text: json['text'] as String,
      subject: json['subject'] as String,
      attachment: json['attachment'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      ts: DateTime.parse(json['ts'] as String),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'text': instance.text,
      'subject': instance.subject,
      'attachment': instance.attachment,
      'email': instance.email,
      'phone': instance.phone,
      'ts': instance.ts.toIso8601String(),
    };
