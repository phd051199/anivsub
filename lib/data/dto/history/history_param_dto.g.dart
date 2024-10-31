// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_param_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryHistoryParamsDTOImpl _$$QueryHistoryParamsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$QueryHistoryParamsDTOImpl(
      userUid: json['user_uid'] as String?,
      page: (json['page'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QueryHistoryParamsDTOImplToJson(
        _$QueryHistoryParamsDTOImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'page': instance.page,
      'size': instance.size,
    };

_$GetLastChapterParamsDTOImpl _$$GetLastChapterParamsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetLastChapterParamsDTOImpl(
      userUid: json['user_uid'] as String?,
      seasonId: json['season_id'] as String?,
    );

Map<String, dynamic> _$$GetLastChapterParamsDTOImplToJson(
        _$GetLastChapterParamsDTOImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'season_id': instance.seasonId,
    };

_$GetSingleProgressParamsDTOImpl _$$GetSingleProgressParamsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSingleProgressParamsDTOImpl(
      userUid: json['user_uid'] as String?,
      seasonId: json['season_id'] as String?,
      pChapId: json['p_chap_id'] as String?,
    );

Map<String, dynamic> _$$GetSingleProgressParamsDTOImplToJson(
        _$GetSingleProgressParamsDTOImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'season_id': instance.seasonId,
      'p_chap_id': instance.pChapId,
    };
