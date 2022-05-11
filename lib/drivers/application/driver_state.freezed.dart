// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DriverState {
  List<Driver> get drivers => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverStateCopyWith<DriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStateCopyWith<$Res> {
  factory $DriverStateCopyWith(
          DriverState value, $Res Function(DriverState) then) =
      _$DriverStateCopyWithImpl<$Res>;
  $Res call({List<Driver> drivers, bool isLoading, int currentPage});
}

/// @nodoc
class _$DriverStateCopyWithImpl<$Res> implements $DriverStateCopyWith<$Res> {
  _$DriverStateCopyWithImpl(this._value, this._then);

  final DriverState _value;
  // ignore: unused_field
  final $Res Function(DriverState) _then;

  @override
  $Res call({
    Object? drivers = freezed,
    Object? isLoading = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      drivers: drivers == freezed
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DriverStateCopyWith<$Res>
    implements $DriverStateCopyWith<$Res> {
  factory _$$_DriverStateCopyWith(
          _$_DriverState value, $Res Function(_$_DriverState) then) =
      __$$_DriverStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Driver> drivers, bool isLoading, int currentPage});
}

/// @nodoc
class __$$_DriverStateCopyWithImpl<$Res> extends _$DriverStateCopyWithImpl<$Res>
    implements _$$_DriverStateCopyWith<$Res> {
  __$$_DriverStateCopyWithImpl(
      _$_DriverState _value, $Res Function(_$_DriverState) _then)
      : super(_value, (v) => _then(v as _$_DriverState));

  @override
  _$_DriverState get _value => super._value as _$_DriverState;

  @override
  $Res call({
    Object? drivers = freezed,
    Object? isLoading = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$_DriverState(
      drivers: drivers == freezed
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DriverState implements _DriverState {
  const _$_DriverState(
      {required final List<Driver> drivers,
      required this.isLoading,
      required this.currentPage})
      : _drivers = drivers;

  final List<Driver> _drivers;
  @override
  List<Driver> get drivers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drivers);
  }

  @override
  final bool isLoading;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'DriverState(drivers: $drivers, isLoading: $isLoading, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverState &&
            const DeepCollectionEquality().equals(other._drivers, _drivers) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_drivers),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$$_DriverStateCopyWith<_$_DriverState> get copyWith =>
      __$$_DriverStateCopyWithImpl<_$_DriverState>(this, _$identity);
}

abstract class _DriverState implements DriverState {
  const factory _DriverState(
      {required final List<Driver> drivers,
      required final bool isLoading,
      required final int currentPage}) = _$_DriverState;

  @override
  List<Driver> get drivers => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DriverStateCopyWith<_$_DriverState> get copyWith =>
      throw _privateConstructorUsedError;
}
