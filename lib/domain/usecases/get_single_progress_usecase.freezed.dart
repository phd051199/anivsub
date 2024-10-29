// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_single_progress_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetSingleProgressUseCaseInput {
  String get chapId => throw _privateConstructorUsedError;
  String get seasonId => throw _privateConstructorUsedError;

  /// Create a copy of GetSingleProgressUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSingleProgressUseCaseInputCopyWith<GetSingleProgressUseCaseInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleProgressUseCaseInputCopyWith<$Res> {
  factory $GetSingleProgressUseCaseInputCopyWith(
          GetSingleProgressUseCaseInput value,
          $Res Function(GetSingleProgressUseCaseInput) then) =
      _$GetSingleProgressUseCaseInputCopyWithImpl<$Res,
          GetSingleProgressUseCaseInput>;
  @useResult
  $Res call({String chapId, String seasonId});
}

/// @nodoc
class _$GetSingleProgressUseCaseInputCopyWithImpl<$Res,
        $Val extends GetSingleProgressUseCaseInput>
    implements $GetSingleProgressUseCaseInputCopyWith<$Res> {
  _$GetSingleProgressUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSingleProgressUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapId = null,
    Object? seasonId = null,
  }) {
    return _then(_value.copyWith(
      chapId: null == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String,
      seasonId: null == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSingleProgressUseCaseInputImplCopyWith<$Res>
    implements $GetSingleProgressUseCaseInputCopyWith<$Res> {
  factory _$$GetSingleProgressUseCaseInputImplCopyWith(
          _$GetSingleProgressUseCaseInputImpl value,
          $Res Function(_$GetSingleProgressUseCaseInputImpl) then) =
      __$$GetSingleProgressUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chapId, String seasonId});
}

/// @nodoc
class __$$GetSingleProgressUseCaseInputImplCopyWithImpl<$Res>
    extends _$GetSingleProgressUseCaseInputCopyWithImpl<$Res,
        _$GetSingleProgressUseCaseInputImpl>
    implements _$$GetSingleProgressUseCaseInputImplCopyWith<$Res> {
  __$$GetSingleProgressUseCaseInputImplCopyWithImpl(
      _$GetSingleProgressUseCaseInputImpl _value,
      $Res Function(_$GetSingleProgressUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleProgressUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapId = null,
    Object? seasonId = null,
  }) {
    return _then(_$GetSingleProgressUseCaseInputImpl(
      chapId: null == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String,
      seasonId: null == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSingleProgressUseCaseInputImpl
    implements _GetSingleProgressUseCaseInput {
  const _$GetSingleProgressUseCaseInputImpl(
      {required this.chapId, required this.seasonId});

  @override
  final String chapId;
  @override
  final String seasonId;

  @override
  String toString() {
    return 'GetSingleProgressUseCaseInput(chapId: $chapId, seasonId: $seasonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleProgressUseCaseInputImpl &&
            (identical(other.chapId, chapId) || other.chapId == chapId) &&
            (identical(other.seasonId, seasonId) ||
                other.seasonId == seasonId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapId, seasonId);

  /// Create a copy of GetSingleProgressUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleProgressUseCaseInputImplCopyWith<
          _$GetSingleProgressUseCaseInputImpl>
      get copyWith => __$$GetSingleProgressUseCaseInputImplCopyWithImpl<
          _$GetSingleProgressUseCaseInputImpl>(this, _$identity);
}

abstract class _GetSingleProgressUseCaseInput
    implements GetSingleProgressUseCaseInput {
  const factory _GetSingleProgressUseCaseInput(
      {required final String chapId,
      required final String seasonId}) = _$GetSingleProgressUseCaseInputImpl;

  @override
  String get chapId;
  @override
  String get seasonId;

  /// Create a copy of GetSingleProgressUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleProgressUseCaseInputImplCopyWith<
          _$GetSingleProgressUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetSingleProgressUseCaseOutput {
  ChapterProgressEntity? get result => throw _privateConstructorUsedError;

  /// Create a copy of GetSingleProgressUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSingleProgressUseCaseOutputCopyWith<GetSingleProgressUseCaseOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleProgressUseCaseOutputCopyWith<$Res> {
  factory $GetSingleProgressUseCaseOutputCopyWith(
          GetSingleProgressUseCaseOutput value,
          $Res Function(GetSingleProgressUseCaseOutput) then) =
      _$GetSingleProgressUseCaseOutputCopyWithImpl<$Res,
          GetSingleProgressUseCaseOutput>;
  @useResult
  $Res call({ChapterProgressEntity? result});

  $ChapterProgressEntityCopyWith<$Res>? get result;
}

/// @nodoc
class _$GetSingleProgressUseCaseOutputCopyWithImpl<$Res,
        $Val extends GetSingleProgressUseCaseOutput>
    implements $GetSingleProgressUseCaseOutputCopyWith<$Res> {
  _$GetSingleProgressUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSingleProgressUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ChapterProgressEntity?,
    ) as $Val);
  }

  /// Create a copy of GetSingleProgressUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterProgressEntityCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ChapterProgressEntityCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetSingleProgressUseCaseOutputImplCopyWith<$Res>
    implements $GetSingleProgressUseCaseOutputCopyWith<$Res> {
  factory _$$GetSingleProgressUseCaseOutputImplCopyWith(
          _$GetSingleProgressUseCaseOutputImpl value,
          $Res Function(_$GetSingleProgressUseCaseOutputImpl) then) =
      __$$GetSingleProgressUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChapterProgressEntity? result});

  @override
  $ChapterProgressEntityCopyWith<$Res>? get result;
}

/// @nodoc
class __$$GetSingleProgressUseCaseOutputImplCopyWithImpl<$Res>
    extends _$GetSingleProgressUseCaseOutputCopyWithImpl<$Res,
        _$GetSingleProgressUseCaseOutputImpl>
    implements _$$GetSingleProgressUseCaseOutputImplCopyWith<$Res> {
  __$$GetSingleProgressUseCaseOutputImplCopyWithImpl(
      _$GetSingleProgressUseCaseOutputImpl _value,
      $Res Function(_$GetSingleProgressUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleProgressUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$GetSingleProgressUseCaseOutputImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ChapterProgressEntity?,
    ));
  }
}

/// @nodoc

class _$GetSingleProgressUseCaseOutputImpl
    implements _GetSingleProgressUseCaseOutput {
  const _$GetSingleProgressUseCaseOutputImpl({this.result});

  @override
  final ChapterProgressEntity? result;

  @override
  String toString() {
    return 'GetSingleProgressUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleProgressUseCaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of GetSingleProgressUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleProgressUseCaseOutputImplCopyWith<
          _$GetSingleProgressUseCaseOutputImpl>
      get copyWith => __$$GetSingleProgressUseCaseOutputImplCopyWithImpl<
          _$GetSingleProgressUseCaseOutputImpl>(this, _$identity);
}

abstract class _GetSingleProgressUseCaseOutput
    implements GetSingleProgressUseCaseOutput {
  const factory _GetSingleProgressUseCaseOutput(
          {final ChapterProgressEntity? result}) =
      _$GetSingleProgressUseCaseOutputImpl;

  @override
  ChapterProgressEntity? get result;

  /// Create a copy of GetSingleProgressUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleProgressUseCaseOutputImplCopyWith<
          _$GetSingleProgressUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
