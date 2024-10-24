// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_more_comment_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetMoreCommentResponseEntity {
  int? get ar => throw _privateConstructorUsedError;
  PayloadEntity? get payload => throw _privateConstructorUsedError;
  double? get lid => throw _privateConstructorUsedError;

  /// Create a copy of GetMoreCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMoreCommentResponseEntityCopyWith<GetMoreCommentResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoreCommentResponseEntityCopyWith<$Res> {
  factory $GetMoreCommentResponseEntityCopyWith(
          GetMoreCommentResponseEntity value,
          $Res Function(GetMoreCommentResponseEntity) then) =
      _$GetMoreCommentResponseEntityCopyWithImpl<$Res,
          GetMoreCommentResponseEntity>;
  @useResult
  $Res call({int? ar, PayloadEntity? payload, double? lid});

  $PayloadEntityCopyWith<$Res>? get payload;
}

/// @nodoc
class _$GetMoreCommentResponseEntityCopyWithImpl<$Res,
        $Val extends GetMoreCommentResponseEntity>
    implements $GetMoreCommentResponseEntityCopyWith<$Res> {
  _$GetMoreCommentResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMoreCommentResponseEntity
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
              as PayloadEntity?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of GetMoreCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayloadEntityCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadEntityCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetMoreCommentResponseEntityImplCopyWith<$Res>
    implements $GetMoreCommentResponseEntityCopyWith<$Res> {
  factory _$$GetMoreCommentResponseEntityImplCopyWith(
          _$GetMoreCommentResponseEntityImpl value,
          $Res Function(_$GetMoreCommentResponseEntityImpl) then) =
      __$$GetMoreCommentResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ar, PayloadEntity? payload, double? lid});

  @override
  $PayloadEntityCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$GetMoreCommentResponseEntityImplCopyWithImpl<$Res>
    extends _$GetMoreCommentResponseEntityCopyWithImpl<$Res,
        _$GetMoreCommentResponseEntityImpl>
    implements _$$GetMoreCommentResponseEntityImplCopyWith<$Res> {
  __$$GetMoreCommentResponseEntityImplCopyWithImpl(
      _$GetMoreCommentResponseEntityImpl _value,
      $Res Function(_$GetMoreCommentResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMoreCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = freezed,
    Object? payload = freezed,
    Object? lid = freezed,
  }) {
    return _then(_$GetMoreCommentResponseEntityImpl(
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as int?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadEntity?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$GetMoreCommentResponseEntityImpl extends _GetMoreCommentResponseEntity {
  const _$GetMoreCommentResponseEntityImpl({this.ar, this.payload, this.lid})
      : super._();

  @override
  final int? ar;
  @override
  final PayloadEntity? payload;
  @override
  final double? lid;

  /// Create a copy of GetMoreCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMoreCommentResponseEntityImplCopyWith<
          _$GetMoreCommentResponseEntityImpl>
      get copyWith => __$$GetMoreCommentResponseEntityImplCopyWithImpl<
          _$GetMoreCommentResponseEntityImpl>(this, _$identity);
}

abstract class _GetMoreCommentResponseEntity
    extends GetMoreCommentResponseEntity {
  const factory _GetMoreCommentResponseEntity(
      {final int? ar,
      final PayloadEntity? payload,
      final double? lid}) = _$GetMoreCommentResponseEntityImpl;
  const _GetMoreCommentResponseEntity._() : super._();

  @override
  int? get ar;
  @override
  PayloadEntity? get payload;
  @override
  double? get lid;

  /// Create a copy of GetMoreCommentResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMoreCommentResponseEntityImplCopyWith<
          _$GetMoreCommentResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PayloadEntity {
  int? get totalCount => throw _privateConstructorUsedError;
  List<int>? get commentIDs => throw _privateConstructorUsedError;
  String? get afterCursor => throw _privateConstructorUsedError;
  Map<String, IdMapEntity>? get idMap => throw _privateConstructorUsedError;

  /// Create a copy of PayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayloadEntityCopyWith<PayloadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadEntityCopyWith<$Res> {
  factory $PayloadEntityCopyWith(
          PayloadEntity value, $Res Function(PayloadEntity) then) =
      _$PayloadEntityCopyWithImpl<$Res, PayloadEntity>;
  @useResult
  $Res call(
      {int? totalCount,
      List<int>? commentIDs,
      String? afterCursor,
      Map<String, IdMapEntity>? idMap});
}

/// @nodoc
class _$PayloadEntityCopyWithImpl<$Res, $Val extends PayloadEntity>
    implements $PayloadEntityCopyWith<$Res> {
  _$PayloadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? commentIDs = freezed,
    Object? afterCursor = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentIDs: freezed == commentIDs
          ? _value.commentIDs
          : commentIDs // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      afterCursor: freezed == afterCursor
          ? _value.afterCursor
          : afterCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      idMap: freezed == idMap
          ? _value.idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayloadEntityImplCopyWith<$Res>
    implements $PayloadEntityCopyWith<$Res> {
  factory _$$PayloadEntityImplCopyWith(
          _$PayloadEntityImpl value, $Res Function(_$PayloadEntityImpl) then) =
      __$$PayloadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalCount,
      List<int>? commentIDs,
      String? afterCursor,
      Map<String, IdMapEntity>? idMap});
}

/// @nodoc
class __$$PayloadEntityImplCopyWithImpl<$Res>
    extends _$PayloadEntityCopyWithImpl<$Res, _$PayloadEntityImpl>
    implements _$$PayloadEntityImplCopyWith<$Res> {
  __$$PayloadEntityImplCopyWithImpl(
      _$PayloadEntityImpl _value, $Res Function(_$PayloadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? commentIDs = freezed,
    Object? afterCursor = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_$PayloadEntityImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentIDs: freezed == commentIDs
          ? _value._commentIDs
          : commentIDs // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      afterCursor: freezed == afterCursor
          ? _value.afterCursor
          : afterCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      idMap: freezed == idMap
          ? _value._idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapEntity>?,
    ));
  }
}

/// @nodoc

class _$PayloadEntityImpl extends _PayloadEntity {
  const _$PayloadEntityImpl(
      {this.totalCount,
      final List<int>? commentIDs,
      this.afterCursor,
      final Map<String, IdMapEntity>? idMap})
      : _commentIDs = commentIDs,
        _idMap = idMap,
        super._();

  @override
  final int? totalCount;
  final List<int>? _commentIDs;
  @override
  List<int>? get commentIDs {
    final value = _commentIDs;
    if (value == null) return null;
    if (_commentIDs is EqualUnmodifiableListView) return _commentIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? afterCursor;
  final Map<String, IdMapEntity>? _idMap;
  @override
  Map<String, IdMapEntity>? get idMap {
    final value = _idMap;
    if (value == null) return null;
    if (_idMap is EqualUnmodifiableMapView) return _idMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadEntityImplCopyWith<_$PayloadEntityImpl> get copyWith =>
      __$$PayloadEntityImplCopyWithImpl<_$PayloadEntityImpl>(this, _$identity);
}

abstract class _PayloadEntity extends PayloadEntity {
  const factory _PayloadEntity(
      {final int? totalCount,
      final List<int>? commentIDs,
      final String? afterCursor,
      final Map<String, IdMapEntity>? idMap}) = _$PayloadEntityImpl;
  const _PayloadEntity._() : super._();

  @override
  int? get totalCount;
  @override
  List<int>? get commentIDs;
  @override
  String? get afterCursor;
  @override
  Map<String, IdMapEntity>? get idMap;

  /// Create a copy of PayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayloadEntityImplCopyWith<_$PayloadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
