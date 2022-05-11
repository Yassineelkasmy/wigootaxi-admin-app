// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPasswordPressed,
    required TResult Function() signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        signInWithEmailAndPasswordPressed,
    TResult Function()? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        signInWithEmailAndPasswordPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFormEventCopyWithImpl<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  final AuthFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormEvent) _then;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordPressedCopyWith(
          _$SignInWithEmailAndPasswordPressed value,
          $Res Function(_$SignInWithEmailAndPasswordPressed) then) =
      __$$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements _$$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _$SignInWithEmailAndPasswordPressed _value,
      $Res Function(_$SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _$SignInWithEmailAndPasswordPressed));

  @override
  _$SignInWithEmailAndPasswordPressed get _value =>
      super._value as _$SignInWithEmailAndPasswordPressed;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$SignInWithEmailAndPasswordPressed(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthFormEvent.signInWithEmailAndPasswordPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordPressed &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$SignInWithEmailAndPasswordPressedCopyWith<
          _$SignInWithEmailAndPasswordPressed>
      get copyWith => __$$SignInWithEmailAndPasswordPressedCopyWithImpl<
          _$SignInWithEmailAndPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPasswordPressed,
    required TResult Function() signOutPressed,
  }) {
    return signInWithEmailAndPasswordPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        signInWithEmailAndPasswordPressed,
    TResult Function()? signOutPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        signInWithEmailAndPasswordPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements AuthFormEvent {
  const factory SignInWithEmailAndPasswordPressed(
          final String email, final String password) =
      _$SignInWithEmailAndPasswordPressed;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SignInWithEmailAndPasswordPressedCopyWith<
          _$SignInWithEmailAndPasswordPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutPressedCopyWith<$Res> {
  factory _$$SignOutPressedCopyWith(
          _$SignOutPressed value, $Res Function(_$SignOutPressed) then) =
      __$$SignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements _$$SignOutPressedCopyWith<$Res> {
  __$$SignOutPressedCopyWithImpl(
      _$SignOutPressed _value, $Res Function(_$SignOutPressed) _then)
      : super(_value, (v) => _then(v as _$SignOutPressed));

  @override
  _$SignOutPressed get _value => super._value as _$SignOutPressed;
}

/// @nodoc

class _$SignOutPressed implements SignOutPressed {
  const _$SignOutPressed();

  @override
  String toString() {
    return 'AuthFormEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInWithEmailAndPasswordPressed,
    required TResult Function() signOutPressed,
  }) {
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        signInWithEmailAndPasswordPressed,
    TResult Function()? signOutPressed,
  }) {
    return signOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        signInWithEmailAndPasswordPressed,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SignOutPressed value) signOutPressed,
  }) {
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
  }) {
    return signOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class SignOutPressed implements AuthFormEvent {
  const factory SignOutPressed() = _$SignOutPressed;
}
