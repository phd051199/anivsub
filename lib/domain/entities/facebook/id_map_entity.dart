import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  static IdMapEntity mockup() => const IdMapEntity(
        id: '123',
        name: 'John Doe',
        thumbSrc: 'https://example.com/thumb.jpg',
        uri: 'https://example.com/profile',
        isVerified: true,
        type: Type.user,
        authorId: '456',
        body: BodyEntity(text: 'Hello, world!'),
        ranges: [],
        timestamp: TimestampEntity(time: 1625097600, text: '2 hours ago'),
        targetId: '789',
        ogUrl: 'https://example.com/post',
        likeCount: 42,
        hasLiked: true,
        canLike: true,
        canEdit: false,
        hidden: false,
        highlightedWords: [],
        reportUri: 'https://example.com/report',
        spamCount: 0,
        canEmbed: true,
        publicReplies:
            PublicRepliesEntity(totalCount: 5, commentIDs: ['1', '2', '3']),
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