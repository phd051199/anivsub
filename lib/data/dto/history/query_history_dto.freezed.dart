// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_history_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryHistoryDTO _$QueryHistoryDTOFromJson(Map<String, dynamic> json) {
  return _QueryHistoryDTO.fromJson(json);
}

/// @nodoc
mixin _$QueryHistoryDTO {
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'season')
  String? get season => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster')
  String? get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_name')
  String? get seasonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_updated_at')
  DateTime? get watchUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_name')
  String? get watchName => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_id')
  String? get watchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_cur')
  double? get watchCur => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_dur')
  double? get watchDur => throw _privateConstructorUsedError;

  /// Serializes this QueryHistoryDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueryHistoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryHistoryDTOCopyWith<QueryHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryHistoryDTOCopyWith<$Res> {
  factory $QueryHistoryDTOCopyWith(
          QueryHistoryDTO value, $Res Function(QueryHistoryDTO) then) =
      _$QueryHistoryDTOCopyWithImpl<$Res, QueryHistoryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'season') String? season,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'poster') String? poster,
      @JsonKey(name: 'season_name') String? seasonName,
      @JsonKey(name: 'watch_updated_at') DateTime? watchUpdatedAt,
      @JsonKey(name: 'watch_name') String? watchName,
      @JsonKey(name: 'watch_id') String? watchId,
      @JsonKey(name: 'watch_cur') double? watchCur,
      @JsonKey(name: 'watch_dur') double? watchDur});
}

/// @nodoc
class _$QueryHistoryDTOCopyWithImpl<$Res, $Val extends QueryHistoryDTO>
    implements $QueryHistoryDTOCopyWith<$Res> {
  _$QueryHistoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryHistoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? season = freezed,
    Object? name = freezed,
    Object? poster = freezed,
    Object? seasonName = freezed,
    Object? watchUpdatedAt = freezed,
    Object? watchName = freezed,
    Object? watchId = freezed,
    Object? watchCur = freezed,
    Object? watchDur = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonName: freezed == seasonName
          ? _value.seasonName
          : seasonName // ignore: cast_nullable_to_non_nullable
              as String?,
      watchUpdatedAt: freezed == watchUpdatedAt
          ? _value.watchUpdatedAt
          : watchUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      watchName: freezed == watchName
          ? _value.watchName
          : watchName // ignore: cast_nullable_to_non_nullable
              as String?,
      watchId: freezed == watchId
          ? _value.watchId
          : watchId // ignore: cast_nullable_to_non_nullable
              as String?,
      watchCur: freezed == watchCur
          ? _value.watchCur
          : watchCur // ignore: cast_nullable_to_non_nullable
              as double?,
      watchDur: freezed == watchDur
          ? _value.watchDur
          : watchDur // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryHistoryDTOImplCopyWith<$Res>
    implements $QueryHistoryDTOCopyWith<$Res> {
  factory _$$QueryHistoryDTOImplCopyWith(_$QueryHistoryDTOImpl value,
          $Res Function(_$QueryHistoryDTOImpl) then) =
      __$$QueryHistoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'season') String? season,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'poster') String? poster,
      @JsonKey(name: 'season_name') String? seasonName,
      @JsonKey(name: 'watch_updated_at') DateTime? watchUpdatedAt,
      @JsonKey(name: 'watch_name') String? watchName,
      @JsonKey(name: 'watch_id') String? watchId,
      @JsonKey(name: 'watch_cur') double? watchCur,
      @JsonKey(name: 'watch_dur') double? watchDur});
}

