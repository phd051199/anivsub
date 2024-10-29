// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_param_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryHistoryParamsEntity _$QueryHistoryParamsEntityFromJson(
    Map<String, dynamic> json) {
  return _QueryHistoryParamsEntity.fromJson(json);
}

/// @nodoc
mixin _$QueryHistoryParamsEntity {
  @JsonKey(name: 'user_uid')
  String? get userUid => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  /// Serializes this QueryHistoryParamsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryHistoryParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryHistoryParamsEntityCopyWith<QueryHistoryParamsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryHistoryParamsEntityCopyWith<$Res> {
  factory $QueryHistoryParamsEntityCopyWith(QueryHistoryParamsEntity value,
          $Res Function(QueryHistoryParamsEntity) then) =
      _$QueryHistoryParamsEntityCopyWithImpl<$Res, QueryHistoryParamsEntity>;
  @useResult
  $Res call({@JsonKey(name: 'user_uid') String? userUid, int? page, int? size});
}

/// @nodoc
class _$QueryHistoryParamsEntityCopyWithImpl<$Res,
        $Val extends QueryHistoryParamsEntity>
    implements $QueryHistoryParamsEntityCopyWith<$Res> {
  _$QueryHistoryParamsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryHistoryParamsEntity
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
abstract class _$$QueryHistoryParamsEntityImplCopyWith<$Res>
    implements $QueryHistoryParamsEntityCopyWith<$Res> {
  factory _$$QueryHistoryParamsEntityImplCopyWith(
          _$QueryHistoryParamsEntityImpl value,
          $Res Function(_$QueryHistoryParamsEntityImpl) then) =
      __$$QueryHistoryParamsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_uid') String? userUid, int? page, int? size});
}

/// @nodoc
class __$$QueryHistoryParamsEntityImplCopyWithImpl<$Res>
    extends _$QueryHistoryParamsEntityCopyWithImpl<$Res,
        _$QueryHistoryParamsEntityImpl>
    implements _$$QueryHistoryParamsEntityImplCopyWith<$Res> {
  __$$QueryHistoryParamsEntityImplCopyWithImpl(
      _$QueryHistoryParamsEntityImpl _value,
      $Res Function(_$QueryHistoryParamsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryHistoryParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_$QueryHistoryParamsEntityImpl(
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
class _$QueryHistoryParamsEntityImpl extends _QueryHistoryParamsEntity {
  const _$QueryHistoryParamsEntityImpl(
      {@JsonKey(name: 'user_uid') this.userUid, this.page, this.size})
      : super._();

  factory _$QueryHistoryParamsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryHistoryParamsEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_uid')
  final String? userUid;
  @override
  final int? page;
  @override
  final int? size;

  /// Create a copy of QueryHistoryParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryHistoryParamsEntityImplCopyWith<_$QueryHistoryParamsEntityImpl>
      get copyWith => __$$QueryHistoryParamsEntityImplCopyWithImpl<
          _$QueryHistoryParamsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryHistoryParamsEntityImplToJson(
      this,
    );
  }
}

abstract class _QueryHistoryParamsEntity extends QueryHistoryParamsEntity {
  const factory _QueryHistoryParamsEntity(
      {@JsonKey(name: 'user_uid') final String? userUid,
      final int? page,
      final int? size}) = _$QueryHistoryParamsEntityImpl;
  const _QueryHistoryParamsEntity._() : super._();

  factory _QueryHistoryParamsEntity.fromJson(Map<String, dynamic> json) =
      _$QueryHistoryParamsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_uid')
  String? get userUid;
  @override
  int? get page;
  @override
  int? get size;

  /// Create a copy of QueryHistoryParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryHistoryParamsEntityImplCopyWith<_$QueryHistoryParamsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetLastChapterParamsEntity _$GetLastChapterParamsEntityFromJson(
    Map<String, dynamic> json) {
  return _GetLastChapterParamsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetLastChapterParamsEntity {
  @JsonKey(name: 'user_uid')
  String? get userUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_id')
  String? get seasonId => throw _privateConstructorUsedError;

  /// Serializes this GetLastChapterParamsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetLastChapterParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLastChapterParamsEntityCopyWith<GetLastChapterParamsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLastChapterParamsEntityCopyWith<$Res> {
  factory $GetLastChapterParamsEntityCopyWith(GetLastChapterParamsEntity value,
          $Res Function(GetLastChapterParamsEntity) then) =
      _$GetLastChapterParamsEntityCopyWithImpl<$Res,
          GetLastChapterParamsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId});
}

/// @nodoc
class _$GetLastChapterParamsEntityCopyWithImpl<$Res,
        $Val extends GetLastChapterParamsEntity>
    implements $GetLastChapterParamsEntityCopyWith<$Res> {
  _$GetLastChapterParamsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLastChapterParamsEntity
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
abstract class _$$GetLastChapterParamsEntityImplCopyWith<$Res>
    implements $GetLastChapterParamsEntityCopyWith<$Res> {
  factory _$$GetLastChapterParamsEntityImplCopyWith(
          _$GetLastChapterParamsEntityImpl value,
          $Res Function(_$GetLastChapterParamsEntityImpl) then) =
      __$$GetLastChapterParamsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId});
}

/// @nodoc
class __$$GetLastChapterParamsEntityImplCopyWithImpl<$Res>
    extends _$GetLastChapterParamsEntityCopyWithImpl<$Res,
        _$GetLastChapterParamsEntityImpl>
    implements _$$GetLastChapterParamsEntityImplCopyWith<$Res> {
  __$$GetLastChapterParamsEntityImplCopyWithImpl(
      _$GetLastChapterParamsEntityImpl _value,
      $Res Function(_$GetLastChapterParamsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLastChapterParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? seasonId = freezed,
  }) {
    return _then(_$GetLastChapterParamsEntityImpl(
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
class _$GetLastChapterParamsEntityImpl extends _GetLastChapterParamsEntity {
  const _$GetLastChapterParamsEntityImpl(
      {@JsonKey(name: 'user_uid') this.userUid,
      @JsonKey(name: 'season_id') this.seasonId})
      : super._();

  factory _$GetLastChapterParamsEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetLastChapterParamsEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_uid')
  final String? userUid;
  @override
  @JsonKey(name: 'season_id')
  final String? seasonId;

  /// Create a copy of GetLastChapterParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLastChapterParamsEntityImplCopyWith<_$GetLastChapterParamsEntityImpl>
      get copyWith => __$$GetLastChapterParamsEntityImplCopyWithImpl<
          _$GetLastChapterParamsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLastChapterParamsEntityImplToJson(
      this,
    );
  }
}

abstract class _GetLastChapterParamsEntity extends GetLastChapterParamsEntity {
  const factory _GetLastChapterParamsEntity(
          {@JsonKey(name: 'user_uid') final String? userUid,
          @JsonKey(name: 'season_id') final String? seasonId}) =
      _$GetLastChapterParamsEntityImpl;
  const _GetLastChapterParamsEntity._() : super._();

  factory _GetLastChapterParamsEntity.fromJson(Map<String, dynamic> json) =
      _$GetLastChapterParamsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_uid')
  String? get userUid;
  @override
  @JsonKey(name: 'season_id')
  String? get seasonId;

  /// Create a copy of GetLastChapterParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLastChapterParamsEntityImplCopyWith<_$GetLastChapterParamsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetSingleProgressParamsEntity _$GetSingleProgressParamsEntityFromJson(
    Map<String, dynamic> json) {
  return _GetSingleProgressParamsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetSingleProgressParamsEntity {
  @JsonKey(name: 'user_uid')
  String? get userUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_id')
  String? get seasonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chap_id')
  String? get chapId => throw _privateConstructorUsedError;

  /// Serializes this GetSingleProgressParamsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetSingleProgressParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSingleProgressParamsEntityCopyWith<GetSingleProgressParamsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleProgressParamsEntityCopyWith<$Res> {
  factory $GetSingleProgressParamsEntityCopyWith(
          GetSingleProgressParamsEntity value,
          $Res Function(GetSingleProgressParamsEntity) then) =
      _$GetSingleProgressParamsEntityCopyWithImpl<$Res,
          GetSingleProgressParamsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId,
      @JsonKey(name: 'chap_id') String? chapId});
}

/// @nodoc
class _$GetSingleProgressParamsEntityCopyWithImpl<$Res,
        $Val extends GetSingleProgressParamsEntity>
    implements $GetSingleProgressParamsEntityCopyWith<$Res> {
  _$GetSingleProgressParamsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSingleProgressParamsEntity
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
abstract class _$$GetSingleProgressParamsEntityImplCopyWith<$Res>
    implements $GetSingleProgressParamsEntityCopyWith<$Res> {
  factory _$$GetSingleProgressParamsEntityImplCopyWith(
          _$GetSingleProgressParamsEntityImpl value,
          $Res Function(_$GetSingleProgressParamsEntityImpl) then) =
      __$$GetSingleProgressParamsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_uid') String? userUid,
      @JsonKey(name: 'season_id') String? seasonId,
      @JsonKey(name: 'chap_id') String? chapId});
}

/// @nodoc
class __$$GetSingleProgressParamsEntityImplCopyWithImpl<$Res>
    extends _$GetSingleProgressParamsEntityCopyWithImpl<$Res,
        _$GetSingleProgressParamsEntityImpl>
    implements _$$GetSingleProgressParamsEntityImplCopyWith<$Res> {
  __$$GetSingleProgressParamsEntityImplCopyWithImpl(
      _$GetSingleProgressParamsEntityImpl _value,
      $Res Function(_$GetSingleProgressParamsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleProgressParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = freezed,
    Object? seasonId = freezed,
    Object? chapId = freezed,
  }) {
    return _then(_$GetSingleProgressParamsEntityImpl(
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
class _$GetSingleProgressParamsEntityImpl
    extends _GetSingleProgressParamsEntity {
  const _$GetSingleProgressParamsEntityImpl(
      {@JsonKey(name: 'user_uid') this.userUid,
      @JsonKey(name: 'season_id') this.seasonId,
      @JsonKey(name: 'chap_id') this.chapId})
      : super._();

  factory _$GetSingleProgressParamsEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetSingleProgressParamsEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_uid')
  final String? userUid;
  @override
  @JsonKey(name: 'season_id')
  final String? seasonId;
  @override
  @JsonKey(name: 'chap_id')
  final String? chapId;

  /// Create a copy of GetSingleProgressParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleProgressParamsEntityImplCopyWith<
          _$GetSingleProgressParamsEntityImpl>
      get copyWith => __$$GetSingleProgressParamsEntityImplCopyWithImpl<
          _$GetSingleProgressParamsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSingleProgressParamsEntityImplToJson(
      this,
    );
  }
}

abstract class _GetSingleProgressParamsEntity
    extends GetSingleProgressParamsEntity {
  const factory _GetSingleProgressParamsEntity(
          {@JsonKey(name: 'user_uid') final String? userUid,
          @JsonKey(name: 'season_id') final String? seasonId,
          @JsonKey(name: 'chap_id') final String? chapId}) =
      _$GetSingleProgressParamsEntityImpl;
  const _GetSingleProgressParamsEntity._() : super._();

  factory _GetSingleProgressParamsEntity.fromJson(Map<String, dynamic> json) =
      _$GetSingleProgressParamsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_uid')
  String? get userUid;
  @override
  @JsonKey(name: 'season_id')
  String? get seasonId;
  @override
  @JsonKey(name: 'chap_id')
  String? get chapId;

  /// Create a copy of GetSingleProgressParamsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleProgressParamsEntityImplCopyWith<
          _$GetSingleProgressParamsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
