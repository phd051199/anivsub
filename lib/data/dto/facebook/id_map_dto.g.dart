// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_map_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdMapDTOImpl _$$IdMapDTOImplFromJson(Map<String, dynamic> json) =>
    _$IdMapDTOImpl(
      id: json['id'],
      name: json['name'] as String?,
      thumbSrc: json['thumbSrc'] as String?,
      uri: json['uri'] as String?,
      isVerified: json['isVerified'] as bool?,
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']),
      authorId: json['authorID'],
      body: json['body'] == null
          ? null
          : BodyDTO.fromJson(json['body'] as Map<String, dynamic>),
      ranges: json['ranges'] as List<dynamic>?,
      timestamp: json['timestamp'] == null
          ? null
          : TimestampDTO.fromJson(json['timestamp'] as Map<String, dynamic>),
      targetId: json['targetID'],
      ogUrl: json['ogURL'] as String?,
      likeCount: (json['likeCount'] as num?)?.toInt(),
      hasLiked: json['hasLiked'] as bool?,
      canLike: json['canLike'] as bool?,
      canEdit: json['canEdit'] as bool?,
      hidden: json['hidden'] as bool?,
      highlightedWords: json['highlightedWords'] as List<dynamic>?,
      reportUri: json['reportURI'] as String?,
      spamCount: (json['spamCount'] as num?)?.toInt(),
      canEmbed: json['canEmbed'] as bool?,
      publicReplies: json['public_replies'] == null
          ? null
          : PublicRepliesDTO.fromJson(
              json['public_replies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IdMapDTOImplToJson(_$IdMapDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbSrc': instance.thumbSrc,
      'uri': instance.uri,
      'isVerified': instance.isVerified,
      'type': _$TypeEnumMap[instance.type],
      'authorID': instance.authorId,
      'body': instance.body,
      'ranges': instance.ranges,
      'timestamp': instance.timestamp,
      'targetID': instance.targetId,
      'ogURL': instance.ogUrl,
      'likeCount': instance.likeCount,
      'hasLiked': instance.hasLiked,
      'canLike': instance.canLike,
      'canEdit': instance.canEdit,
      'hidden': instance.hidden,
      'highlightedWords': instance.highlightedWords,
      'reportURI': instance.reportUri,
      'spamCount': instance.spamCount,
      'canEmbed': instance.canEmbed,
      'public_replies': instance.publicReplies,
    };

const _$TypeEnumMap = {
  Type.comment: 'comment',
  Type.ogObject: 'ogobject',
  Type.user: 'user',
};

_$BodyDTOImpl _$$BodyDTOImplFromJson(Map<String, dynamic> json) =>
    _$BodyDTOImpl(
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$BodyDTOImplToJson(_$BodyDTOImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$PublicRepliesDTOImpl _$$PublicRepliesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicRepliesDTOImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      commentIDs: json['commentIDs'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PublicRepliesDTOImplToJson(
        _$PublicRepliesDTOImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'commentIDs': instance.commentIDs,
    };

_$TimestampDTOImpl _$$TimestampDTOImplFromJson(Map<String, dynamic> json) =>
    _$TimestampDTOImpl(
      time: (json['time'] as num?)?.toInt(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$TimestampDTOImplToJson(_$TimestampDTOImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'text': instance.text,
    };
