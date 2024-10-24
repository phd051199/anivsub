// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCommentResponseDTO _$PostCommentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PostCommentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PostCommentResponseDTO {
  @JsonKey(name: '__ar')
  int? get ar => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  PostCommentPayloadDTO? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'lid')
  String? get lid => throw _privateConstructorUsedError;

  /// Serializes this PostCommentResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentResponseDTOCopyWith<PostCommentResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentResponseDTOCopyWith<$Res> {
  factory $PostCommentResponseDTOCopyWith(PostCommentResponseDTO value,
          $Res Function(PostCommentResponseDTO) then) =
      _$PostCommentResponseDTOCopyWithImpl<$Res, PostCommentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '__ar') int? ar,
      @JsonKey(name: 'payload') PostCommentPayloadDTO? payload,
      @JsonKey(name: 'lid') String? lid});

  $PostCommentPayloadDTOCopyWith<$Res>? get payload;
}

/// @nodoc
class _$PostCommentResponseDTOCopyWithImpl<$Res,
        $Val extends PostCommentResponseDTO>
    implements $PostCommentResponseDTOCopyWith<$Res> {
  _$PostCommentResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentResponseDTO
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
              as PostCommentPayloadDTO?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCommentPayloadDTOCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PostCommentPayloadDTOCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostCommentResponseDTOImplCopyWith<$Res>
    implements $PostCommentResponseDTOCopyWith<$Res> {
  factory _$$PostCommentResponseDTOImplCopyWith(
          _$PostCommentResponseDTOImpl value,
          $Res Function(_$PostCommentResponseDTOImpl) then) =
      __$$PostCommentResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__ar') int? ar,
      @JsonKey(name: 'payload') PostCommentPayloadDTO? payload,
      @JsonKey(name: 'lid') String? lid});

  @override
  $PostCommentPayloadDTOCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$PostCommentResponseDTOImplCopyWithImpl<$Res>
    extends _$PostCommentResponseDTOCopyWithImpl<$Res,
        _$PostCommentResponseDTOImpl>
    implements _$$PostCommentResponseDTOImplCopyWith<$Res> {
  __$$PostCommentResponseDTOImplCopyWithImpl(
      _$PostCommentResponseDTOImpl _value,
      $Res Function(_$PostCommentResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = freezed,
    Object? payload = freezed,
    Object? lid = freezed,
  }) {
    return _then(_$PostCommentResponseDTOImpl(
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as int?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PostCommentPayloadDTO?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentResponseDTOImpl extends _PostCommentResponseDTO {
  const _$PostCommentResponseDTOImpl(
      {@JsonKey(name: '__ar') this.ar,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'lid') this.lid})
      : super._();

  factory _$PostCommentResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: '__ar')
  final int? ar;
  @override
  @JsonKey(name: 'payload')
  final PostCommentPayloadDTO? payload;
  @override
  @JsonKey(name: 'lid')
  final String? lid;

  /// Create a copy of PostCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentResponseDTOImplCopyWith<_$PostCommentResponseDTOImpl>
      get copyWith => __$$PostCommentResponseDTOImplCopyWithImpl<
          _$PostCommentResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _PostCommentResponseDTO extends PostCommentResponseDTO {
  const factory _PostCommentResponseDTO(
      {@JsonKey(name: '__ar') final int? ar,
      @JsonKey(name: 'payload') final PostCommentPayloadDTO? payload,
      @JsonKey(name: 'lid') final String? lid}) = _$PostCommentResponseDTOImpl;
  const _PostCommentResponseDTO._() : super._();

  factory _PostCommentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$PostCommentResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: '__ar')
  int? get ar;
  @override
  @JsonKey(name: 'payload')
  PostCommentPayloadDTO? get payload;
  @override
  @JsonKey(name: 'lid')
  String? get lid;

  /// Create a copy of PostCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentResponseDTOImplCopyWith<_$PostCommentResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostCommentPayloadDTO _$PostCommentPayloadDTOFromJson(
    Map<String, dynamic> json) {
  return _PostCommentPayloadDTO.fromJson(json);
}

/// @nodoc
mixin _$PostCommentPayloadDTO {
  @JsonKey(name: 'commentID')
  String? get commentID => throw _privateConstructorUsedError;
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap => throw _privateConstructorUsedError;

  /// Serializes this PostCommentPayloadDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCommentPayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentPayloadDTOCopyWith<PostCommentPayloadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentPayloadDTOCopyWith<$Res> {
  factory $PostCommentPayloadDTOCopyWith(PostCommentPayloadDTO value,
          $Res Function(PostCommentPayloadDTO) then) =
      _$PostCommentPayloadDTOCopyWithImpl<$Res, PostCommentPayloadDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'commentID') String? commentID,
      @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap});
}

