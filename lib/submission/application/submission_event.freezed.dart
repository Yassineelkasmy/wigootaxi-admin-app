// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function(String status, String id) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String status, String id)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String status, String id)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRequested value) fetchRequested,
    required TResult Function(StatusChanged value) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchRequested value)? fetchRequested,
    TResult Function(StatusChanged value)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRequested value)? fetchRequested,
    TResult Function(StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionEventCopyWith<$Res> {
  factory $SubmissionEventCopyWith(
          SubmissionEvent value, $Res Function(SubmissionEvent) then) =
      _$SubmissionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmissionEventCopyWithImpl<$Res>
    implements $SubmissionEventCopyWith<$Res> {
  _$SubmissionEventCopyWithImpl(this._value, this._then);

  final SubmissionEvent _value;
  // ignore: unused_field
  final $Res Function(SubmissionEvent) _then;
}

/// @nodoc
abstract class _$$FetchRequestedCopyWith<$Res> {
  factory _$$FetchRequestedCopyWith(
          _$FetchRequested value, $Res Function(_$FetchRequested) then) =
      __$$FetchRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRequestedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
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
    return 'SubmissionEvent.fetchRequested()';
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
    required TResult Function() fetchRequested,
    required TResult Function(String status, String id) statusChanged,
  }) {
    return fetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String status, String id)? statusChanged,
  }) {
    return fetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String status, String id)? statusChanged,
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
    required TResult Function(FetchRequested value) fetchRequested,
    required TResult Function(StatusChanged value) statusChanged,
  }) {
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchRequested value)? fetchRequested,
    TResult Function(StatusChanged value)? statusChanged,
  }) {
    return fetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRequested value)? fetchRequested,
    TResult Function(StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class FetchRequested implements SubmissionEvent {
  const factory FetchRequested() = _$FetchRequested;
}

/// @nodoc
abstract class _$$StatusChangedCopyWith<$Res> {
  factory _$$StatusChangedCopyWith(
          _$StatusChanged value, $Res Function(_$StatusChanged) then) =
      __$$StatusChangedCopyWithImpl<$Res>;
  $Res call({String status, String id});
}

/// @nodoc
class __$$StatusChangedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$StatusChangedCopyWith<$Res> {
  __$$StatusChangedCopyWithImpl(
      _$StatusChanged _value, $Res Function(_$StatusChanged) _then)
      : super(_value, (v) => _then(v as _$StatusChanged));

  @override
  _$StatusChanged get _value => super._value as _$StatusChanged;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_$StatusChanged(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusChanged implements StatusChanged {
  const _$StatusChanged(this.status, this.id);

  @override
  final String status;
  @override
  final String id;

  @override
  String toString() {
    return 'SubmissionEvent.statusChanged(status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChanged &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$StatusChangedCopyWith<_$StatusChanged> get copyWith =>
      __$$StatusChangedCopyWithImpl<_$StatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function(String status, String id) statusChanged,
  }) {
    return statusChanged(status, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String status, String id)? statusChanged,
  }) {
    return statusChanged?.call(status, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String status, String id)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRequested value) fetchRequested,
    required TResult Function(StatusChanged value) statusChanged,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchRequested value)? fetchRequested,
    TResult Function(StatusChanged value)? statusChanged,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRequested value)? fetchRequested,
    TResult Function(StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class StatusChanged implements SubmissionEvent {
  const factory StatusChanged(final String status, final String id) =
      _$StatusChanged;

  String get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$StatusChangedCopyWith<_$StatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
