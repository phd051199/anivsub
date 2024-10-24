// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_search_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreSearchItemEntity {
  String get image => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Create a copy of PreSearchItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreSearchItemEntityCopyWith<PreSearchItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreSearchItemEntityCopyWith<$Res> {
  factory $PreSearchItemEntityCopyWith(
          PreSearchItemEntity value, $Res Function(PreSearchItemEntity) then) =
      _$PreSearchItemEntityCopyWithImpl<$Res, PreSearchItemEntity>;
  @useResult
  $Res call({String image, String path, String name, String status});
}

/// @nodoc
class _$PreSearchItemEntityCopyWithImpl<$Res, $Val extends PreSearchItemEntity>
    implements $PreSearchItemEntityCopyWith<$Res> {
  _$PreSearchItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreSearchItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? path = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreSearchItemEntityImplCopyWith<$Res>
    implements $PreSearchItemEntityCopyWith<$Res> {
  factory _$$PreSearchItemEntityImplCopyWith(_$PreSearchItemEntityImpl value,
          $Res Function(_$PreSearchItemEntityImpl) then) =
      __$$PreSearchItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String path, String name, String status});
}

/// @nodoc
class __$$PreSearchItemEntityImplCopyWithImpl<$Res>
    extends _$PreSearchItemEntityCopyWithImpl<$Res, _$PreSearchItemEntityImpl>
    implements _$$PreSearchItemEntityImplCopyWith<$Res> {
  __$$PreSearchItemEntityImplCopyWithImpl(_$PreSearchItemEntityImpl _value,
      $Res Function(_$PreSearchItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreSearchItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? path = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$PreSearchItemEntityImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreSearchItemEntityImpl extends _PreSearchItemEntity {
  const _$PreSearchItemEntityImpl(
      {required this.image,
      required this.path,
      required this.name,
      required this.status})
      : super._();

  @override
  final String image;
  @override
  final String path;
  @override
  final String name;
  @override
  final String status;

  /// Create a copy of PreSearchItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreSearchItemEntityImplCopyWith<_$PreSearchItemEntityImpl> get copyWith =>
      __$$PreSearchItemEntityImplCopyWithImpl<_$PreSearchItemEntityImpl>(
          this, _$identity);
}

abstract class _PreSearchItemEntity extends PreSearchItemEntity {
  const factory _PreSearchItemEntity(
      {required final String image,
      required final String path,
      required final String name,
      required final String status}) = _$PreSearchItemEntityImpl;
  const _PreSearchItemEntity._() : super._();

  @override
  String get image;
  @override
  String get path;
  @override
  String get name;
  @override
  String get status;

  /// Create a copy of PreSearchItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreSearchItemEntityImplCopyWith<_$PreSearchItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
