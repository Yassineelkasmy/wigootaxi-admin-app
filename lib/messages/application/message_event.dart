import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_event.freezed.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.fetchRequested() = FetchRequested;
}
