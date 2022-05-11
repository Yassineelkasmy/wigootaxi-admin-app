// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Driver {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get isPhoneVeified => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  DateTime get ts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String username,
      bool isPhoneVeified,
      String email,
      String phone,
      DateTime ts});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? isPhoneVeified = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? ts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneVeified: isPhoneVeified == freezed
          ? _value.isPhoneVeified
          : isPhoneVeified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$_DriverCopyWith(_$_Driver value, $Res Function(_$_Driver) then) =
      __$$_DriverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String username,
      bool isPhoneVeified,
      String email,
      String phone,
      DateTime ts});
}

/// @nodoc
class __$$_DriverCopyWithImpl<$Res> extends _$DriverCopyWithImpl<$Res>
    implements _$$_DriverCopyWith<$Res> {
  __$$_DriverCopyWithImpl(_$_Driver _value, $Res Function(_$_Driver) _then)
      : super(_value, (v) => _then(v as _$_Driver));

  @override
  _$_Driver get _value => super._value as _$_Driver;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? isPhoneVeified = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? ts = freezed,
  }) {
    return _then(_$_Driver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneVeified: isPhoneVeified == freezed
          ? _value.isPhoneVeified
          : isPhoneVeified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Driver implements _Driver {
  const _$_Driver(
      {required this.id,
      required this.username,
      required this.isPhoneVeified,
      required this.email,
      required this.phone,
      required this.ts});

  @override
  final String id;
  @override
  final String username;
  @override
  final bool isPhoneVeified;
  @override
  final String email;
  @override
  final String phone;
  @override
  final DateTime ts;

  @override
  String toString() {
    return 'Driver(id: $id, username: $username, isPhoneVeified: $isPhoneVeified, email: $email, phone: $phone, ts: $ts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Driver &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.isPhoneVeified, isPhoneVeified) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.ts, ts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(isPhoneVeified),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(ts));

  @JsonKey(ignore: true)
  @override
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      __$$_DriverCopyWithImpl<_$_Driver>(this, _$identity);
}

abstract class _Driver implements Driver {
  const factory _Driver(
      {required final String id,
      required final String username,
      required final bool isPhoneVeified,
      required final String email,
      required final String phone,
      required final DateTime ts}) = _$_Driver;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  bool get isPhoneVeified => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  DateTime get ts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DriverCopyWith<_$_Driver> get copyWith =>
      throw _privateConstructorUsedError;
}
