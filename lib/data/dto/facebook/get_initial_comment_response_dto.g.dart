// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_initial_comment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetInitialCommentResponseDTOImpl _$$GetInitialCommentResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetInitialCommentResponseDTOImpl(
      comments: json['comments'] == null
          ? null
          : CommentsDTO.fromJson(json['comments'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
      initialOrdering: json['initialOrdering'] as String?,
      rankingAllowed: json['rankingAllowed'] as bool?,
    );

Map<String, dynamic> _$$GetInitialCommentResponseDTOImplToJson(
        _$GetInitialCommentResponseDTOImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'meta': instance.meta,
      'initialOrdering': instance.initialOrdering,
      'rankingAllowed': instance.rankingAllowed,
    };

_$CommentsDTOImpl _$$CommentsDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommentsDTOImpl(
      commentIDs: (json['commentIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      idMap: (json['idMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, IdMapDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$CommentsDTOImplToJson(_$CommentsDTOImpl instance) =>
    <String, dynamic>{
      'commentIDs': instance.commentIDs,
      'idMap': instance.idMap,
    };

_$MetaDTOImpl _$$MetaDTOImplFromJson(Map<String, dynamic> json) =>
    _$MetaDTOImpl(
      targetFbid: json['targetFBID'] as String?,
      href: json['href'] as String?,
      userId: json['userID'] as String?,
      actorsOptIn: (json['actorsOptIn'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      actors: (json['actors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, ActorDTO.fromJson(e as Map<String, dynamic>)),
      ),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      afterCursor: json['afterCursor'] as String?,
      appId: json['appID'] as String?,
      isMobile: json['isMobile'] as bool?,
      isModerator: json['isModerator'] as bool?,
      minFeedLength: (json['minFeedLength'] as num?)?.toInt(),
      maxCommentLength: (json['maxCommentLength'] as num?)?.toInt(),
      enablePhoto: json['enablePhoto'] as bool?,
      enableSticker: json['enableSticker'] as bool?,
      threadClosed: json['threadClosed'] as bool?,
      shouldSwitchAccount: json['shouldSwitchAccount'] as bool?,
      fromModTool: json['fromModTool'] as bool?,
      privacyOptionsList: json['privacyOptionsList'] as List<dynamic>?,
      composerSearchSource: json['composerSearchSource'] == null
          ? null
          : ComposerSearchSourceDTO.fromJson(
              json['composerSearchSource'] as Map<String, dynamic>),
      channelUrl: json['channelURL'] as String?,
      consentRequired: json['consentRequired'] as bool?,
    );

Map<String, dynamic> _$$MetaDTOImplToJson(_$MetaDTOImpl instance) =>
    <String, dynamic>{
      'targetFBID': instance.targetFbid,
      'href': instance.href,
      'userID': instance.userId,
      'actorsOptIn': instance.actorsOptIn,
      'actors': instance.actors,
      'totalCount': instance.totalCount,
      'afterCursor': instance.afterCursor,
      'appID': instance.appId,
      'isMobile': instance.isMobile,
      'isModerator': instance.isModerator,
      'minFeedLength': instance.minFeedLength,
      'maxCommentLength': instance.maxCommentLength,
      'enablePhoto': instance.enablePhoto,
      'enableSticker': instance.enableSticker,
      'threadClosed': instance.threadClosed,
      'shouldSwitchAccount': instance.shouldSwitchAccount,
      'fromModTool': instance.fromModTool,
      'privacyOptionsList': instance.privacyOptionsList,
      'composerSearchSource': instance.composerSearchSource,
      'channelURL': instance.channelUrl,
      'consentRequired': instance.consentRequired,
    };

_$ActorDTOImpl _$$ActorDTOImplFromJson(Map<String, dynamic> json) =>
    _$ActorDTOImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      thumbSrc: json['thumbSrc'] as String?,
      uri: json['uri'] as String?,
      isVerified: json['isVerified'] as bool?,
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ActorDTOImplToJson(_$ActorDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbSrc': instance.thumbSrc,
      'uri': instance.uri,
      'isVerified': instance.isVerified,
      'type': _$TypeEnumMap[instance.type],
    };

const _$TypeEnumMap = {
  Type.comment: 'comment',
  Type.ogObject: 'ogobject',
  Type.user: 'user',
};

_$ComposerSearchSourceDTOImpl _$$ComposerSearchSourceDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ComposerSearchSourceDTOImpl(
      m: json['__m'] as String?,
    );

Map<String, dynamic> _$$ComposerSearchSourceDTOImplToJson(
        _$ComposerSearchSourceDTOImpl instance) =>
    <String, dynamic>{
      '__m': instance.m,
    };

_$CommentDataDTOImpl _$$CommentDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommentDataDTOImpl(
      meta: json['meta'] == null
          ? null
          : MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentDataDTOImplToJson(
        _$CommentDataDTOImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'comments': instance.comments,
    };
