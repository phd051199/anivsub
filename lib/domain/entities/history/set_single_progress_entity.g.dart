// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_single_progress_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetSingleProgressEntityImpl _$$SetSingleProgressEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SetSingleProgressEntityImpl(
      userUid: json['user_uid'] as String?,
      pName: json['p_name'] as String?,
      pPoster: json['p_poster'] as String?,
      seasonId: json['season_id'] as String?,
      pSeasonName: json['p_season_name'] as String?,
      eCur: (json['e_cur'] as num?)?.toDouble(),
      eDur: (json['e_dur'] as num?)?.toDouble(),
      eName: json['e_name'] as String?,
      eChap: json['e_chap'] as String?,
      gmt: json['gmt'] as String? ?? 'Asia/Ho_Chi_Minh',
    );

Map<String, dynamic> _$$SetSingleProgressEntityImplToJson(
        _$SetSingleProgressEntityImpl instance) =>
    <String, dynamic>{
      'user_uid': instance.userUid,
      'p_name': instance.pName,
      'p_poster': instance.pPoster,
      'season_id': instance.seasonId,
      'p_season_name': instance.pSeasonName,
      'e_cur': instance.eCur,
      'e_dur': instance.eDur,
      'e_name': instance.eName,
      'e_chap': instance.eChap,
      'gmt': instance.gmt,
    };
