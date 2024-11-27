import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'post_comment_response_entity.freezed.dart';

@freezed
class PostCommentResponseEntity extends BaseEntity<PostCommentResponseDTO>
    with _$PostCommentResponseEntity {
  const factory PostCommentResponseEntity({
    int? ar,
    PostCommentPayloadEntity? payload,
    String? lid,
  }) = _PostCommentResponseEntity;

  const PostCommentResponseEntity._();

  @override
  List<Object?> get props => [ar, payload, lid];

  @override
  PostCommentResponseDTO toDTO() => PostCommentResponseDTO(
        ar: ar,
        payload: payload?.toDTO(),
        lid: lid,
      );
}

@freezed
class PostCommentPayloadEntity extends BaseEntity<PostCommentPayloadDTO>
    with _$PostCommentPayloadEntity {
  const factory PostCommentPayloadEntity({
    String? commentID,
    Map<String, IdMapEntity>? idMap,
  }) = _PostCommentPayloadEntity;

  const PostCommentPayloadEntity._();

  @override
  List<Object?> get props => [commentID, idMap];

  @override
  PostCommentPayloadDTO toDTO() => PostCommentPayloadDTO(
        commentID: commentID,
        idMap: idMap?.map((key, value) => MapEntry(key, value.toDTO())),
      );
}
