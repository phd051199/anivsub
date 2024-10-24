// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_episode_skip_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetEpisodeSkipUsecaseInput {
  String get id => throw _privateConstructorUsedError;
  CancelToken? get cancelToken => throw _privateConstructorUsedError;

  /// Create a copy of GetEpisodeSkipUsecaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEpisodeSkipUsecaseInputCopyWith<GetEpisodeSkipUsecaseInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEpisodeSkipUsecaseInputCopyWith<$Res> {
  factory $GetEpisodeSkipUsecaseInputCopyWith(GetEpisodeSkipUsecaseInput value,
          $Res Function(GetEpisodeSkipUsecaseInput) then) =
      _$GetEpisodeSkipUsecaseInputCopyWithImpl<$Res,
          GetEpisodeSkipUsecaseInput>;
  @useResult
  $Res call({String id, CancelToken? cancelToken});
}

/// @nodoc
class _$GetEpisodeSkipUsecaseInputCopyWithImpl<$Res,
        $Val extends GetEpisodeSkipUsecaseInput>
    implements $GetEpisodeSkipUsecaseInputCopyWith<$Res> {
  _$GetEpisodeSkipUsecaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEpisodeSkipUsecaseInput
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
abstract class _$$GetEpisodeSkipUsecaseInputImplCopyWith<$Res>
    implements $GetEpisodeSkipUsecaseInputCopyWith<$Res> {
  factory _$$GetEpisodeSkipUsecaseInputImplCopyWith(
          _$GetEpisodeSkipUsecaseInputImpl value,
          $Res Function(_$GetEpisodeSkipUsecaseInputImpl) then) =
      __$$GetEpisodeSkipUsecaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, CancelToken? cancelToken});
}

/// @nodoc
class __$$GetEpisodeSkipUsecaseInputImplCopyWithImpl<$Res>
    extends _$GetEpisodeSkipUsecaseInputCopyWithImpl<$Res,
        _$GetEpisodeSkipUsecaseInputImpl>
    implements _$$GetEpisodeSkipUsecaseInputImplCopyWith<$Res> {
  __$$GetEpisodeSkipUsecaseInputImplCopyWithImpl(
      _$GetEpisodeSkipUsecaseInputImpl _value,
      $Res Function(_$GetEpisodeSkipUsecaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEpisodeSkipUsecaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_$GetEpisodeSkipUsecaseInputImpl(
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

class _$GetEpisodeSkipUsecaseInputImpl implements _GetEpisodeSkipUsecaseInput {
  const _$GetEpisodeSkipUsecaseInputImpl({required this.id, this.cancelToken});

  @override
  final String id;
  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'GetEpisodeSkipUsecaseInput(id: $id, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEpisodeSkipUsecaseInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, cancelToken);

  /// Create a copy of GetEpisodeSkipUsecaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEpisodeSkipUsecaseInputImplCopyWith<_$GetEpisodeSkipUsecaseInputImpl>
      get copyWith => __$$GetEpisodeSkipUsecaseInputImplCopyWithImpl<
          _$GetEpisodeSkipUsecaseInputImpl>(this, _$identity);
}

abstract class _GetEpisodeSkipUsecaseInput
    implements GetEpisodeSkipUsecaseInput {
  const factory _GetEpisodeSkipUsecaseInput(
      {required final String id,
      final CancelToken? cancelToken}) = _$GetEpisodeSkipUsecaseInputImpl;

  @override
  String get id;
  @override
  CancelToken? get cancelToken;

  /// Create a copy of GetEpisodeSkipUsecaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEpisodeSkipUsecaseInputImplCopyWith<_$GetEpisodeSkipUsecaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetEpisodeSkipUsecaseOutput {
  EpisodeSkipResponseEntity get result => throw _privateConstructorUsedError;

  /// Create a copy of GetEpisodeSkipUsecaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEpisodeSkipUsecaseOutputCopyWith<GetEpisodeSkipUsecaseOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEpisodeSkipUsecaseOutputCopyWith<$Res> {
  factory $GetEpisodeSkipUsecaseOutputCopyWith(
          GetEpisodeSkipUsecaseOutput value,
          $Res Function(GetEpisodeSkipUsecaseOutput) then) =
      _$GetEpisodeSkipUsecaseOutputCopyWithImpl<$Res,
          GetEpisodeSkipUsecaseOutput>;
  @useResult
  $Res call({EpisodeSkipResponseEntity result});

  $EpisodeSkipResponseEntityCopyWith<$Res> get result;
}

/// @nodoc
class _$GetEpisodeSkipUsecaseOutputCopyWithImpl<$Res,
        $Val extends GetEpisodeSkipUsecaseOutput>
    implements $GetEpisodeSkipUsecaseOutputCopyWith<$Res> {
  _$GetEpisodeSkipUsecaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEpisodeSkipUsecaseOutput
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
              as EpisodeSkipResponseEntity,
    ) as $Val);
  }

  /// Create a copy of GetEpisodeSkipUsecaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpisodeSkipResponseEntityCopyWith<$Res> get result {
    return $EpisodeSkipResponseEntityCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetEpisodeSkipUsecaseOutputImplCopyWith<$Res>
    implements $GetEpisodeSkipUsecaseOutputCopyWith<$Res> {
  factory _$$GetEpisodeSkipUsecaseOutputImplCopyWith(
          _$GetEpisodeSkipUsecaseOutputImpl value,
          $Res Function(_$GetEpisodeSkipUsecaseOutputImpl) then) =
      __$$GetEpisodeSkipUsecaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EpisodeSkipResponseEntity result});

  @override
  $EpisodeSkipResponseEntityCopyWith<$Res> get result;
}

/// @nodoc
class __$$GetEpisodeSkipUsecaseOutputImplCopyWithImpl<$Res>
    extends _$GetEpisodeSkipUsecaseOutputCopyWithImpl<$Res,
        _$GetEpisodeSkipUsecaseOutputImpl>
    implements _$$GetEpisodeSkipUsecaseOutputImplCopyWith<$Res> {
  __$$GetEpisodeSkipUsecaseOutputImplCopyWithImpl(
      _$GetEpisodeSkipUsecaseOutputImpl _value,
      $Res Function(_$GetEpisodeSkipUsecaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEpisodeSkipUsecaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GetEpisodeSkipUsecaseOutputImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as EpisodeSkipResponseEntity,
    ));
  }
}

/// @nodoc

class _$GetEpisodeSkipUsecaseOutputImpl
    implements _GetEpisodeSkipUsecaseOutput {
  const _$GetEpisodeSkipUsecaseOutputImpl({required this.result});

  @override
  final EpisodeSkipResponseEntity result;

  @override
  String toString() {
    return 'GetEpisodeSkipUsecaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEpisodeSkipUsecaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of GetEpisodeSkipUsecaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEpisodeSkipUsecaseOutputImplCopyWith<_$GetEpisodeSkipUsecaseOutputImpl>
      get copyWith => __$$GetEpisodeSkipUsecaseOutputImplCopyWithImpl<
          _$GetEpisodeSkipUsecaseOutputImpl>(this, _$identity);
}

abstract class _GetEpisodeSkipUsecaseOutput
    implements GetEpisodeSkipUsecaseOutput {
  const factory _GetEpisodeSkipUsecaseOutput(
          {required final EpisodeSkipResponseEntity result}) =
      _$GetEpisodeSkipUsecaseOutputImpl;

  @override
  EpisodeSkipResponseEntity get result;

  /// Create a copy of GetEpisodeSkipUsecaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEpisodeSkipUsecaseOutputImplCopyWith<_$GetEpisodeSkipUsecaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
