// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_episode_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetListEpisodeUseCaseInput {
  List<String> get animeName => throw _privateConstructorUsedError;
  CancelToken? get cancelToken => throw _privateConstructorUsedError;

  /// Create a copy of GetListEpisodeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetListEpisodeUseCaseInputCopyWith<GetListEpisodeUseCaseInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListEpisodeUseCaseInputCopyWith<$Res> {
  factory $GetListEpisodeUseCaseInputCopyWith(GetListEpisodeUseCaseInput value,
          $Res Function(GetListEpisodeUseCaseInput) then) =
      _$GetListEpisodeUseCaseInputCopyWithImpl<$Res,
          GetListEpisodeUseCaseInput>;
  @useResult
  $Res call({List<String> animeName, CancelToken? cancelToken});
}

/// @nodoc
class _$GetListEpisodeUseCaseInputCopyWithImpl<$Res,
        $Val extends GetListEpisodeUseCaseInput>
    implements $GetListEpisodeUseCaseInputCopyWith<$Res> {
  _$GetListEpisodeUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetListEpisodeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeName = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_value.copyWith(
      animeName: null == animeName
          ? _value.animeName
          : animeName // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListEpisodeUseCaseInputImplCopyWith<$Res>
    implements $GetListEpisodeUseCaseInputCopyWith<$Res> {
  factory _$$GetListEpisodeUseCaseInputImplCopyWith(
          _$GetListEpisodeUseCaseInputImpl value,
          $Res Function(_$GetListEpisodeUseCaseInputImpl) then) =
      __$$GetListEpisodeUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> animeName, CancelToken? cancelToken});
}

/// @nodoc
class __$$GetListEpisodeUseCaseInputImplCopyWithImpl<$Res>
    extends _$GetListEpisodeUseCaseInputCopyWithImpl<$Res,
        _$GetListEpisodeUseCaseInputImpl>
    implements _$$GetListEpisodeUseCaseInputImplCopyWith<$Res> {
  __$$GetListEpisodeUseCaseInputImplCopyWithImpl(
      _$GetListEpisodeUseCaseInputImpl _value,
      $Res Function(_$GetListEpisodeUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetListEpisodeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeName = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_$GetListEpisodeUseCaseInputImpl(
      animeName: null == animeName
          ? _value._animeName
          : animeName // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$GetListEpisodeUseCaseInputImpl implements _GetListEpisodeUseCaseInput {
  const _$GetListEpisodeUseCaseInputImpl(
      {required final List<String> animeName, this.cancelToken})
      : _animeName = animeName;

  final List<String> _animeName;
  @override
  List<String> get animeName {
    if (_animeName is EqualUnmodifiableListView) return _animeName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animeName);
  }

  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'GetListEpisodeUseCaseInput(animeName: $animeName, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListEpisodeUseCaseInputImpl &&
            const DeepCollectionEquality()
                .equals(other._animeName, _animeName) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_animeName), cancelToken);

  /// Create a copy of GetListEpisodeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListEpisodeUseCaseInputImplCopyWith<_$GetListEpisodeUseCaseInputImpl>
      get copyWith => __$$GetListEpisodeUseCaseInputImplCopyWithImpl<
          _$GetListEpisodeUseCaseInputImpl>(this, _$identity);
}

abstract class _GetListEpisodeUseCaseInput
    implements GetListEpisodeUseCaseInput {
  const factory _GetListEpisodeUseCaseInput(
      {required final List<String> animeName,
      final CancelToken? cancelToken}) = _$GetListEpisodeUseCaseInputImpl;

  @override
  List<String> get animeName;
  @override
  CancelToken? get cancelToken;

  /// Create a copy of GetListEpisodeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetListEpisodeUseCaseInputImplCopyWith<_$GetListEpisodeUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetListEpisodeUseCaseOutput {
  ListEpisodeResponseEntity get result => throw _privateConstructorUsedError;

  /// Create a copy of GetListEpisodeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetListEpisodeUseCaseOutputCopyWith<GetListEpisodeUseCaseOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListEpisodeUseCaseOutputCopyWith<$Res> {
  factory $GetListEpisodeUseCaseOutputCopyWith(
          GetListEpisodeUseCaseOutput value,
          $Res Function(GetListEpisodeUseCaseOutput) then) =
      _$GetListEpisodeUseCaseOutputCopyWithImpl<$Res,
          GetListEpisodeUseCaseOutput>;
  @useResult
  $Res call({ListEpisodeResponseEntity result});
}

/// @nodoc
class _$GetListEpisodeUseCaseOutputCopyWithImpl<$Res,
        $Val extends GetListEpisodeUseCaseOutput>
    implements $GetListEpisodeUseCaseOutputCopyWith<$Res> {
  _$GetListEpisodeUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetListEpisodeUseCaseOutput
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
              as ListEpisodeResponseEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListEpisodeUseCaseOutputImplCopyWith<$Res>
    implements $GetListEpisodeUseCaseOutputCopyWith<$Res> {
  factory _$$GetListEpisodeUseCaseOutputImplCopyWith(
          _$GetListEpisodeUseCaseOutputImpl value,
          $Res Function(_$GetListEpisodeUseCaseOutputImpl) then) =
      __$$GetListEpisodeUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListEpisodeResponseEntity result});
}

/// @nodoc
class __$$GetListEpisodeUseCaseOutputImplCopyWithImpl<$Res>
    extends _$GetListEpisodeUseCaseOutputCopyWithImpl<$Res,
        _$GetListEpisodeUseCaseOutputImpl>
    implements _$$GetListEpisodeUseCaseOutputImplCopyWith<$Res> {
  __$$GetListEpisodeUseCaseOutputImplCopyWithImpl(
      _$GetListEpisodeUseCaseOutputImpl _value,
      $Res Function(_$GetListEpisodeUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetListEpisodeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GetListEpisodeUseCaseOutputImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ListEpisodeResponseEntity,
    ));
  }
}

/// @nodoc

class _$GetListEpisodeUseCaseOutputImpl
    implements _GetListEpisodeUseCaseOutput {
  const _$GetListEpisodeUseCaseOutputImpl({required this.result});

  @override
  final ListEpisodeResponseEntity result;

  @override
  String toString() {
    return 'GetListEpisodeUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListEpisodeUseCaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of GetListEpisodeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListEpisodeUseCaseOutputImplCopyWith<_$GetListEpisodeUseCaseOutputImpl>
      get copyWith => __$$GetListEpisodeUseCaseOutputImplCopyWithImpl<
          _$GetListEpisodeUseCaseOutputImpl>(this, _$identity);
}

abstract class _GetListEpisodeUseCaseOutput
    implements GetListEpisodeUseCaseOutput {
  const factory _GetListEpisodeUseCaseOutput(
          {required final ListEpisodeResponseEntity result}) =
      _$GetListEpisodeUseCaseOutputImpl;

  @override
  ListEpisodeResponseEntity get result;

  /// Create a copy of GetListEpisodeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetListEpisodeUseCaseOutputImplCopyWith<_$GetListEpisodeUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
