import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'get_initial_comment_response_dto.freezed.dart';
part 'get_initial_comment_response_dto.g.dart';

@freezed
class GetInitialCommentResponseDTO
    extends BaseDTO<GetInitialCommentResponseEntity>
    with _$GetInitialCommentResponseDTO {
  const factory GetInitialCommentResponseDTO({
    @JsonKey(name: 'comments') CommentsDTO? comments,
    @JsonKey(name: 'meta') MetaDTO? meta,
    @JsonKey(name: 'initialOrdering') String? initialOrdering,
    @JsonKey(name: 'rankingAllowed') bool? rankingAllowed,
  }) = _GetInitialCommentResponseDTO;

  const GetInitialCommentResponseDTO._();

  factory GetInitialCommentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GetInitialCommentResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        comments,
        meta,
        initialOrdering,
        rankingAllowed,
      ];

  @override
  GetInitialCommentResponseEntity toEntity() => GetInitialCommentResponseEntity(
        comments: comments?.toEntity(),
        meta: meta?.toEntity(),
        initialOrdering: initialOrdering,
        rankingAllowed: rankingAllowed,
      );
}

@freezed
class CommentsDTO extends BaseDTO<CommentsEntity> with _$CommentsDTO {
  const factory CommentsDTO({
    @JsonKey(name: 'commentIDs') List<String>? commentIDs,
    @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap,
  }) = _CommentsDTO;

  const CommentsDTO._();

  factory CommentsDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentsDTOFromJson(json);

  @override
  List<Object?> get props => [
        commentIDs,
        idMap,
      ];

  @override
  CommentsEntity toEntity() => CommentsEntity(
        commentIDs: commentIDs,
        idMap: idMap?.map(
          (key, value) => MapEntry(
            key,
            value.toEntity(),
          ),
        ),
      );
}

@freezed
class MetaDTO extends BaseDTO<MetaEntity> with _$MetaDTO {
  const factory MetaDTO({
    @JsonKey(name: 'targetFBID') String? targetFbid,
    @JsonKey(name: 'href') String? href,
    @JsonKey(name: 'userID') String? userId,
    @JsonKey(name: 'actorsOptIn') Map<String, bool>? actorsOptIn,
    @JsonKey(name: 'actors') Map<String, ActorDTO>? actors,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'afterCursor') String? afterCursor,
    @JsonKey(name: 'appID') String? appId,
    @JsonKey(name: 'isMobile') bool? isMobile,
    @JsonKey(name: 'isModerator') bool? isModerator,
    @JsonKey(name: 'minFeedLength') int? minFeedLength,
    @JsonKey(name: 'maxCommentLength') int? maxCommentLength,
    @JsonKey(name: 'enablePhoto') bool? enablePhoto,
    @JsonKey(name: 'enableSticker') bool? enableSticker,
    @JsonKey(name: 'threadClosed') bool? threadClosed,
    @JsonKey(name: 'shouldSwitchAccount') bool? shouldSwitchAccount,
    @JsonKey(name: 'fromModTool') bool? fromModTool,
    @JsonKey(name: 'privacyOptionsList') List<dynamic>? privacyOptionsList,
    @JsonKey(name: 'composerSearchSource')
    ComposerSearchSourceDTO? composerSearchSource,
    @JsonKey(name: 'channelURL') String? channelUrl,
    @JsonKey(name: 'consentRequired') bool? consentRequired,
  }) = _MetaDTO;

  const MetaDTO._();

  factory MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaDTOFromJson(json);

  @override
  List<Object?> get props => [
        targetFbid,
        href,
        userId,
        actorsOptIn,
        actors,
        totalCount,
        afterCursor,
        appId,
        isMobile,
        isModerator,
        minFeedLength,
        maxCommentLength,
        enablePhoto,
        enableSticker,
        threadClosed,
        shouldSwitchAccount,
        fromModTool,
        privacyOptionsList,
        composerSearchSource,
        channelUrl,
        consentRequired,
      ];

  @override
  MetaEntity toEntity() => MetaEntity(
        targetFbid: targetFbid,
        href: href,
        userId: userId,
        actorsOptIn: actorsOptIn,
        actors: actors?.map((key, value) => MapEntry(key, value.toEntity())),
        totalCount: totalCount,
        afterCursor: afterCursor,
        appId: appId,
        isMobile: isMobile,
        isModerator: isModerator,
        minFeedLength: minFeedLength,
        maxCommentLength: maxCommentLength,
        enablePhoto: enablePhoto,
        enableSticker: enableSticker,
        threadClosed: threadClosed,
        shouldSwitchAccount: shouldSwitchAccount,
        fromModTool: fromModTool,
        privacyOptionsList: privacyOptionsList,
        channelUrl: channelUrl,
        consentRequired: consentRequired,
      );
}

@freezed
class ActorDTO extends BaseDTO<ActorEntity> with _$ActorDTO {
  const factory ActorDTO({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'thumbSrc') String? thumbSrc,
    @JsonKey(name: 'uri') String? uri,
    @JsonKey(name: 'isVerified') bool? isVerified,
    @JsonKey(name: 'type') Type? type,
  }) = _ActorDTO;

  const ActorDTO._();

  factory ActorDTO.fromJson(Map<String, dynamic> json) =>
      _$ActorDTOFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        thumbSrc,
        uri,
        isVerified,
        type,
      ];

  @override
  ActorEntity toEntity() => ActorEntity(
        id: id,
        name: name,
        thumbSrc: thumbSrc,
        uri: uri,
        isVerified: isVerified,
        type: type,
      );
}

@freezed
class ComposerSearchSourceDTO extends BaseDTO<ComposerSearchSourceEntity>
    with _$ComposerSearchSourceDTO {
  const factory ComposerSearchSourceDTO({
    @JsonKey(name: '__m') String? m,
  }) = _ComposerSearchSourceDTO;

  const ComposerSearchSourceDTO._();

  factory ComposerSearchSourceDTO.fromJson(Map<String, dynamic> json) =>
      _$ComposerSearchSourceDTOFromJson(json);

  @override
  List<Object?> get props => [
        m,
      ];

  @override
  ComposerSearchSourceEntity toEntity() => ComposerSearchSourceEntity(
        m: m,
      );
}

@freezed
class CommentDataDTO extends BaseDTO<CommentDataEntity> with _$CommentDataDTO {
  const factory CommentDataDTO({
    MetaDTO? meta,
    @Default([]) List<CommentDTO> comments,
  }) = _CommentDataDTO;

  const CommentDataDTO._();

  factory CommentDataDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentDataDTOFromJson(json);

  @override
  List<Object?> get props => [
        meta,
        comments,
      ];

  @override
  CommentDataEntity toEntity() => CommentDataEntity(
        meta: meta?.toEntity(),
        comments: comments.map((e) => e.toEntity()).toList(),
      );
}
