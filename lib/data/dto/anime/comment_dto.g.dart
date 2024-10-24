// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDTOImpl _$$CommentDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommentDTOImpl(
      id: json['id'] as String,
      authorName: json['authorName'] as String,
      authorThumbSrc: json['authorThumbSrc'] as String,
      body: json['body'] as String,
      timestamp: json['timestamp'] as String,
      likeCount: (json['likeCount'] as num).toInt(),
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => CommentDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentDTOImplToJson(_$CommentDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorName': instance.authorName,
      'authorThumbSrc': instance.authorThumbSrc,
      'body': instance.body,
      'timestamp': instance.timestamp,
      'likeCount': instance.likeCount,
      'replies': instance.replies,
    };
