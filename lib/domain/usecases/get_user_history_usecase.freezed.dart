// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_history_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserHistoryUseCaseInput {
  int get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  /// Create a copy of GetUserHistoryUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserHistoryUseCaseInputCopyWith<GetUserHistoryUseCaseInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserHistoryUseCaseInputCopyWith<$Res> {
  factory $GetUserHistoryUseCaseInputCopyWith(GetUserHistoryUseCaseInput value,
          $Res Function(GetUserHistoryUseCaseInput) then) =
      _$GetUserHistoryUseCaseInputCopyWithImpl<$Res,
          GetUserHistoryUseCaseInput>;
  @useResult
  $Res call({int page, int? size});
}

/// @nodoc
class _$GetUserHistoryUseCaseInputCopyWithImpl<$Res,
        $Val extends GetUserHistoryUseCaseInput>
    implements $GetUserHistoryUseCaseInputCopyWith<$Res> {
  _$GetUserHistoryUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserHistoryUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserHistoryUseCaseInputImplCopyWith<$Res>
    implements $GetUserHistoryUseCaseInputCopyWith<$Res> {
  factory _$$GetUserHistoryUseCaseInputImplCopyWith(
          _$GetUserHistoryUseCaseInputImpl value,
          $Res Function(_$GetUserHistoryUseCaseInputImpl) then) =
      __$$GetUserHistoryUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int? size});
}

/// @nodoc
class __$$GetUserHistoryUseCaseInputImplCopyWithImpl<$Res>
    extends _$GetUserHistoryUseCaseInputCopyWithImpl<$Res,
        _$GetUserHistoryUseCaseInputImpl>
    implements _$$GetUserHistoryUseCaseInputImplCopyWith<$Res> {
  __$$GetUserHistoryUseCaseInputImplCopyWithImpl(
      _$GetUserHistoryUseCaseInputImpl _value,
      $Res Function(_$GetUserHistoryUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserHistoryUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = freezed,
  }) {
    return _then(_$GetUserHistoryUseCaseInputImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetUserHistoryUseCaseInputImpl implements _GetUserHistoryUseCaseInput {
  const _$GetUserHistoryUseCaseInputImpl({required this.page, this.size});

  @override
  final int page;
  @override
  final int? size;

  @override
  String toString() {
    return 'GetUserHistoryUseCaseInput(page: $page, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserHistoryUseCaseInputImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, size);

  /// Create a copy of GetUserHistoryUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserHistoryUseCaseInputImplCopyWith<_$GetUserHistoryUseCaseInputImpl>
      get copyWith => __$$GetUserHistoryUseCaseInputImplCopyWithImpl<
          _$GetUserHistoryUseCaseInputImpl>(this, _$identity);
}

abstract class _GetUserHistoryUseCaseInput
    implements GetUserHistoryUseCaseInput {
  const factory _GetUserHistoryUseCaseInput(
      {required final int page,
      final int? size}) = _$GetUserHistoryUseCaseInputImpl;

  @override
  int get page;
  @override
  int? get size;

  /// Create a copy of GetUserHistoryUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserHistoryUseCaseInputImplCopyWith<_$GetUserHistoryUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetUserHistoryUseCaseOutput {
  List<QueryHistoryEntity> get result => throw _privateConstructorUsedError;

  /// Create a copy of GetUserHistoryUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserHistoryUseCaseOutputCopyWith<GetUserHistoryUseCaseOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserHistoryUseCaseOutputCopyWith<$Res> {
  factory $GetUserHistoryUseCaseOutputCopyWith(
          GetUserHistoryUseCaseOutput value,
          $Res Function(GetUserHistoryUseCaseOutput) then) =
      _$GetUserHistoryUseCaseOutputCopyWithImpl<$Res,
          GetUserHistoryUseCaseOutput>;
  @useResult
  $Res call({List<QueryHistoryEntity> result});
}

/// @nodoc
class _$GetUserHistoryUseCaseOutputCopyWithImpl<$Res,
        $Val extends GetUserHistoryUseCaseOutput>
    implements $GetUserHistoryUseCaseOutputCopyWith<$Res> {
  _$GetUserHistoryUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserHistoryUseCaseOutput
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
              as List<QueryHistoryEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserHistoryUseCaseOutputImplCopyWith<$Res>
    implements $GetUserHistoryUseCaseOutputCopyWith<$Res> {
  factory _$$GetUserHistoryUseCaseOutputImplCopyWith(
          _$GetUserHistoryUseCaseOutputImpl value,
          $Res Function(_$GetUserHistoryUseCaseOutputImpl) then) =
      __$$GetUserHistoryUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QueryHistoryEntity> result});
}

/// @nodoc
class __$$GetUserHistoryUseCaseOutputImplCopyWithImpl<$Res>
    extends _$GetUserHistoryUseCaseOutputCopyWithImpl<$Res,
        _$GetUserHistoryUseCaseOutputImpl>
    implements _$$GetUserHistoryUseCaseOutputImplCopyWith<$Res> {
  __$$GetUserHistoryUseCaseOutputImplCopyWithImpl(
      _$GetUserHistoryUseCaseOutputImpl _value,
      $Res Function(_$GetUserHistoryUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserHistoryUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GetUserHistoryUseCaseOutputImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<QueryHistoryEntity>,
    ));
  }
}

/// @nodoc

class _$GetUserHistoryUseCaseOutputImpl
    implements _GetUserHistoryUseCaseOutput {
  const _$GetUserHistoryUseCaseOutputImpl(
      {required final List<QueryHistoryEntity> result})
      : _result = result;

  final List<QueryHistoryEntity> _result;
  @override
  List<QueryHistoryEntity> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'GetUserHistoryUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserHistoryUseCaseOutputImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of GetUserHistoryUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserHistoryUseCaseOutputImplCopyWith<_$GetUserHistoryUseCaseOutputImpl>
      get copyWith => __$$GetUserHistoryUseCaseOutputImplCopyWithImpl<
          _$GetUserHistoryUseCaseOutputImpl>(this, _$identity);
}

abstract class _GetUserHistoryUseCaseOutput
    implements GetUserHistoryUseCaseOutput {
  const factory _GetUserHistoryUseCaseOutput(
          {required final List<QueryHistoryEntity> result}) =
      _$GetUserHistoryUseCaseOutputImpl;

  @override
  List<QueryHistoryEntity> get result;

  /// Create a copy of GetUserHistoryUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserHistoryUseCaseOutputImplCopyWith<_$GetUserHistoryUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
