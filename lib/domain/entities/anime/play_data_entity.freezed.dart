// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayDataEntity {
  List<ChapDataEntity> get chaps => throw _privateConstructorUsedError;
  List<int>? get update => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get poster => throw _privateConstructorUsedError;

  /// Create a copy of PlayDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayDataEntityCopyWith<PlayDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayDataEntityCopyWith<$Res> {
  factory $PlayDataEntityCopyWith(
          PlayDataEntity value, $Res Function(PlayDataEntity) then) =
      _$PlayDataEntityCopyWithImpl<$Res, PlayDataEntity>;
  @useResult
  $Res call(
      {List<ChapDataEntity> chaps,
      List<int>? update,
      String image,
      String poster});
}

/// @nodoc
class _$PlayDataEntityCopyWithImpl<$Res, $Val extends PlayDataEntity>
    implements $PlayDataEntityCopyWith<$Res> {
  _$PlayDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chaps = null,
    Object? update = freezed,
    Object? image = null,
    Object? poster = null,
  }) {
    return _then(_value.copyWith(
      chaps: null == chaps
          ? _value.chaps
          : chaps // ignore: cast_nullable_to_non_nullable
              as List<ChapDataEntity>,
      update: freezed == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayDataEntityImplCopyWith<$Res>
    implements $PlayDataEntityCopyWith<$Res> {
  factory _$$PlayDataEntityImplCopyWith(_$PlayDataEntityImpl value,
          $Res Function(_$PlayDataEntityImpl) then) =
      __$$PlayDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChapDataEntity> chaps,
      List<int>? update,
      String image,
      String poster});
}

/// @nodoc
class __$$PlayDataEntityImplCopyWithImpl<$Res>
    extends _$PlayDataEntityCopyWithImpl<$Res, _$PlayDataEntityImpl>
    implements _$$PlayDataEntityImplCopyWith<$Res> {
  __$$PlayDataEntityImplCopyWithImpl(
      _$PlayDataEntityImpl _value, $Res Function(_$PlayDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chaps = null,
    Object? update = freezed,
    Object? image = null,
    Object? poster = null,
  }) {
    return _then(_$PlayDataEntityImpl(
      chaps: null == chaps
          ? _value._chaps
          : chaps // ignore: cast_nullable_to_non_nullable
              as List<ChapDataEntity>,
      update: freezed == update
          ? _value._update
          : update // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayDataEntityImpl extends _PlayDataEntity {
  const _$PlayDataEntityImpl(
      {required final List<ChapDataEntity> chaps,
      final List<int>? update,
      required this.image,
      required this.poster})
      : _chaps = chaps,
        _update = update,
        super._();

  final List<ChapDataEntity> _chaps;
  @override
  List<ChapDataEntity> get chaps {
    if (_chaps is EqualUnmodifiableListView) return _chaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chaps);
  }

  final List<int>? _update;
  @override
  List<int>? get update {
    final value = _update;
    if (value == null) return null;
    if (_update is EqualUnmodifiableListView) return _update;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String image;
  @override
  final String poster;

  /// Create a copy of PlayDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayDataEntityImplCopyWith<_$PlayDataEntityImpl> get copyWith =>
      __$$PlayDataEntityImplCopyWithImpl<_$PlayDataEntityImpl>(
          this, _$identity);
}

abstract class _PlayDataEntity extends PlayDataEntity {
  const factory _PlayDataEntity(
      {required final List<ChapDataEntity> chaps,
      final List<int>? update,
      required final String image,
      required final String poster}) = _$PlayDataEntityImpl;
  const _PlayDataEntity._() : super._();

  @override
  List<ChapDataEntity> get chaps;
  @override
  List<int>? get update;
  @override
  String get image;
  @override
  String get poster;

  /// Create a copy of PlayDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayDataEntityImplCopyWith<_$PlayDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
