// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_param_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryHistoryParamsEntityImpl _$$QueryHistoryParamsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$QueryHistoryParamsEntityImpl(
      userUid: json['user_uid'] as String?,
      page: (json['page'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QueryHistoryParamsEntityImplToJson(
        _$QueryHistoryParamsEntityImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'page': instance.page,
      'size': instance.size,
    };

_$GetLastChapterParamsEntityImpl _$$GetLastChapterParamsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetLastChapterParamsEntityImpl(
      userUid: json['user_uid'] as String?,
      seasonId: json['season_id'] as String?,
    );

Map<String, dynamic> _$$GetLastChapterParamsEntityImplToJson(
        _$GetLastChapterParamsEntityImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'season_id': instance.seasonId,
    };

_$GetSingleProgressParamsEntityImpl
    _$$GetSingleProgressParamsEntityImplFromJson(Map<String, dynamic> json) =>
        _$GetSingleProgressParamsEntityImpl(
          userUid: json['user_uid'] as String?,
          seasonId: json['season_id'] as String?,
          chapId: json['chap_id'] as String?,
        );

Map<String, dynamic> _$$GetSingleProgressParamsEntityImplToJson(
        _$GetSingleProgressParamsEntityImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'season_id': instance.seasonId,
      'chap_id': instance.chapId,
    };
