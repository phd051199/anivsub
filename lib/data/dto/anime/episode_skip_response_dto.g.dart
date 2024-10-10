// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_skip_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeSkipResponseDTO _$EpisodeSkipResponseDTOFromJson(
        Map<String, dynamic> json) =>
    EpisodeSkipResponseDTO(
      intro: InOutro.fromJson(json['intro'] as Map<String, dynamic>),
      outro: InOutro.fromJson(json['outro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodeSkipResponseDTOToJson(
        EpisodeSkipResponseDTO instance) =>
    <String, dynamic>{
      'intro': instance.intro.toJson(),
      'outro': instance.outro.toJson(),
    };
