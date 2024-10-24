// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_more_comment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMoreCommentResponseDTOImpl _$$GetMoreCommentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMoreCommentResponseDTOImpl(
      ar: (json['__ar'] as num?)?.toInt(),
      payload: json['payload'] == null
          ? null
          : PayloadDTO.fromJson(json['payload'] as Map<String, dynamic>),
      lid: (json['lid'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GetMoreCommentResponseDTOImplToJson(
        _$GetMoreCommentResponseDTOImpl instance) =>
    <String, dynamic>{
      '__ar': instance.ar,
      'payload': instance.payload,
      'lid': instance.lid,
    };

_$PayloadDTOImpl _$$PayloadDTOImplFromJson(Map<String, dynamic> json) =>
    _$PayloadDTOImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      commentIDs: (json['commentIDs'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      afterCursor: json['afterCursor'] as String?,
      idMap: (json['idMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, IdMapDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$PayloadDTOImplToJson(_$PayloadDTOImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'commentIDs': instance.commentIDs,
      'afterCursor': instance.afterCursor,
      'idMap': instance.idMap,
    };
