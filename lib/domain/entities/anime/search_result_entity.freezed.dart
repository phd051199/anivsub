// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchResultEntity {
  List<AnimeDataEntity> get items => throw _privateConstructorUsedError;
  int? get curPage => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;

  /// Create a copy of SearchResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultEntityCopyWith<SearchResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEntityCopyWith<$Res> {
  factory $SearchResultEntityCopyWith(
          SearchResultEntity value, $Res Function(SearchResultEntity) then) =
      _$SearchResultEntityCopyWithImpl<$Res, SearchResultEntity>;
  @useResult
  $Res call({List<AnimeDataEntity> items, int? curPage, int? maxPage});
}

/// @nodoc
class _$SearchResultEntityCopyWithImpl<$Res, $Val extends SearchResultEntity>
    implements $SearchResultEntityCopyWith<$Res> {
  _$SearchResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResultEntity
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
              as List<AnimeDataEntity>,
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
abstract class _$$SearchResultEntityImplCopyWith<$Res>
    implements $SearchResultEntityCopyWith<$Res> {
  factory _$$SearchResultEntityImplCopyWith(_$SearchResultEntityImpl value,
          $Res Function(_$SearchResultEntityImpl) then) =
      __$$SearchResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnimeDataEntity> items, int? curPage, int? maxPage});
}

/// @nodoc
class __$$SearchResultEntityImplCopyWithImpl<$Res>
    extends _$SearchResultEntityCopyWithImpl<$Res, _$SearchResultEntityImpl>
    implements _$$SearchResultEntityImplCopyWith<$Res> {
  __$$SearchResultEntityImplCopyWithImpl(_$SearchResultEntityImpl _value,
      $Res Function(_$SearchResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? curPage = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_$SearchResultEntityImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AnimeDataEntity>,
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

class _$SearchResultEntityImpl extends _SearchResultEntity {
  const _$SearchResultEntityImpl(
      {required final List<AnimeDataEntity> items, this.curPage, this.maxPage})
      : _items = items,
        super._();

  final List<AnimeDataEntity> _items;
  @override
  List<AnimeDataEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int? curPage;
  @override
  final int? maxPage;

  /// Create a copy of SearchResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultEntityImplCopyWith<_$SearchResultEntityImpl> get copyWith =>
      __$$SearchResultEntityImplCopyWithImpl<_$SearchResultEntityImpl>(
          this, _$identity);
}

abstract class _SearchResultEntity extends SearchResultEntity {
  const factory _SearchResultEntity(
      {required final List<AnimeDataEntity> items,
      final int? curPage,
      final int? maxPage}) = _$SearchResultEntityImpl;
  const _SearchResultEntity._() : super._();

  @override
  List<AnimeDataEntity> get items;
  @override
  int? get curPage;
  @override
  int? get maxPage;

  /// Create a copy of SearchResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultEntityImplCopyWith<_$SearchResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
