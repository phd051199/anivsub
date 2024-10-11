// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_anime_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchAnimeUseCaseInput {
  String get keyword => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Create a copy of SearchAnimeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchAnimeUseCaseInputCopyWith<SearchAnimeUseCaseInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeUseCaseInputCopyWith<$Res> {
  factory $SearchAnimeUseCaseInputCopyWith(SearchAnimeUseCaseInput value,
          $Res Function(SearchAnimeUseCaseInput) then) =
      _$SearchAnimeUseCaseInputCopyWithImpl<$Res, SearchAnimeUseCaseInput>;
  @useResult
  $Res call({String keyword, int? page});
}

/// @nodoc
class _$SearchAnimeUseCaseInputCopyWithImpl<$Res,
        $Val extends SearchAnimeUseCaseInput>
    implements $SearchAnimeUseCaseInputCopyWith<$Res> {
  _$SearchAnimeUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchAnimeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAnimeUseCaseInputImplCopyWith<$Res>
    implements $SearchAnimeUseCaseInputCopyWith<$Res> {
  factory _$$SearchAnimeUseCaseInputImplCopyWith(
          _$SearchAnimeUseCaseInputImpl value,
          $Res Function(_$SearchAnimeUseCaseInputImpl) then) =
      __$$SearchAnimeUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, int? page});
}

/// @nodoc
class __$$SearchAnimeUseCaseInputImplCopyWithImpl<$Res>
    extends _$SearchAnimeUseCaseInputCopyWithImpl<$Res,
        _$SearchAnimeUseCaseInputImpl>
    implements _$$SearchAnimeUseCaseInputImplCopyWith<$Res> {
  __$$SearchAnimeUseCaseInputImplCopyWithImpl(
      _$SearchAnimeUseCaseInputImpl _value,
      $Res Function(_$SearchAnimeUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAnimeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = freezed,
  }) {
    return _then(_$SearchAnimeUseCaseInputImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SearchAnimeUseCaseInputImpl implements _SearchAnimeUseCaseInput {
  const _$SearchAnimeUseCaseInputImpl({required this.keyword, this.page});

  @override
  final String keyword;
  @override
  final int? page;

  @override
  String toString() {
    return 'SearchAnimeUseCaseInput(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeUseCaseInputImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  /// Create a copy of SearchAnimeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeUseCaseInputImplCopyWith<_$SearchAnimeUseCaseInputImpl>
      get copyWith => __$$SearchAnimeUseCaseInputImplCopyWithImpl<
          _$SearchAnimeUseCaseInputImpl>(this, _$identity);
}

abstract class _SearchAnimeUseCaseInput implements SearchAnimeUseCaseInput {
  const factory _SearchAnimeUseCaseInput(
      {required final String keyword,
      final int? page}) = _$SearchAnimeUseCaseInputImpl;

  @override
  String get keyword;
  @override
  int? get page;

  /// Create a copy of SearchAnimeUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAnimeUseCaseInputImplCopyWith<_$SearchAnimeUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAnimeUseCaseOutput {
  SearchResultEntity get result => throw _privateConstructorUsedError;

  /// Create a copy of SearchAnimeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchAnimeUseCaseOutputCopyWith<SearchAnimeUseCaseOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeUseCaseOutputCopyWith<$Res> {
  factory $SearchAnimeUseCaseOutputCopyWith(SearchAnimeUseCaseOutput value,
          $Res Function(SearchAnimeUseCaseOutput) then) =
      _$SearchAnimeUseCaseOutputCopyWithImpl<$Res, SearchAnimeUseCaseOutput>;
  @useResult
  $Res call({SearchResultEntity result});
}

/// @nodoc
class _$SearchAnimeUseCaseOutputCopyWithImpl<$Res,
        $Val extends SearchAnimeUseCaseOutput>
    implements $SearchAnimeUseCaseOutputCopyWith<$Res> {
  _$SearchAnimeUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchAnimeUseCaseOutput
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
              as SearchResultEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAnimeUseCaseOutputImplCopyWith<$Res>
    implements $SearchAnimeUseCaseOutputCopyWith<$Res> {
  factory _$$SearchAnimeUseCaseOutputImplCopyWith(
          _$SearchAnimeUseCaseOutputImpl value,
          $Res Function(_$SearchAnimeUseCaseOutputImpl) then) =
      __$$SearchAnimeUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchResultEntity result});
}

/// @nodoc
class __$$SearchAnimeUseCaseOutputImplCopyWithImpl<$Res>
    extends _$SearchAnimeUseCaseOutputCopyWithImpl<$Res,
        _$SearchAnimeUseCaseOutputImpl>
    implements _$$SearchAnimeUseCaseOutputImplCopyWith<$Res> {
  __$$SearchAnimeUseCaseOutputImplCopyWithImpl(
      _$SearchAnimeUseCaseOutputImpl _value,
      $Res Function(_$SearchAnimeUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAnimeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SearchAnimeUseCaseOutputImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity,
    ));
  }
}

/// @nodoc

class _$SearchAnimeUseCaseOutputImpl implements _SearchAnimeUseCaseOutput {
  const _$SearchAnimeUseCaseOutputImpl({required this.result});

  @override
  final SearchResultEntity result;

  @override
  String toString() {
    return 'SearchAnimeUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeUseCaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of SearchAnimeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeUseCaseOutputImplCopyWith<_$SearchAnimeUseCaseOutputImpl>
      get copyWith => __$$SearchAnimeUseCaseOutputImplCopyWithImpl<
          _$SearchAnimeUseCaseOutputImpl>(this, _$identity);
}

abstract class _SearchAnimeUseCaseOutput implements SearchAnimeUseCaseOutput {
  const factory _SearchAnimeUseCaseOutput(
          {required final SearchResultEntity result}) =
      _$SearchAnimeUseCaseOutputImpl;

  @override
  SearchResultEntity get result;

  /// Create a copy of SearchAnimeUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAnimeUseCaseOutputImplCopyWith<_$SearchAnimeUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
