// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmissionState {
  List<Submission> get submissions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmissionStateCopyWith<SubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionStateCopyWith<$Res> {
  factory $SubmissionStateCopyWith(
          SubmissionState value, $Res Function(SubmissionState) then) =
      _$SubmissionStateCopyWithImpl<$Res>;
  $Res call({List<Submission> submissions, bool isLoading, int currentPage});
}

/// @nodoc
class _$SubmissionStateCopyWithImpl<$Res>
    implements $SubmissionStateCopyWith<$Res> {
  _$SubmissionStateCopyWithImpl(this._value, this._then);

  final SubmissionState _value;
  // ignore: unused_field
  final $Res Function(SubmissionState) _then;

  @override
  $Res call({
    Object? submissions = freezed,
    Object? isLoading = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      submissions: submissions == freezed
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Submission>,
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
abstract class _$$_SubmissionStateCopyWith<$Res>
    implements $SubmissionStateCopyWith<$Res> {
  factory _$$_SubmissionStateCopyWith(
          _$_SubmissionState value, $Res Function(_$_SubmissionState) then) =
      __$$_SubmissionStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Submission> submissions, bool isLoading, int currentPage});
}

/// @nodoc
class __$$_SubmissionStateCopyWithImpl<$Res>
    extends _$SubmissionStateCopyWithImpl<$Res>
    implements _$$_SubmissionStateCopyWith<$Res> {
  __$$_SubmissionStateCopyWithImpl(
      _$_SubmissionState _value, $Res Function(_$_SubmissionState) _then)
      : super(_value, (v) => _then(v as _$_SubmissionState));

  @override
  _$_SubmissionState get _value => super._value as _$_SubmissionState;

  @override
  $Res call({
    Object? submissions = freezed,
    Object? isLoading = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$_SubmissionState(
      submissions: submissions == freezed
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Submission>,
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

class _$_SubmissionState implements _SubmissionState {
  const _$_SubmissionState(
      {required final List<Submission> submissions,
      required this.isLoading,
      required this.currentPage})
      : _submissions = submissions;

  final List<Submission> _submissions;
  @override
  List<Submission> get submissions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  final bool isLoading;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'SubmissionState(submissions: $submissions, isLoading: $isLoading, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmissionState &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_submissions),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$$_SubmissionStateCopyWith<_$_SubmissionState> get copyWith =>
      __$$_SubmissionStateCopyWithImpl<_$_SubmissionState>(this, _$identity);
}

abstract class _SubmissionState implements SubmissionState {
  const factory _SubmissionState(
      {required final List<Submission> submissions,
      required final bool isLoading,
      required final int currentPage}) = _$_SubmissionState;

  @override
  List<Submission> get submissions => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SubmissionStateCopyWith<_$_SubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}
