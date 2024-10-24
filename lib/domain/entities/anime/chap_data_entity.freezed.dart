// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chap_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapDataEntity {
  String get id => throw _privateConstructorUsedError;
  String get play => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of ChapDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapDataEntityCopyWith<ChapDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapDataEntityCopyWith<$Res> {
  factory $ChapDataEntityCopyWith(
          ChapDataEntity value, $Res Function(ChapDataEntity) then) =
      _$ChapDataEntityCopyWithImpl<$Res, ChapDataEntity>;
  @useResult
  $Res call({String id, String play, String hash, String name});
}

/// @nodoc
class _$ChapDataEntityCopyWithImpl<$Res, $Val extends ChapDataEntity>
    implements $ChapDataEntityCopyWith<$Res> {
  _$ChapDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? hash = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapDataEntityImplCopyWith<$Res>
    implements $ChapDataEntityCopyWith<$Res> {
  factory _$$ChapDataEntityImplCopyWith(_$ChapDataEntityImpl value,
          $Res Function(_$ChapDataEntityImpl) then) =
      __$$ChapDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String play, String hash, String name});
}

/// @nodoc
class __$$ChapDataEntityImplCopyWithImpl<$Res>
    extends _$ChapDataEntityCopyWithImpl<$Res, _$ChapDataEntityImpl>
    implements _$$ChapDataEntityImplCopyWith<$Res> {
  __$$ChapDataEntityImplCopyWithImpl(
      _$ChapDataEntityImpl _value, $Res Function(_$ChapDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? hash = null,
    Object? name = null,
  }) {
    return _then(_$ChapDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChapDataEntityImpl extends _ChapDataEntity {
  const _$ChapDataEntityImpl(
      {required this.id,
      required this.play,
      required this.hash,
      required this.name})
      : super._();

  @override
  final String id;
  @override
  final String play;
  @override
  final String hash;
  @override
  final String name;

  /// Create a copy of ChapDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapDataEntityImplCopyWith<_$ChapDataEntityImpl> get copyWith =>
      __$$ChapDataEntityImplCopyWithImpl<_$ChapDataEntityImpl>(
          this, _$identity);
}

abstract class _ChapDataEntity extends ChapDataEntity {
  const factory _ChapDataEntity(
      {required final String id,
      required final String play,
      required final String hash,
      required final String name}) = _$ChapDataEntityImpl;
  const _ChapDataEntity._() : super._();

  @override
  String get id;
  @override
  String get play;
  @override
  String get hash;
  @override
  String get name;

  /// Create a copy of ChapDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapDataEntityImplCopyWith<_$ChapDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
