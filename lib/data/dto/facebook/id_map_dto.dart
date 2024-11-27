import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'id_map_dto.freezed.dart';
part 'id_map_dto.g.dart';

@freezed
class IdMapDTO extends BaseDTO<IdMapEntity> with _$IdMapDTO {
  const factory IdMapDTO({
    @JsonKey(name: 'id') dynamic id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'thumbSrc') String? thumbSrc,
    @JsonKey(name: 'uri') String? uri,
    @JsonKey(name: 'isVerified') bool? isVerified,
    @JsonKey(name: 'type') Type? type,
    @JsonKey(name: 'authorID') dynamic authorId,
    @JsonKey(name: 'body') BodyDTO? body,
    @JsonKey(name: 'ranges') List<dynamic>? ranges,
    @JsonKey(name: 'timestamp') TimestampDTO? timestamp,
    @JsonKey(name: 'targetID') dynamic targetId,
    @JsonKey(name: 'ogURL') String? ogUrl,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'hasLiked') bool? hasLiked,
    @JsonKey(name: 'canLike') bool? canLike,
    @JsonKey(name: 'canEdit') bool? canEdit,
    @JsonKey(name: 'hidden') bool? hidden,
    @JsonKey(name: 'highlightedWords') List<dynamic>? highlightedWords,
    @JsonKey(name: 'reportURI') String? reportUri,
    @JsonKey(name: 'spamCount') int? spamCount,
    @JsonKey(name: 'canEmbed') bool? canEmbed,
    @JsonKey(name: 'public_replies') PublicRepliesDTO? publicReplies,
  }) = _IdMapDTO;

  const IdMapDTO._();

  factory IdMapDTO.fromJson(Map<String, dynamic> json) =>
      _$IdMapDTOFromJson(json);

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
  IdMapEntity toEntity() => IdMapEntity(
        id: id,
        name: name,
        thumbSrc: thumbSrc,
        uri: uri,
        isVerified: isVerified,
        type: type,
        authorId: authorId,
        body: body?.toEntity(),
        ranges: ranges,
        timestamp: timestamp?.toEntity(),
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
        publicReplies: publicReplies?.toEntity(),
      );
}

@freezed
class BodyDTO extends BaseDTO<BodyEntity> with _$BodyDTO {
  const factory BodyDTO({
    @JsonKey(name: 'text') String? text,
  }) = _BodyDTO;

  const BodyDTO._();

  factory BodyDTO.fromJson(Map<String, dynamic> json) =>
      _$BodyDTOFromJson(json);

  @override
  List<Object?> get props => [
        text,
      ];

  @override
  BodyEntity toEntity() => BodyEntity(
        text: text,
      );
}

@freezed
class PublicRepliesDTO extends BaseDTO<PublicRepliesEntity>
    with _$PublicRepliesDTO {
  const factory PublicRepliesDTO({
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'commentIDs') List<dynamic>? commentIDs,
  }) = _PublicRepliesDTO;

  const PublicRepliesDTO._();

  factory PublicRepliesDTO.fromJson(Map<String, dynamic> json) =>
      _$PublicRepliesDTOFromJson(json);

  @override
  List<Object?> get props => [
        totalCount,
        commentIDs,
      ];

  @override
  PublicRepliesEntity toEntity() => PublicRepliesEntity(
        totalCount: totalCount,
        commentIDs: commentIDs,
      );
}

@freezed
class TimestampDTO extends BaseDTO<TimestampEntity> with _$TimestampDTO {
  const factory TimestampDTO({
    @JsonKey(name: 'time') int? time,
    @JsonKey(name: 'text') String? text,
  }) = _TimestampDTO;

  const TimestampDTO._();

  factory TimestampDTO.fromJson(Map<String, dynamic> json) =>
      _$TimestampDTOFromJson(json);

  @override
  List<Object?> get props => [
        time,
        text,
      ];

  @override
  TimestampEntity toEntity() => TimestampEntity(
        time: time,
        text: text,
      );
}

enum Type {
  @JsonValue('comment')
  comment,
  @JsonValue('ogobject')
  ogObject,
  @JsonValue('user')
  user
}

final typeValues = EnumValues({
  'comment': Type.comment,
  'ogobject': Type.ogObject,
  'user': Type.user,
});

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
