import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_initial_comment_response_entity.freezed.dart';

@freezed
class GetInitialCommentResponseEntity
    extends BaseEntity<GetInitialCommentResponseDTO>
    with _$GetInitialCommentResponseEntity {
  const factory GetInitialCommentResponseEntity({
    CommentsEntity? comments,
    MetaEntity? meta,
    String? initialOrdering,
    bool? rankingAllowed,
  }) = _GetInitialCommentResponseEntity;

  const GetInitialCommentResponseEntity._();

  @override
  List<Object?> get props => [
        comments,
        meta,
        initialOrdering,
        rankingAllowed,
      ];

  @override
  GetInitialCommentResponseDTO toDTO() => GetInitialCommentResponseDTO(
        comments: comments?.toDTO(),
        meta: meta?.toDTO(),
        initialOrdering: initialOrdering,
        rankingAllowed: rankingAllowed,
      );
}

@freezed
class CommentsEntity extends BaseEntity<CommentsDTO> with _$CommentsEntity {
  const factory CommentsEntity({
    List<String>? commentIDs,
    Map<String, IdMapEntity>? idMap,
  }) = _CommentsEntity;

  const CommentsEntity._();

  @override
  List<Object?> get props => [
        commentIDs,
        idMap,
      ];

  @override
  CommentsDTO toDTO() => CommentsDTO(
        commentIDs: commentIDs,
        idMap: idMap?.map((key, value) => MapEntry(key, value.toDTO())),
      );
}

@freezed
class MetaEntity extends BaseEntity<MetaDTO> with _$MetaEntity {
  const factory MetaEntity({
    String? targetFbid,
    String? href,
    String? userId,
    Map<String, bool>? actorsOptIn,
    Map<String, ActorEntity>? actors,
    int? totalCount,
    String? afterCursor,
    String? appId,
    bool? isMobile,
    bool? isModerator,
    int? minFeedLength,
    int? maxCommentLength,
    bool? enablePhoto,
    bool? enableSticker,
    bool? threadClosed,
    bool? shouldSwitchAccount,
    bool? fromModTool,
    List<dynamic>? privacyOptionsList,
    ComposerSearchSourceEntity? composerSearchSource,
    String? channelUrl,
    bool? consentRequired,
  }) = _MetaEntity;

  const MetaEntity._();

  @override
  List<Object?> get props => [
        targetFbid,
        href,
        userId,
        actorsOptIn,
        actors,
      ];

  @override
  MetaDTO toDTO() => MetaDTO(
        targetFbid: targetFbid,
        href: href,
        userId: userId,
        actorsOptIn: actorsOptIn,
        actors: actors?.map((key, value) => MapEntry(key, value.toDTO())),
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
        composerSearchSource: composerSearchSource?.toDTO(),
        channelUrl: channelUrl,
        consentRequired: consentRequired,
      );
}

@freezed
class ActorEntity extends BaseEntity<ActorDTO> with _$ActorEntity {
  const factory ActorEntity({
    String? id,
    String? name,
    String? thumbSrc,
    String? uri,
    bool? isVerified,
    Type? type,
  }) = _ActorEntity;

  const ActorEntity._();

  @override
  List<Object?> get props => [
        id,
        name,
      ];

  @override
  ActorDTO toDTO() => ActorDTO(
        id: id,
        name: name,
        thumbSrc: thumbSrc,
        uri: uri,
        isVerified: isVerified,
        type: type,
      );
}

@freezed
class ComposerSearchSourceEntity extends BaseEntity<ComposerSearchSourceDTO>
    with _$ComposerSearchSourceEntity {
  const factory ComposerSearchSourceEntity({
    String? m,
  }) = _ComposerSearchSourceEntity;

  const ComposerSearchSourceEntity._();

  @override
  List<Object?> get props => [
        m,
      ];

  @override
  ComposerSearchSourceDTO toDTO() => ComposerSearchSourceDTO(
        m: m,
      );
}

@freezed
class CommentDataEntity extends BaseEntity<CommentDataDTO>
    with _$CommentDataEntity {
  const factory CommentDataEntity({
    MetaEntity? meta,
    List<CommentEntity>? comments,
  }) = _CommentDataEntity;

  const CommentDataEntity._();

  @override
  List<Object?> get props => [
        meta,
        comments,
      ];

  @override
  CommentDataDTO toDTO() => CommentDataDTO(
        meta: meta?.toDTO(),
        comments: comments?.map((e) => e.toDTO()).toList() ?? [],
      );
}
