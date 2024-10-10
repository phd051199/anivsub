// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_episode_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListEpisodeResponseDTO _$ListEpisodeResponseDTOFromJson(
        Map<String, dynamic> json) =>
    ListEpisodeResponseDTO(
      id: json['id'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListEpisodeResponseDTOToJson(
        ListEpisodeResponseDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
