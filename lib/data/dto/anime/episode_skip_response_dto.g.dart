// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_skip_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InOutroImpl _$$InOutroImplFromJson(Map<String, dynamic> json) =>
    _$InOutroImpl(
      start: (json['start'] as num).toInt(),
      end: (json['end'] as num).toInt(),
    );

Map<String, dynamic> _$$InOutroImplToJson(_$InOutroImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$EpisodeSkipResponseDTOImpl _$$EpisodeSkipResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodeSkipResponseDTOImpl(
      intro: InOutro.fromJson(json['intro'] as Map<String, dynamic>),
      outro: InOutro.fromJson(json['outro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodeSkipResponseDTOImplToJson(
        _$EpisodeSkipResponseDTOImpl instance) =>
    <String, dynamic>{
      'intro': instance.intro,
      'outro': instance.outro,
    };
