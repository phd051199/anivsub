// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryHistoryEntity _$QueryHistoryEntityFromJson(Map<String, dynamic> json) {
  return _QueryHistoryEntity.fromJson(json);
}

/// @nodoc
mixin _$QueryHistoryEntity {
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'season')
  String get season => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster')
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_name')
  String get seasonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_updated_at')
  DateTime get watchUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_name')
  String get watchName => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_id')
  String get watchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_cur')
  double get watchCur => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_dur')
  double get watchDur => throw _privateConstructorUsedError;

  /// Serializes this QueryHistoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryHistoryEntityCopyWith<QueryHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryHistoryEntityCopyWith<$Res> {
  factory $QueryHistoryEntityCopyWith(
          QueryHistoryEntity value, $Res Function(QueryHistoryEntity) then) =
      _$QueryHistoryEntityCopyWithImpl<$Res, QueryHistoryEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'season') String season,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'poster') String poster,
      @JsonKey(name: 'season_name') String seasonName,
      @JsonKey(name: 'watch_updated_at') DateTime watchUpdatedAt,
      @JsonKey(name: 'watch_name') String watchName,
      @JsonKey(name: 'watch_id') String watchId,
      @JsonKey(name: 'watch_cur') double watchCur,
      @JsonKey(name: 'watch_dur') double watchDur});
}

/// @nodoc
class _$QueryHistoryEntityCopyWithImpl<$Res, $Val extends QueryHistoryEntity>
    implements $QueryHistoryEntityCopyWith<$Res> {
  _$QueryHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? season = null,
    Object? name = null,
    Object? poster = null,
    Object? seasonName = null,
    Object? watchUpdatedAt = null,
    Object? watchName = null,
    Object? watchId = null,
    Object? watchCur = null,
    Object? watchDur = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      seasonName: null == seasonName
          ? _value.seasonName
          : seasonName // ignore: cast_nullable_to_non_nullable
              as String,
      watchUpdatedAt: null == watchUpdatedAt
          ? _value.watchUpdatedAt
          : watchUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      watchName: null == watchName
          ? _value.watchName
          : watchName // ignore: cast_nullable_to_non_nullable
              as String,
      watchId: null == watchId
          ? _value.watchId
          : watchId // ignore: cast_nullable_to_non_nullable
              as String,
      watchCur: null == watchCur
          ? _value.watchCur
          : watchCur // ignore: cast_nullable_to_non_nullable
              as double,
      watchDur: null == watchDur
          ? _value.watchDur
          : watchDur // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryHistoryEntityImplCopyWith<$Res>
    implements $QueryHistoryEntityCopyWith<$Res> {
  factory _$$QueryHistoryEntityImplCopyWith(_$QueryHistoryEntityImpl value,
          $Res Function(_$QueryHistoryEntityImpl) then) =
      __$$QueryHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'season') String season,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'poster') String poster,
      @JsonKey(name: 'season_name') String seasonName,
      @JsonKey(name: 'watch_updated_at') DateTime watchUpdatedAt,
      @JsonKey(name: 'watch_name') String watchName,
      @JsonKey(name: 'watch_id') String watchId,
      @JsonKey(name: 'watch_cur') double watchCur,
      @JsonKey(name: 'watch_dur') double watchDur});
}

/// @nodoc
class __$$QueryHistoryEntityImplCopyWithImpl<$Res>
    extends _$QueryHistoryEntityCopyWithImpl<$Res, _$QueryHistoryEntityImpl>
    implements _$$QueryHistoryEntityImplCopyWith<$Res> {
  __$$QueryHistoryEntityImplCopyWithImpl(_$QueryHistoryEntityImpl _value,
      $Res Function(_$QueryHistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? season = null,
    Object? name = null,
    Object? poster = null,
    Object? seasonName = null,
    Object? watchUpdatedAt = null,
    Object? watchName = null,
    Object? watchId = null,
    Object? watchCur = null,
    Object? watchDur = null,
  }) {
    return _then(_$QueryHistoryEntityImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      seasonName: null == seasonName
          ? _value.seasonName
          : seasonName // ignore: cast_nullable_to_non_nullable
              as String,
      watchUpdatedAt: null == watchUpdatedAt
          ? _value.watchUpdatedAt
          : watchUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      watchName: null == watchName
          ? _value.watchName
          : watchName // ignore: cast_nullable_to_non_nullable
              as String,
      watchId: null == watchId
          ? _value.watchId
          : watchId // ignore: cast_nullable_to_non_nullable
              as String,
      watchCur: null == watchCur
          ? _value.watchCur
          : watchCur // ignore: cast_nullable_to_non_nullable
              as double,
      watchDur: null == watchDur
          ? _value.watchDur
          : watchDur // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryHistoryEntityImpl extends _QueryHistoryEntity {
  const _$QueryHistoryEntityImpl(
      {@JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'season') required this.season,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'poster') required this.poster,
      @JsonKey(name: 'season_name') required this.seasonName,
      @JsonKey(name: 'watch_updated_at') required this.watchUpdatedAt,
      @JsonKey(name: 'watch_name') required this.watchName,
      @JsonKey(name: 'watch_id') required this.watchId,
      @JsonKey(name: 'watch_cur') required this.watchCur,
      @JsonKey(name: 'watch_dur') required this.watchDur})
      : super._();

  factory _$QueryHistoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryHistoryEntityImplFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'season')
  final String season;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'poster')
  final String poster;
  @override
  @JsonKey(name: 'season_name')
  final String seasonName;
  @override
  @JsonKey(name: 'watch_updated_at')
  final DateTime watchUpdatedAt;
  @override
  @JsonKey(name: 'watch_name')
  final String watchName;
  @override
  @JsonKey(name: 'watch_id')
  final String watchId;
  @override
  @JsonKey(name: 'watch_cur')
  final double watchCur;
  @override
  @JsonKey(name: 'watch_dur')
  final double watchDur;

  /// Create a copy of QueryHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryHistoryEntityImplCopyWith<_$QueryHistoryEntityImpl> get copyWith =>
      __$$QueryHistoryEntityImplCopyWithImpl<_$QueryHistoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryHistoryEntityImplToJson(
      this,
    );
  }
}

abstract class _QueryHistoryEntity extends QueryHistoryEntity {
  const factory _QueryHistoryEntity(
      {@JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'season') required final String season,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'poster') required final String poster,
      @JsonKey(name: 'season_name') required final String seasonName,
      @JsonKey(name: 'watch_updated_at') required final DateTime watchUpdatedAt,
      @JsonKey(name: 'watch_name') required final String watchName,
      @JsonKey(name: 'watch_id') required final String watchId,
      @JsonKey(name: 'watch_cur') required final double watchCur,
      @JsonKey(name: 'watch_dur')
      required final double watchDur}) = _$QueryHistoryEntityImpl;
  const _QueryHistoryEntity._() : super._();

  factory _QueryHistoryEntity.fromJson(Map<String, dynamic> json) =
      _$QueryHistoryEntityImpl.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'season')
  String get season;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'poster')
  String get poster;
  @override
  @JsonKey(name: 'season_name')
  String get seasonName;
  @override
  @JsonKey(name: 'watch_updated_at')
  DateTime get watchUpdatedAt;
  @override
  @JsonKey(name: 'watch_name')
  String get watchName;
  @override
  @JsonKey(name: 'watch_id')
  String get watchId;
  @override
  @JsonKey(name: 'watch_cur')
  double get watchCur;
  @override
  @JsonKey(name: 'watch_dur')
  double get watchDur;

  /// Create a copy of QueryHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryHistoryEntityImplCopyWith<_$QueryHistoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
