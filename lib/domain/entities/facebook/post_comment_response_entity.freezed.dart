// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostCommentResponseEntity {
  int? get ar => throw _privateConstructorUsedError;
  PostCommentPayloadEntity? get payload => throw _privateConstructorUsedError;
  String? get lid => throw _privateConstructorUsedError;

  /// Create a copy of PostCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentResponseEntityCopyWith<PostCommentResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentResponseEntityCopyWith<$Res> {
  factory $PostCommentResponseEntityCopyWith(PostCommentResponseEntity value,
          $Res Function(PostCommentResponseEntity) then) =
      _$PostCommentResponseEntityCopyWithImpl<$Res, PostCommentResponseEntity>;
  @useResult
  $Res call({int? ar, PostCommentPayloadEntity? payload, String? lid});

  $PostCommentPayloadEntityCopyWith<$Res>? get payload;
}

/// @nodoc
class _$PostCommentResponseEntityCopyWithImpl<$Res,
        $Val extends PostCommentResponseEntity>
    implements $PostCommentResponseEntityCopyWith<$Res> {
  _$PostCommentResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = freezed,
    Object? payload = freezed,
    Object? lid = freezed,
  }) {
    return _then(_value.copyWith(
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as int?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PostCommentPayloadEntity?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCommentPayloadEntityCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PostCommentPayloadEntityCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostCommentResponseEntityImplCopyWith<$Res>
    implements $PostCommentResponseEntityCopyWith<$Res> {
  factory _$$PostCommentResponseEntityImplCopyWith(
          _$PostCommentResponseEntityImpl value,
          $Res Function(_$PostCommentResponseEntityImpl) then) =
      __$$PostCommentResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ar, PostCommentPayloadEntity? payload, String? lid});

  @override
  $PostCommentPayloadEntityCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$PostCommentResponseEntityImplCopyWithImpl<$Res>
    extends _$PostCommentResponseEntityCopyWithImpl<$Res,
        _$PostCommentResponseEntityImpl>
    implements _$$PostCommentResponseEntityImplCopyWith<$Res> {
  __$$PostCommentResponseEntityImplCopyWithImpl(
      _$PostCommentResponseEntityImpl _value,
      $Res Function(_$PostCommentResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = freezed,
    Object? payload = freezed,
    Object? lid = freezed,
  }) {
    return _then(_$PostCommentResponseEntityImpl(
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as int?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PostCommentPayloadEntity?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostCommentResponseEntityImpl extends _PostCommentResponseEntity {
  const _$PostCommentResponseEntityImpl({this.ar, this.payload, this.lid})
      : super._();

  @override
  final int? ar;
  @override
  final PostCommentPayloadEntity? payload;
  @override
  final String? lid;

  /// Create a copy of PostCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentResponseEntityImplCopyWith<_$PostCommentResponseEntityImpl>
      get copyWith => __$$PostCommentResponseEntityImplCopyWithImpl<
          _$PostCommentResponseEntityImpl>(this, _$identity);
}

abstract class _PostCommentResponseEntity extends PostCommentResponseEntity {
  const factory _PostCommentResponseEntity(
      {final int? ar,
      final PostCommentPayloadEntity? payload,
      final String? lid}) = _$PostCommentResponseEntityImpl;
  const _PostCommentResponseEntity._() : super._();

  @override
  int? get ar;
  @override
  PostCommentPayloadEntity? get payload;
  @override
  String? get lid;

  /// Create a copy of PostCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentResponseEntityImplCopyWith<_$PostCommentResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostCommentPayloadEntity {
  String? get commentID => throw _privateConstructorUsedError;
  Map<String, IdMapEntity>? get idMap => throw _privateConstructorUsedError;

  /// Create a copy of PostCommentPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentPayloadEntityCopyWith<PostCommentPayloadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentPayloadEntityCopyWith<$Res> {
  factory $PostCommentPayloadEntityCopyWith(PostCommentPayloadEntity value,
          $Res Function(PostCommentPayloadEntity) then) =
      _$PostCommentPayloadEntityCopyWithImpl<$Res, PostCommentPayloadEntity>;
  @useResult
  $Res call({String? commentID, Map<String, IdMapEntity>? idMap});
}

/// @nodoc
class _$PostCommentPayloadEntityCopyWithImpl<$Res,
        $Val extends PostCommentPayloadEntity>
    implements $PostCommentPayloadEntityCopyWith<$Res> {
  _$PostCommentPayloadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_value.copyWith(
      commentID: freezed == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as String?,
      idMap: freezed == idMap
          ? _value.idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCommentPayloadEntityImplCopyWith<$Res>
    implements $PostCommentPayloadEntityCopyWith<$Res> {
  factory _$$PostCommentPayloadEntityImplCopyWith(
          _$PostCommentPayloadEntityImpl value,
          $Res Function(_$PostCommentPayloadEntityImpl) then) =
      __$$PostCommentPayloadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? commentID, Map<String, IdMapEntity>? idMap});
}

/// @nodoc
class __$$PostCommentPayloadEntityImplCopyWithImpl<$Res>
    extends _$PostCommentPayloadEntityCopyWithImpl<$Res,
        _$PostCommentPayloadEntityImpl>
    implements _$$PostCommentPayloadEntityImplCopyWith<$Res> {
  __$$PostCommentPayloadEntityImplCopyWithImpl(
      _$PostCommentPayloadEntityImpl _value,
      $Res Function(_$PostCommentPayloadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_$PostCommentPayloadEntityImpl(
      commentID: freezed == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as String?,
      idMap: freezed == idMap
          ? _value._idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapEntity>?,
    ));
  }
}

/// @nodoc

class _$PostCommentPayloadEntityImpl extends _PostCommentPayloadEntity {
  const _$PostCommentPayloadEntityImpl(
      {this.commentID, final Map<String, IdMapEntity>? idMap})
      : _idMap = idMap,
        super._();

  @override
  final String? commentID;
  final Map<String, IdMapEntity>? _idMap;
  @override
  Map<String, IdMapEntity>? get idMap {
    final value = _idMap;
    if (value == null) return null;
    if (_idMap is EqualUnmodifiableMapView) return _idMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PostCommentPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentPayloadEntityImplCopyWith<_$PostCommentPayloadEntityImpl>
      get copyWith => __$$PostCommentPayloadEntityImplCopyWithImpl<
          _$PostCommentPayloadEntityImpl>(this, _$identity);
}

abstract class _PostCommentPayloadEntity extends PostCommentPayloadEntity {
  const factory _PostCommentPayloadEntity(
      {final String? commentID,
      final Map<String, IdMapEntity>? idMap}) = _$PostCommentPayloadEntityImpl;
  const _PostCommentPayloadEntity._() : super._();

  @override
  String? get commentID;
  @override
  Map<String, IdMapEntity>? get idMap;

  /// Create a copy of PostCommentPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentPayloadEntityImplCopyWith<_$PostCommentPayloadEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
