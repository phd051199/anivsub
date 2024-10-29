// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_param_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryHistoryParamsDTO _$QueryHistoryParamsDTOFromJson(
    Map<String, dynamic> json) {
  return _QueryHistoryParamsDTO.fromJson(json);
}

/// @nodoc
mixin _$QueryHistoryParamsDTO {
  @JsonKey(name: 'user_uid')
  String? get userUid => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  /// Serializes this QueryHistoryParamsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryHistoryParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryHistoryParamsDTOCopyWith<QueryHistoryParamsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryHistoryParamsDTOCopyWith<$Res> {
  factory $QueryHistoryParamsDTOCopyWith(QueryHistoryParamsDTO value,
          $Res Function(QueryHistoryParamsDTO) then) =
      _$QueryHistoryParamsDTOCopyWithImpl<$Res, QueryHistoryParamsDTO>;
  @useResult
  $Res call({@JsonKey(name: 'user_uid') String? userUid, int? page, int? size});
}

/// @nodoc
class _$QueryHistoryParamsDTOCopyWithImpl<$Res,
        $Val extends QueryHistoryParamsDTO>
    implements $QueryHistoryParamsDTOCopyWith<$Res> {
  _$QueryHistoryParamsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryHistoryParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      userUid: freezed == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryHistoryParamsDTOImplCopyWith<$Res>
    implements $QueryHistoryParamsDTOCopyWith<$Res> {
  factory _$$QueryHistoryParamsDTOImplCopyWith(
          _$QueryHistoryParamsDTOImpl value,
          $Res Function(_$QueryHistoryParamsDTOImpl) then) =
      __$$QueryHistoryParamsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_uid') String? userUid, int? page, int? size});
}

/// @nodoc
class __$$QueryHistoryParamsDTOImplCopyWithImpl<$Res>
    extends _$QueryHistoryParamsDTOCopyWithImpl<$Res,
        _$QueryHistoryParamsDTOImpl>
    implements _$$QueryHistoryParamsDTOImplCopyWith<$Res> {
  __$$QueryHistoryParamsDTOImplCopyWithImpl(_$QueryHistoryParamsDTOImpl _value,
      $Res Function(_$QueryHistoryParamsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryHistoryParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_$QueryHistoryParamsDTOImpl(
      userUid: freezed == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryHistoryParamsDTOImpl extends _QueryHistoryParamsDTO {
  const _$QueryHistoryParamsDTOImpl(
      {@JsonKey(name: 'user_uid') this.userUid, this.page, this.size})
      : super._();

  factory _$QueryHistoryParamsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryHistoryParamsDTOImplFromJson(json);

  @override
  @JsonKey(name: 'user_uid')
  final String? userUid;
  @override
  final int? page;
  @override
  final int? size;

  /// Create a copy of QueryHistoryParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryHistoryParamsDTOImplCopyWith<_$QueryHistoryParamsDTOImpl>
      get copyWith => __$$QueryHistoryParamsDTOImplCopyWithImpl<
          _$QueryHistoryParamsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryHistoryParamsDTOImplToJson(
      this,
    );
  }
}

abstract class _QueryHistoryParamsDTO extends QueryHistoryParamsDTO {
  const factory _QueryHistoryParamsDTO(
      {@JsonKey(name: 'user_uid') final String? userUid,
      final int? page,
      final int? size}) = _$QueryHistoryParamsDTOImpl;
  const _QueryHistoryParamsDTO._() : super._();

  factory _QueryHistoryParamsDTO.fromJson(Map<String, dynamic> json) =
      _$QueryHistoryParamsDTOImpl.fromJson;

  @override
  @JsonKey(name: 'user_uid')
  String? get userUid;
  @override
  int? get page;
  @override
  int? get size;

  /// Create a copy of QueryHistoryParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryHistoryParamsDTOImplCopyWith<_$QueryHistoryParamsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetLastChapterParamsDTO _$GetLastChapterParamsDTOFromJson(
    Map<String, dynamic> json) {
  return _GetLastChapterParamsDTO.fromJson(json);
}

/// @nodoc
mixin _$GetLastChapterParamsDTO {
  @JsonKey(name: 'user_uid')
  String? get userUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_id')
  String? get seasonId => throw _privateConstructorUsedError;

  /// Serializes this GetLastChapterParamsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetLastChapterParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLastChapterParamsDTOCopyWith<GetLastChapterParamsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLastChapterParamsDTOCopyWith<$Res> {
  factory $GetLastChapterParamsDTOCopyWith(GetLastChapterParamsDTO value,
          $Res Function(GetLastChapterParamsDTO) then) =
      _$GetLastChapterParamsDTOCopyWithImpl<$Res, GetLastChapterParamsDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId});
}

/// @nodoc
class _$GetLastChapterParamsDTOCopyWithImpl<$Res,
        $Val extends GetLastChapterParamsDTO>
    implements $GetLastChapterParamsDTOCopyWith<$Res> {
  _$GetLastChapterParamsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLastChapterParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? seasonId = freezed,
  }) {
    return _then(_value.copyWith(
      userUid: freezed == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonId: freezed == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLastChapterParamsDTOImplCopyWith<$Res>
    implements $GetLastChapterParamsDTOCopyWith<$Res> {
  factory _$$GetLastChapterParamsDTOImplCopyWith(
          _$GetLastChapterParamsDTOImpl value,
          $Res Function(_$GetLastChapterParamsDTOImpl) then) =
      __$$GetLastChapterParamsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId});
}

/// @nodoc
class __$$GetLastChapterParamsDTOImplCopyWithImpl<$Res>
    extends _$GetLastChapterParamsDTOCopyWithImpl<$Res,
        _$GetLastChapterParamsDTOImpl>
    implements _$$GetLastChapterParamsDTOImplCopyWith<$Res> {
  __$$GetLastChapterParamsDTOImplCopyWithImpl(
      _$GetLastChapterParamsDTOImpl _value,
      $Res Function(_$GetLastChapterParamsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLastChapterParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? seasonId = freezed,
  }) {
    return _then(_$GetLastChapterParamsDTOImpl(
      userUid: freezed == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonId: freezed == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetLastChapterParamsDTOImpl extends _GetLastChapterParamsDTO {
  const _$GetLastChapterParamsDTOImpl(
      {@JsonKey(name: 'user_uid') this.userUid,
      @JsonKey(name: 'season_id') this.seasonId})
      : super._();

  factory _$GetLastChapterParamsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetLastChapterParamsDTOImplFromJson(json);

  @override
  @JsonKey(name: 'user_uid')
  final String? userUid;
  @override
  @JsonKey(name: 'season_id')
  final String? seasonId;

  /// Create a copy of GetLastChapterParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLastChapterParamsDTOImplCopyWith<_$GetLastChapterParamsDTOImpl>
      get copyWith => __$$GetLastChapterParamsDTOImplCopyWithImpl<
          _$GetLastChapterParamsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLastChapterParamsDTOImplToJson(
      this,
    );
  }
}

abstract class _GetLastChapterParamsDTO extends GetLastChapterParamsDTO {
  const factory _GetLastChapterParamsDTO(
          {@JsonKey(name: 'user_uid') final String? userUid,
          @JsonKey(name: 'season_id') final String? seasonId}) =
      _$GetLastChapterParamsDTOImpl;
  const _GetLastChapterParamsDTO._() : super._();

  factory _GetLastChapterParamsDTO.fromJson(Map<String, dynamic> json) =
      _$GetLastChapterParamsDTOImpl.fromJson;

  @override
  @JsonKey(name: 'user_uid')
  String? get userUid;
  @override
  @JsonKey(name: 'season_id')
  String? get seasonId;

  /// Create a copy of GetLastChapterParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLastChapterParamsDTOImplCopyWith<_$GetLastChapterParamsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetSingleProgressParamsDTO _$GetSingleProgressParamsDTOFromJson(
    Map<String, dynamic> json) {
  return _GetSingleProgressParamsDTO.fromJson(json);
}

/// @nodoc
mixin _$GetSingleProgressParamsDTO {
  @JsonKey(name: 'user_uid')
  String? get userUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_id')
  String? get seasonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chap_id')
  String? get chapId => throw _privateConstructorUsedError;

  /// Serializes this GetSingleProgressParamsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetSingleProgressParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSingleProgressParamsDTOCopyWith<GetSingleProgressParamsDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleProgressParamsDTOCopyWith<$Res> {
  factory $GetSingleProgressParamsDTOCopyWith(GetSingleProgressParamsDTO value,
          $Res Function(GetSingleProgressParamsDTO) then) =
      _$GetSingleProgressParamsDTOCopyWithImpl<$Res,
          GetSingleProgressParamsDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId,
      @JsonKey(name: 'chap_id') String? chapId});
}

/// @nodoc
class _$GetSingleProgressParamsDTOCopyWithImpl<$Res,
        $Val extends GetSingleProgressParamsDTO>
    implements $GetSingleProgressParamsDTOCopyWith<$Res> {
  _$GetSingleProgressParamsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSingleProgressParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? seasonId = freezed,
    Object? chapId = freezed,
  }) {
    return _then(_value.copyWith(
      userUid: freezed == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonId: freezed == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      chapId: freezed == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSingleProgressParamsDTOImplCopyWith<$Res>
    implements $GetSingleProgressParamsDTOCopyWith<$Res> {
  factory _$$GetSingleProgressParamsDTOImplCopyWith(
          _$GetSingleProgressParamsDTOImpl value,
          $Res Function(_$GetSingleProgressParamsDTOImpl) then) =
      __$$GetSingleProgressParamsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId,
      @JsonKey(name: 'chap_id') String? chapId});
}

/// @nodoc
class __$$GetSingleProgressParamsDTOImplCopyWithImpl<$Res>
    extends _$GetSingleProgressParamsDTOCopyWithImpl<$Res,
        _$GetSingleProgressParamsDTOImpl>
    implements _$$GetSingleProgressParamsDTOImplCopyWith<$Res> {
  __$$GetSingleProgressParamsDTOImplCopyWithImpl(
      _$GetSingleProgressParamsDTOImpl _value,
      $Res Function(_$GetSingleProgressParamsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleProgressParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? seasonId = freezed,
    Object? chapId = freezed,
  }) {
    return _then(_$GetSingleProgressParamsDTOImpl(
      userUid: freezed == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonId: freezed == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      chapId: freezed == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSingleProgressParamsDTOImpl extends _GetSingleProgressParamsDTO {
  const _$GetSingleProgressParamsDTOImpl(
      {@JsonKey(name: 'user_uid') this.userUid,
      @JsonKey(name: 'season_id') this.seasonId,
      @JsonKey(name: 'chap_id') this.chapId})
      : super._();

  factory _$GetSingleProgressParamsDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetSingleProgressParamsDTOImplFromJson(json);

  @override
  @JsonKey(name: 'user_uid')
  final String? userUid;
  @override
  @JsonKey(name: 'season_id')
  final String? seasonId;
  @override
  @JsonKey(name: 'chap_id')
  final String? chapId;

  /// Create a copy of GetSingleProgressParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleProgressParamsDTOImplCopyWith<_$GetSingleProgressParamsDTOImpl>
      get copyWith => __$$GetSingleProgressParamsDTOImplCopyWithImpl<
          _$GetSingleProgressParamsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSingleProgressParamsDTOImplToJson(
      this,
    );
  }
}

abstract class _GetSingleProgressParamsDTO extends GetSingleProgressParamsDTO {
  const factory _GetSingleProgressParamsDTO(
          {@JsonKey(name: 'user_uid') final String? userUid,
          @JsonKey(name: 'season_id') final String? seasonId,
          @JsonKey(name: 'chap_id') final String? chapId}) =
      _$GetSingleProgressParamsDTOImpl;
  const _GetSingleProgressParamsDTO._() : super._();

  factory _GetSingleProgressParamsDTO.fromJson(Map<String, dynamic> json) =
      _$GetSingleProgressParamsDTOImpl.fromJson;

  @override
  @JsonKey(name: 'user_uid')
  String? get userUid;
  @override
  @JsonKey(name: 'season_id')
  String? get seasonId;
  @override
  @JsonKey(name: 'chap_id')
  String? get chapId;

  /// Create a copy of GetSingleProgressParamsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleProgressParamsDTOImplCopyWith<_$GetSingleProgressParamsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
