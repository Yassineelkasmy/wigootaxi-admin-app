// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String subject, String attachment)
        messageSent,
    required TResult Function() fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment)?
        messageSent,
    TResult Function()? fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment)?
        messageSent,
    TResult Function()? fetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(FetchRequested value) fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    TResult Function(FetchRequested value)? fetchRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    TResult Function(FetchRequested value)? fetchRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;
}

/// @nodoc
abstract class _$$MessageSentCopyWith<$Res> {
  factory _$$MessageSentCopyWith(
          _$MessageSent value, $Res Function(_$MessageSent) then) =
      __$$MessageSentCopyWithImpl<$Res>;
  $Res call({String text, String subject, String attachment});
}

/// @nodoc
class __$$MessageSentCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements _$$MessageSentCopyWith<$Res> {
  __$$MessageSentCopyWithImpl(
      _$MessageSent _value, $Res Function(_$MessageSent) _then)
      : super(_value, (v) => _then(v as _$MessageSent));

  @override
  _$MessageSent get _value => super._value as _$MessageSent;

  @override
  $Res call({
    Object? text = freezed,
    Object? subject = freezed,
    Object? attachment = freezed,
  }) {
    return _then(_$MessageSent(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageSent implements MessageSent {
  const _$MessageSent(this.text, this.subject, this.attachment);

  @override
  final String text;
  @override
  final String subject;
  @override
  final String attachment;

  @override
  String toString() {
    return 'MessageEvent.messageSent(text: $text, subject: $subject, attachment: $attachment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSent &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality()
                .equals(other.attachment, attachment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(attachment));

  @JsonKey(ignore: true)
  @override
  _$$MessageSentCopyWith<_$MessageSent> get copyWith =>
      __$$MessageSentCopyWithImpl<_$MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String subject, String attachment)
        messageSent,
    required TResult Function() fetchRequested,
  }) {
    return messageSent(text, subject, attachment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment)?
        messageSent,
    TResult Function()? fetchRequested,
  }) {
    return messageSent?.call(text, subject, attachment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment)?
        messageSent,
    TResult Function()? fetchRequested,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(text, subject, attachment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(FetchRequested value) fetchRequested,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    TResult Function(FetchRequested value)? fetchRequested,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    TResult Function(FetchRequested value)? fetchRequested,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements MessageEvent {
  const factory MessageSent(
          final String text, final String subject, final String attachment) =
      _$MessageSent;

  String get text => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get attachment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MessageSentCopyWith<_$MessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchRequestedCopyWith<$Res> {
  factory _$$FetchRequestedCopyWith(
          _$FetchRequested value, $Res Function(_$FetchRequested) then) =
      __$$FetchRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRequestedCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements _$$FetchRequestedCopyWith<$Res> {
  __$$FetchRequestedCopyWithImpl(
      _$FetchRequested _value, $Res Function(_$FetchRequested) _then)
      : super(_value, (v) => _then(v as _$FetchRequested));

  @override
  _$FetchRequested get _value => super._value as _$FetchRequested;
}

/// @nodoc

class _$FetchRequested implements FetchRequested {
  const _$FetchRequested();

  @override
  String toString() {
    return 'MessageEvent.fetchRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String subject, String attachment)
        messageSent,
    required TResult Function() fetchRequested,
  }) {
    return fetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment)?
        messageSent,
    TResult Function()? fetchRequested,
  }) {
    return fetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment)?
        messageSent,
    TResult Function()? fetchRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(FetchRequested value) fetchRequested,
  }) {
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    TResult Function(FetchRequested value)? fetchRequested,
  }) {
    return fetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    TResult Function(FetchRequested value)? fetchRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class FetchRequested implements MessageEvent {
  const factory FetchRequested() = _$FetchRequested;
}
