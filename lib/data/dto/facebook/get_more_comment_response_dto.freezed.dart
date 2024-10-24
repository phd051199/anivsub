// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_more_comment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMoreCommentResponseDTO _$GetMoreCommentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _GetMoreCommentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$GetMoreCommentResponseDTO {
  @JsonKey(name: '__ar')
  int? get ar => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  PayloadDTO? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'lid')
  double? get lid => throw _privateConstructorUsedError;

  /// Serializes this GetMoreCommentResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMoreCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMoreCommentResponseDTOCopyWith<GetMoreCommentResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoreCommentResponseDTOCopyWith<$Res> {
  factory $GetMoreCommentResponseDTOCopyWith(GetMoreCommentResponseDTO value,
          $Res Function(GetMoreCommentResponseDTO) then) =
      _$GetMoreCommentResponseDTOCopyWithImpl<$Res, GetMoreCommentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '__ar') int? ar,
      @JsonKey(name: 'payload') PayloadDTO? payload,
      @JsonKey(name: 'lid') double? lid});

  $PayloadDTOCopyWith<$Res>? get payload;
}

/// @nodoc
class _$GetMoreCommentResponseDTOCopyWithImpl<$Res,
        $Val extends GetMoreCommentResponseDTO>
    implements $GetMoreCommentResponseDTOCopyWith<$Res> {
  _$GetMoreCommentResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMoreCommentResponseDTO
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
              as PayloadDTO?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of GetMoreCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayloadDTOCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadDTOCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetMoreCommentResponseDTOImplCopyWith<$Res>
    implements $GetMoreCommentResponseDTOCopyWith<$Res> {
  factory _$$GetMoreCommentResponseDTOImplCopyWith(
          _$GetMoreCommentResponseDTOImpl value,
          $Res Function(_$GetMoreCommentResponseDTOImpl) then) =
      __$$GetMoreCommentResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__ar') int? ar,
      @JsonKey(name: 'payload') PayloadDTO? payload,
      @JsonKey(name: 'lid') double? lid});

  @override
  $PayloadDTOCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$GetMoreCommentResponseDTOImplCopyWithImpl<$Res>
    extends _$GetMoreCommentResponseDTOCopyWithImpl<$Res,
        _$GetMoreCommentResponseDTOImpl>
    implements _$$GetMoreCommentResponseDTOImplCopyWith<$Res> {
  __$$GetMoreCommentResponseDTOImplCopyWithImpl(
      _$GetMoreCommentResponseDTOImpl _value,
      $Res Function(_$GetMoreCommentResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMoreCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = freezed,
    Object? payload = freezed,
    Object? lid = freezed,
  }) {
    return _then(_$GetMoreCommentResponseDTOImpl(
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as int?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PayloadDTO?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMoreCommentResponseDTOImpl extends _GetMoreCommentResponseDTO {
  const _$GetMoreCommentResponseDTOImpl(
      {@JsonKey(name: '__ar') this.ar,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'lid') this.lid})
      : super._();

  factory _$GetMoreCommentResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMoreCommentResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: '__ar')
  final int? ar;
  @override
  @JsonKey(name: 'payload')
  final PayloadDTO? payload;
  @override
  @JsonKey(name: 'lid')
  final double? lid;

  /// Create a copy of GetMoreCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMoreCommentResponseDTOImplCopyWith<_$GetMoreCommentResponseDTOImpl>
      get copyWith => __$$GetMoreCommentResponseDTOImplCopyWithImpl<
          _$GetMoreCommentResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMoreCommentResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _GetMoreCommentResponseDTO extends GetMoreCommentResponseDTO {
  const factory _GetMoreCommentResponseDTO(
          {@JsonKey(name: '__ar') final int? ar,
          @JsonKey(name: 'payload') final PayloadDTO? payload,
          @JsonKey(name: 'lid') final double? lid}) =
      _$GetMoreCommentResponseDTOImpl;
  const _GetMoreCommentResponseDTO._() : super._();

  factory _GetMoreCommentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$GetMoreCommentResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: '__ar')
  int? get ar;
  @override
  @JsonKey(name: 'payload')
  PayloadDTO? get payload;
  @override
  @JsonKey(name: 'lid')
  double? get lid;

  /// Create a copy of GetMoreCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMoreCommentResponseDTOImplCopyWith<_$GetMoreCommentResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayloadDTO _$PayloadDTOFromJson(Map<String, dynamic> json) {
  return _PayloadDTO.fromJson(json);
}

/// @nodoc
mixin _$PayloadDTO {
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentIDs')
  List<int>? get commentIDs => throw _privateConstructorUsedError;
  @JsonKey(name: 'afterCursor')
  String? get afterCursor => throw _privateConstructorUsedError;
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap => throw _privateConstructorUsedError;

  /// Serializes this PayloadDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayloadDTOCopyWith<PayloadDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadDTOCopyWith<$Res> {
  factory $PayloadDTOCopyWith(
          PayloadDTO value, $Res Function(PayloadDTO) then) =
      _$PayloadDTOCopyWithImpl<$Res, PayloadDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'commentIDs') List<int>? commentIDs,
      @JsonKey(name: 'afterCursor') String? afterCursor,
      @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap});
}

