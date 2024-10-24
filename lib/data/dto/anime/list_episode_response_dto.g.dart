// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_episode_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      id: json['id'] as String,
      order: json['order'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'name': instance.name,
      'title': instance.title,
    };

_$ListEpisodeResponseDTOImpl _$$ListEpisodeResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ListEpisodeResponseDTOImpl(
      id: json['id'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListEpisodeResponseDTOImplToJson(
        _$ListEpisodeResponseDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'list': instance.list,
    };
