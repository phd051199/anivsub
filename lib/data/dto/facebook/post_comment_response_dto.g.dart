// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentResponseDTOImpl _$$PostCommentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentResponseDTOImpl(
      ar: (json['__ar'] as num?)?.toInt(),
      payload: json['payload'] == null
          ? null
          : PostCommentPayloadDTO.fromJson(
              json['payload'] as Map<String, dynamic>),
      lid: json['lid'] as String?,
    );

Map<String, dynamic> _$$PostCommentResponseDTOImplToJson(
        _$PostCommentResponseDTOImpl instance) =>
    <String, dynamic>{
      '__ar': instance.ar,
      'payload': instance.payload,
      'lid': instance.lid,
    };

_$PostCommentPayloadDTOImpl _$$PostCommentPayloadDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentPayloadDTOImpl(
      commentID: json['commentID'] as String?,
      idMap: (json['idMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, IdMapDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$PostCommentPayloadDTOImplToJson(
        _$PostCommentPayloadDTOImpl instance) =>
    <String, dynamic>{
      'commentID': instance.commentID,
      'idMap': instance.idMap,
    };
