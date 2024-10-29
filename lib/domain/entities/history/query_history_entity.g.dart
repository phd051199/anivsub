// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryHistoryEntityImpl _$$QueryHistoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$QueryHistoryEntityImpl(
      createdAt: DateTime.parse(json['created_at'] as String),
      season: json['season'] as String,
      name: json['name'] as String,
      poster: json['poster'] as String,
      seasonName: json['season_name'] as String,
      watchUpdatedAt: DateTime.parse(json['watch_updated_at'] as String),
      watchName: json['watch_name'] as String,
      watchId: json['watch_id'] as String,
      watchCur: (json['watch_cur'] as num).toDouble(),
      watchDur: (json['watch_dur'] as num).toDouble(),
    );

Map<String, dynamic> _$$QueryHistoryEntityImplToJson(
        _$QueryHistoryEntityImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'season': instance.season,
      'name': instance.name,
      'poster': instance.poster,
      'season_name': instance.seasonName,
      'watch_updated_at': instance.watchUpdatedAt.toIso8601String(),
      'watch_name': instance.watchName,
      'watch_id': instance.watchId,
      'watch_cur': instance.watchCur,
      'watch_dur': instance.watchDur,
    };
