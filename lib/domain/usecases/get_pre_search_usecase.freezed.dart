// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pre_search_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPreSearchUseCaseInput {
  String get keyword => throw _privateConstructorUsedError;

  /// Create a copy of GetPreSearchUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPreSearchUseCaseInputCopyWith<GetPreSearchUseCaseInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPreSearchUseCaseInputCopyWith<$Res> {
  factory $GetPreSearchUseCaseInputCopyWith(GetPreSearchUseCaseInput value,
          $Res Function(GetPreSearchUseCaseInput) then) =
      _$GetPreSearchUseCaseInputCopyWithImpl<$Res, GetPreSearchUseCaseInput>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class _$GetPreSearchUseCaseInputCopyWithImpl<$Res,
        $Val extends GetPreSearchUseCaseInput>
    implements $GetPreSearchUseCaseInputCopyWith<$Res> {
  _$GetPreSearchUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPreSearchUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPreSearchUseCaseInputImplCopyWith<$Res>
    implements $GetPreSearchUseCaseInputCopyWith<$Res> {
  factory _$$GetPreSearchUseCaseInputImplCopyWith(
          _$GetPreSearchUseCaseInputImpl value,
          $Res Function(_$GetPreSearchUseCaseInputImpl) then) =
      __$$GetPreSearchUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$GetPreSearchUseCaseInputImplCopyWithImpl<$Res>
    extends _$GetPreSearchUseCaseInputCopyWithImpl<$Res,
        _$GetPreSearchUseCaseInputImpl>
    implements _$$GetPreSearchUseCaseInputImplCopyWith<$Res> {
  __$$GetPreSearchUseCaseInputImplCopyWithImpl(
      _$GetPreSearchUseCaseInputImpl _value,
      $Res Function(_$GetPreSearchUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPreSearchUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$GetPreSearchUseCaseInputImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPreSearchUseCaseInputImpl implements _GetPreSearchUseCaseInput {
  const _$GetPreSearchUseCaseInputImpl({required this.keyword});

  @override
  final String keyword;

  @override
  String toString() {
    return 'GetPreSearchUseCaseInput(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPreSearchUseCaseInputImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  /// Create a copy of GetPreSearchUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPreSearchUseCaseInputImplCopyWith<_$GetPreSearchUseCaseInputImpl>
      get copyWith => __$$GetPreSearchUseCaseInputImplCopyWithImpl<
          _$GetPreSearchUseCaseInputImpl>(this, _$identity);
}

abstract class _GetPreSearchUseCaseInput implements GetPreSearchUseCaseInput {
  const factory _GetPreSearchUseCaseInput({required final String keyword}) =
      _$GetPreSearchUseCaseInputImpl;

  @override
  String get keyword;

  /// Create a copy of GetPreSearchUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPreSearchUseCaseInputImplCopyWith<_$GetPreSearchUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPreSearchUseCaseOutput {
  List<PreSearchItemEntity> get result => throw _privateConstructorUsedError;

  /// Create a copy of GetPreSearchUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPreSearchUseCaseOutputCopyWith<GetPreSearchUseCaseOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPreSearchUseCaseOutputCopyWith<$Res> {
  factory $GetPreSearchUseCaseOutputCopyWith(GetPreSearchUseCaseOutput value,
          $Res Function(GetPreSearchUseCaseOutput) then) =
      _$GetPreSearchUseCaseOutputCopyWithImpl<$Res, GetPreSearchUseCaseOutput>;
  @useResult
  $Res call({List<PreSearchItemEntity> result});
}

/// @nodoc
class _$GetPreSearchUseCaseOutputCopyWithImpl<$Res,
        $Val extends GetPreSearchUseCaseOutput>
    implements $GetPreSearchUseCaseOutputCopyWith<$Res> {
  _$GetPreSearchUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPreSearchUseCaseOutput
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
              as List<PreSearchItemEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPreSearchUseCaseOutputImplCopyWith<$Res>
    implements $GetPreSearchUseCaseOutputCopyWith<$Res> {
  factory _$$GetPreSearchUseCaseOutputImplCopyWith(
          _$GetPreSearchUseCaseOutputImpl value,
          $Res Function(_$GetPreSearchUseCaseOutputImpl) then) =
      __$$GetPreSearchUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PreSearchItemEntity> result});
}

/// @nodoc
class __$$GetPreSearchUseCaseOutputImplCopyWithImpl<$Res>
    extends _$GetPreSearchUseCaseOutputCopyWithImpl<$Res,
        _$GetPreSearchUseCaseOutputImpl>
    implements _$$GetPreSearchUseCaseOutputImplCopyWith<$Res> {
  __$$GetPreSearchUseCaseOutputImplCopyWithImpl(
      _$GetPreSearchUseCaseOutputImpl _value,
      $Res Function(_$GetPreSearchUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPreSearchUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GetPreSearchUseCaseOutputImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PreSearchItemEntity>,
    ));
  }
}

/// @nodoc

class _$GetPreSearchUseCaseOutputImpl implements _GetPreSearchUseCaseOutput {
  const _$GetPreSearchUseCaseOutputImpl(
      {required final List<PreSearchItemEntity> result})
      : _result = result;

  final List<PreSearchItemEntity> _result;
  @override
  List<PreSearchItemEntity> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'GetPreSearchUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPreSearchUseCaseOutputImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of GetPreSearchUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPreSearchUseCaseOutputImplCopyWith<_$GetPreSearchUseCaseOutputImpl>
      get copyWith => __$$GetPreSearchUseCaseOutputImplCopyWithImpl<
          _$GetPreSearchUseCaseOutputImpl>(this, _$identity);
}

abstract class _GetPreSearchUseCaseOutput implements GetPreSearchUseCaseOutput {
  const factory _GetPreSearchUseCaseOutput(
          {required final List<PreSearchItemEntity> result}) =
      _$GetPreSearchUseCaseOutputImpl;

  @override
  List<PreSearchItemEntity> get result;

  /// Create a copy of GetPreSearchUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPreSearchUseCaseOutputImplCopyWith<_$GetPreSearchUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
