// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_play_data_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPlayDataUseCaseInput {
  String get id => throw _privateConstructorUsedError;
  CancelToken? get cancelToken => throw _privateConstructorUsedError;

  /// Create a copy of GetPlayDataUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPlayDataUseCaseInputCopyWith<GetPlayDataUseCaseInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlayDataUseCaseInputCopyWith<$Res> {
  factory $GetPlayDataUseCaseInputCopyWith(GetPlayDataUseCaseInput value,
          $Res Function(GetPlayDataUseCaseInput) then) =
      _$GetPlayDataUseCaseInputCopyWithImpl<$Res, GetPlayDataUseCaseInput>;
  @useResult
  $Res call({String id, CancelToken? cancelToken});
}

/// @nodoc
class _$GetPlayDataUseCaseInputCopyWithImpl<$Res,
        $Val extends GetPlayDataUseCaseInput>
    implements $GetPlayDataUseCaseInputCopyWith<$Res> {
  _$GetPlayDataUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPlayDataUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPlayDataUseCaseInputImplCopyWith<$Res>
    implements $GetPlayDataUseCaseInputCopyWith<$Res> {
  factory _$$GetPlayDataUseCaseInputImplCopyWith(
          _$GetPlayDataUseCaseInputImpl value,
          $Res Function(_$GetPlayDataUseCaseInputImpl) then) =
      __$$GetPlayDataUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, CancelToken? cancelToken});
}

/// @nodoc
class __$$GetPlayDataUseCaseInputImplCopyWithImpl<$Res>
    extends _$GetPlayDataUseCaseInputCopyWithImpl<$Res,
        _$GetPlayDataUseCaseInputImpl>
    implements _$$GetPlayDataUseCaseInputImplCopyWith<$Res> {
  __$$GetPlayDataUseCaseInputImplCopyWithImpl(
      _$GetPlayDataUseCaseInputImpl _value,
      $Res Function(_$GetPlayDataUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPlayDataUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_$GetPlayDataUseCaseInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$GetPlayDataUseCaseInputImpl implements _GetPlayDataUseCaseInput {
  const _$GetPlayDataUseCaseInputImpl({required this.id, this.cancelToken});

  @override
  final String id;
  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'GetPlayDataUseCaseInput(id: $id, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlayDataUseCaseInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, cancelToken);

  /// Create a copy of GetPlayDataUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlayDataUseCaseInputImplCopyWith<_$GetPlayDataUseCaseInputImpl>
      get copyWith => __$$GetPlayDataUseCaseInputImplCopyWithImpl<
          _$GetPlayDataUseCaseInputImpl>(this, _$identity);
}

abstract class _GetPlayDataUseCaseInput implements GetPlayDataUseCaseInput {
  const factory _GetPlayDataUseCaseInput(
      {required final String id,
      final CancelToken? cancelToken}) = _$GetPlayDataUseCaseInputImpl;

  @override
  String get id;
  @override
  CancelToken? get cancelToken;

  /// Create a copy of GetPlayDataUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPlayDataUseCaseInputImplCopyWith<_$GetPlayDataUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPlayDataUseCaseOutput {
  PlayDataEntity get result => throw _privateConstructorUsedError;

  /// Create a copy of GetPlayDataUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPlayDataUseCaseOutputCopyWith<GetPlayDataUseCaseOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlayDataUseCaseOutputCopyWith<$Res> {
  factory $GetPlayDataUseCaseOutputCopyWith(GetPlayDataUseCaseOutput value,
          $Res Function(GetPlayDataUseCaseOutput) then) =
      _$GetPlayDataUseCaseOutputCopyWithImpl<$Res, GetPlayDataUseCaseOutput>;
  @useResult
  $Res call({PlayDataEntity result});
}

/// @nodoc
class _$GetPlayDataUseCaseOutputCopyWithImpl<$Res,
        $Val extends GetPlayDataUseCaseOutput>
    implements $GetPlayDataUseCaseOutputCopyWith<$Res> {
  _$GetPlayDataUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPlayDataUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlayDataEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPlayDataUseCaseOutputImplCopyWith<$Res>
    implements $GetPlayDataUseCaseOutputCopyWith<$Res> {
  factory _$$GetPlayDataUseCaseOutputImplCopyWith(
          _$GetPlayDataUseCaseOutputImpl value,
          $Res Function(_$GetPlayDataUseCaseOutputImpl) then) =
      __$$GetPlayDataUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlayDataEntity result});
}

/// @nodoc
class __$$GetPlayDataUseCaseOutputImplCopyWithImpl<$Res>
    extends _$GetPlayDataUseCaseOutputCopyWithImpl<$Res,
        _$GetPlayDataUseCaseOutputImpl>
    implements _$$GetPlayDataUseCaseOutputImplCopyWith<$Res> {
  __$$GetPlayDataUseCaseOutputImplCopyWithImpl(
      _$GetPlayDataUseCaseOutputImpl _value,
      $Res Function(_$GetPlayDataUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPlayDataUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GetPlayDataUseCaseOutputImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlayDataEntity,
    ));
  }
}

/// @nodoc

class _$GetPlayDataUseCaseOutputImpl implements _GetPlayDataUseCaseOutput {
  const _$GetPlayDataUseCaseOutputImpl({required this.result});

  @override
  final PlayDataEntity result;

  @override
  String toString() {
    return 'GetPlayDataUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlayDataUseCaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of GetPlayDataUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlayDataUseCaseOutputImplCopyWith<_$GetPlayDataUseCaseOutputImpl>
      get copyWith => __$$GetPlayDataUseCaseOutputImplCopyWithImpl<
          _$GetPlayDataUseCaseOutputImpl>(this, _$identity);
}

abstract class _GetPlayDataUseCaseOutput implements GetPlayDataUseCaseOutput {
  const factory _GetPlayDataUseCaseOutput(
      {required final PlayDataEntity result}) = _$GetPlayDataUseCaseOutputImpl;

  @override
  PlayDataEntity get result;

  /// Create a copy of GetPlayDataUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPlayDataUseCaseOutputImplCopyWith<_$GetPlayDataUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