/// @nodoc
class _$PayloadDTOCopyWithImpl<$Res, $Val extends PayloadDTO>
    implements $PayloadDTOCopyWith<$Res> {
  _$PayloadDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayloadDTO
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
              as Map<String, IdMapDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayloadDTOImplCopyWith<$Res>
    implements $PayloadDTOCopyWith<$Res> {
  factory _$$PayloadDTOImplCopyWith(
          _$PayloadDTOImpl value, $Res Function(_$PayloadDTOImpl) then) =
      __$$PayloadDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'commentIDs') List<int>? commentIDs,
      @JsonKey(name: 'afterCursor') String? afterCursor,
      @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap});
}

/// @nodoc
class __$$PayloadDTOImplCopyWithImpl<$Res>
    extends _$PayloadDTOCopyWithImpl<$Res, _$PayloadDTOImpl>
    implements _$$PayloadDTOImplCopyWith<$Res> {
  __$$PayloadDTOImplCopyWithImpl(
      _$PayloadDTOImpl _value, $Res Function(_$PayloadDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? commentIDs = freezed,
    Object? afterCursor = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_$PayloadDTOImpl(
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
              as Map<String, IdMapDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayloadDTOImpl extends _PayloadDTO {
  const _$PayloadDTOImpl(
      {@JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'commentIDs') final List<int>? commentIDs,
      @JsonKey(name: 'afterCursor') this.afterCursor,
      @JsonKey(name: 'idMap') final Map<String, IdMapDTO>? idMap})
      : _commentIDs = commentIDs,
        _idMap = idMap,
        super._();

  factory _$PayloadDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayloadDTOImplFromJson(json);

  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  final List<int>? _commentIDs;
  @override
  @JsonKey(name: 'commentIDs')
  List<int>? get commentIDs {
    final value = _commentIDs;
    if (value == null) return null;
    if (_commentIDs is EqualUnmodifiableListView) return _commentIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'afterCursor')
  final String? afterCursor;
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

  /// Create a copy of PayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayloadDTOImplCopyWith<_$PayloadDTOImpl> get copyWith =>
      __$$PayloadDTOImplCopyWithImpl<_$PayloadDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayloadDTOImplToJson(
      this,
    );
  }
}

abstract class _PayloadDTO extends PayloadDTO {
  const factory _PayloadDTO(
          {@JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'commentIDs') final List<int>? commentIDs,
          @JsonKey(name: 'afterCursor') final String? afterCursor,
          @JsonKey(name: 'idMap') final Map<String, IdMapDTO>? idMap}) =
      _$PayloadDTOImpl;
  const _PayloadDTO._() : super._();

  factory _PayloadDTO.fromJson(Map<String, dynamic> json) =
      _$PayloadDTOImpl.fromJson;

  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'commentIDs')
  List<int>? get commentIDs;
  @override
  @JsonKey(name: 'afterCursor')
  String? get afterCursor;
  @override
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap;

  /// Create a copy of PayloadDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayloadDTOImplCopyWith<_$PayloadDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