/// @nodoc
class __$$QueryHistoryDTOImplCopyWithImpl<$Res>
    extends _$QueryHistoryDTOCopyWithImpl<$Res, _$QueryHistoryDTOImpl>
    implements _$$QueryHistoryDTOImplCopyWith<$Res> {
  __$$QueryHistoryDTOImplCopyWithImpl(
      _$QueryHistoryDTOImpl _value, $Res Function(_$QueryHistoryDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryHistoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? season = freezed,
    Object? name = freezed,
    Object? poster = freezed,
    Object? seasonName = freezed,
    Object? watchUpdatedAt = freezed,
    Object? watchName = freezed,
    Object? watchId = freezed,
    Object? watchCur = freezed,
    Object? watchDur = freezed,
  }) {
    return _then(_$QueryHistoryDTOImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonName: freezed == seasonName
          ? _value.seasonName
          : seasonName // ignore: cast_nullable_to_non_nullable
              as String?,
      watchUpdatedAt: freezed == watchUpdatedAt
          ? _value.watchUpdatedAt
          : watchUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      watchName: freezed == watchName
          ? _value.watchName
          : watchName // ignore: cast_nullable_to_non_nullable
              as String?,
      watchId: freezed == watchId
          ? _value.watchId
          : watchId // ignore: cast_nullable_to_non_nullable
              as String?,
      watchCur: freezed == watchCur
          ? _value.watchCur
          : watchCur // ignore: cast_nullable_to_non_nullable
              as double?,
      watchDur: freezed == watchDur
          ? _value.watchDur
          : watchDur // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryHistoryDTOImpl extends _QueryHistoryDTO {
  const _$QueryHistoryDTOImpl(
      {@JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'season') this.season,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'poster') this.poster,
      @JsonKey(name: 'season_name') this.seasonName,
      @JsonKey(name: 'watch_updated_at') this.watchUpdatedAt,
      @JsonKey(name: 'watch_name') this.watchName,
      @JsonKey(name: 'watch_id') this.watchId,
      @JsonKey(name: 'watch_cur') this.watchCur,
      @JsonKey(name: 'watch_dur') this.watchDur})
      : super._();

  factory _$QueryHistoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryHistoryDTOImplFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'season')
  final String? season;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'poster')
  final String? poster;
  @override
  @JsonKey(name: 'season_name')
  final String? seasonName;
  @override
  @JsonKey(name: 'watch_updated_at')
  final DateTime? watchUpdatedAt;
  @override
  @JsonKey(name: 'watch_name')
  final String? watchName;
  @override
  @JsonKey(name: 'watch_id')
  final String? watchId;
  @override
  @JsonKey(name: 'watch_cur')
  final double? watchCur;
  @override
  @JsonKey(name: 'watch_dur')
  final double? watchDur;

  /// Create a copy of QueryHistoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryHistoryDTOImplCopyWith<_$QueryHistoryDTOImpl> get copyWith =>
      __$$QueryHistoryDTOImplCopyWithImpl<_$QueryHistoryDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryHistoryDTOImplToJson(
      this,
    );
  }
}

abstract class _QueryHistoryDTO extends QueryHistoryDTO {
  const factory _QueryHistoryDTO(
          {@JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'season') final String? season,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'poster') final String? poster,
          @JsonKey(name: 'season_name') final String? seasonName,
          @JsonKey(name: 'watch_updated_at') final DateTime? watchUpdatedAt,
          @JsonKey(name: 'watch_name') final String? watchName,
          @JsonKey(name: 'watch_id') final String? watchId,
          @JsonKey(name: 'watch_cur') final double? watchCur,
          @JsonKey(name: 'watch_dur') final double? watchDur}) =
      _$QueryHistoryDTOImpl;
  const _QueryHistoryDTO._() : super._();

  factory _QueryHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$QueryHistoryDTOImpl.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'season')
  String? get season;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'poster')
  String? get poster;
  @override
  @JsonKey(name: 'season_name')
  String? get seasonName;
  @override
  @JsonKey(name: 'watch_updated_at')
  DateTime? get watchUpdatedAt;
  @override
  @JsonKey(name: 'watch_name')
  String? get watchName;
  @override
  @JsonKey(name: 'watch_id')
  String? get watchId;
  @override
  @JsonKey(name: 'watch_cur')
  double? get watchCur;
  @override
  @JsonKey(name: 'watch_dur')
  double? get watchDur;

  /// Create a copy of QueryHistoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryHistoryDTOImplCopyWith<_$QueryHistoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