/// @nodoc
class _$PostCommentPayloadDTOCopyWithImpl<$Res,
        $Val extends PostCommentPayloadDTO>
    implements $PostCommentPayloadDTOCopyWith<$Res> {
  _$PostCommentPayloadDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentPayloadDTO
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
              as Map<String, IdMapDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCommentPayloadDTOImplCopyWith<$Res>
    implements $PostCommentPayloadDTOCopyWith<$Res> {
  factory _$$PostCommentPayloadDTOImplCopyWith(
          _$PostCommentPayloadDTOImpl value,
          $Res Function(_$PostCommentPayloadDTOImpl) then) =
      __$$PostCommentPayloadDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'commentID') String? commentID,
      @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap});
}

/// @nodoc
class __$$PostCommentPayloadDTOImplCopyWithImpl<$Res>
    extends _$PostCommentPayloadDTOCopyWithImpl<$Res,
        _$PostCommentPayloadDTOImpl>
    implements _$$PostCommentPayloadDTOImplCopyWith<$Res> {
  __$$PostCommentPayloadDTOImplCopyWithImpl(_$PostCommentPayloadDTOImpl _value,
      $Res Function(_$PostCommentPayloadDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentPayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_$PostCommentPayloadDTOImpl(
      commentID: freezed == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as String?,
      idMap: freezed == idMap
          ? _value._idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentPayloadDTOImpl extends _PostCommentPayloadDTO {
  const _$PostCommentPayloadDTOImpl(
      {@JsonKey(name: 'commentID') this.commentID,
      @JsonKey(name: 'idMap') final Map<String, IdMapDTO>? idMap})
      : _idMap = idMap,
        super._();

  factory _$PostCommentPayloadDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentPayloadDTOImplFromJson(json);

  @override
  @JsonKey(name: 'commentID')
  final String? commentID;
  final Map<String, IdMapDTO>? _idMap;
  @override
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap {
    final value = _idMap;
    if (value == null) return null;
    if (_idMap is EqualUnmodifiableMapView) return _idMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PostCommentPayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentPayloadDTOImplCopyWith<_$PostCommentPayloadDTOImpl>
      get copyWith => __$$PostCommentPayloadDTOImplCopyWithImpl<
          _$PostCommentPayloadDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentPayloadDTOImplToJson(
      this,
    );
  }
}

abstract class _PostCommentPayloadDTO extends PostCommentPayloadDTO {
  const factory _PostCommentPayloadDTO(
          {@JsonKey(name: 'commentID') final String? commentID,
          @JsonKey(name: 'idMap') final Map<String, IdMapDTO>? idMap}) =
      _$PostCommentPayloadDTOImpl;
  const _PostCommentPayloadDTO._() : super._();

  factory _PostCommentPayloadDTO.fromJson(Map<String, dynamic> json) =
      _$PostCommentPayloadDTOImpl.fromJson;

  @override
  @JsonKey(name: 'commentID')
  String? get commentID;
  @override
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap;

  /// Create a copy of PostCommentPayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentPayloadDTOImplCopyWith<_$PostCommentPayloadDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
