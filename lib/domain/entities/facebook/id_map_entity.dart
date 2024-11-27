import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'id_map_entity.freezed.dart';

@freezed
class IdMapEntity extends BaseEntity<IdMapDTO> with _$IdMapEntity {
  const factory IdMapEntity({
    dynamic id,
    String? name,
    String? thumbSrc,
    String? uri,
    bool? isVerified,
    Type? type,
    dynamic authorId,
    BodyEntity? body,
    List<dynamic>? ranges,
    TimestampEntity? timestamp,
    dynamic targetId,
    String? ogUrl,
    int? likeCount,
    bool? hasLiked,
    bool? canLike,
    bool? canEdit,
    bool? hidden,
    List<dynamic>? highlightedWords,
    String? reportUri,
    int? spamCount,
    bool? canEmbed,
    PublicRepliesEntity? publicReplies,
  }) = _IdMapEntity;

  const IdMapEntity._();

  @override
  List<Object?> get props => [
        id,
        name,
        thumbSrc,
        uri,
        isVerified,
        type,
        authorId,
        body,
        ranges,
        timestamp,
        targetId,
        ogUrl,
        likeCount,
        hasLiked,
        canLike,
        canEdit,
        hidden,
        highlightedWords,
        reportUri,
        spamCount,
        canEmbed,
        publicReplies,
      ];

  @override
  IdMapDTO toDTO() => IdMapDTO(
        id: id,
        name: name,
        thumbSrc: thumbSrc,
        uri: uri,
        isVerified: isVerified,
        type: type,
        authorId: authorId,
        body: body?.toDTO(),
        ranges: ranges,
        timestamp: timestamp?.toDTO(),
        targetId: targetId,
        ogUrl: ogUrl,
        likeCount: likeCount,
        hasLiked: hasLiked,
        canLike: canLike,
        canEdit: canEdit,
        hidden: hidden,
        highlightedWords: highlightedWords,
        reportUri: reportUri,
        spamCount: spamCount,
        canEmbed: canEmbed,
        publicReplies: publicReplies?.toDTO(),
      );
}

@freezed
class BodyEntity extends BaseEntity<BodyDTO> with _$BodyEntity {
  const factory BodyEntity({
    String? text,
  }) = _BodyEntity;

  const BodyEntity._();

  @override
  List<Object?> get props => [text];

  @override
  BodyDTO toDTO() => BodyDTO(text: text);
}

@freezed
class PublicRepliesEntity extends BaseEntity<PublicRepliesDTO>
    with _$PublicRepliesEntity {
  const factory PublicRepliesEntity({
    int? totalCount,
    List<dynamic>? commentIDs,
  }) = _PublicRepliesEntity;

  const PublicRepliesEntity._();

  @override
  List<Object?> get props => [totalCount, commentIDs];

  @override
  PublicRepliesDTO toDTO() => PublicRepliesDTO(
        totalCount: totalCount,
        commentIDs: commentIDs,
      );
}

@freezed
class TimestampEntity extends BaseEntity<TimestampDTO> with _$TimestampEntity {
  const factory TimestampEntity({
    int? time,
    String? text,
  }) = _TimestampEntity;

  const TimestampEntity._();

  @override
  List<Object?> get props => [time, text];

  @override
  TimestampDTO toDTO() => TimestampDTO(
        time: time,
        text: text,
      );
}
