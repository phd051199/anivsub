// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultDTO _$SearchResultDTOFromJson(Map<String, dynamic> json) {
  return _SearchResultDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchResultDTO {
  List<AnimeDataResponseDTO> get items => throw _privateConstructorUsedError;
  int? get curPage => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;

  /// Serializes this SearchResultDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultDTOCopyWith<SearchResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDTOCopyWith<$Res> {
  factory $SearchResultDTOCopyWith(
          SearchResultDTO value, $Res Function(SearchResultDTO) then) =
      _$SearchResultDTOCopyWithImpl<$Res, SearchResultDTO>;
  @useResult
  $Res call({List<AnimeDataResponseDTO> items, int? curPage, int? maxPage});
}

/// @nodoc
class _$SearchResultDTOCopyWithImpl<$Res, $Val extends SearchResultDTO>
    implements $SearchResultDTOCopyWith<$Res> {
  _$SearchResultDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? curPage = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AnimeDataResponseDTO>,
      curPage: freezed == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultDTOImplCopyWith<$Res>
    implements $SearchResultDTOCopyWith<$Res> {
  factory _$$SearchResultDTOImplCopyWith(_$SearchResultDTOImpl value,
          $Res Function(_$SearchResultDTOImpl) then) =
      __$$SearchResultDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnimeDataResponseDTO> items, int? curPage, int? maxPage});
}

/// @nodoc
class __$$SearchResultDTOImplCopyWithImpl<$Res>
    extends _$SearchResultDTOCopyWithImpl<$Res, _$SearchResultDTOImpl>
    implements _$$SearchResultDTOImplCopyWith<$Res> {
  __$$SearchResultDTOImplCopyWithImpl(
      _$SearchResultDTOImpl _value, $Res Function(_$SearchResultDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? curPage = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_$SearchResultDTOImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AnimeDataResponseDTO>,
      curPage: freezed == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultDTOImpl extends _SearchResultDTO {
  const _$SearchResultDTOImpl(
      {required final List<AnimeDataResponseDTO> items,
      this.curPage,
      this.maxPage})
      : _items = items,
        super._();

  factory _$SearchResultDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultDTOImplFromJson(json);

  final List<AnimeDataResponseDTO> _items;
  @override
  List<AnimeDataResponseDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int? curPage;
  @override
  final int? maxPage;

  /// Create a copy of SearchResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultDTOImplCopyWith<_$SearchResultDTOImpl> get copyWith =>
      __$$SearchResultDTOImplCopyWithImpl<_$SearchResultDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultDTOImplToJson(
      this,
    );
  }
}

abstract class _SearchResultDTO extends SearchResultDTO {
  const factory _SearchResultDTO(
      {required final List<AnimeDataResponseDTO> items,
      final int? curPage,
      final int? maxPage}) = _$SearchResultDTOImpl;
  const _SearchResultDTO._() : super._();

  factory _SearchResultDTO.fromJson(Map<String, dynamic> json) =
      _$SearchResultDTOImpl.fromJson;

  @override
  List<AnimeDataResponseDTO> get items;
  @override
  int? get curPage;
  @override
  int? get maxPage;

  /// Create a copy of SearchResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultDTOImplCopyWith<_$SearchResultDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
