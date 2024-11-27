import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'post_comment_response_dto.freezed.dart';
part 'post_comment_response_dto.g.dart';

@freezed
class PostCommentResponseDTO extends BaseDTO<PostCommentResponseEntity>
    with _$PostCommentResponseDTO {
  const factory PostCommentResponseDTO({
    @JsonKey(name: '__ar') int? ar,
    @JsonKey(name: 'payload') PostCommentPayloadDTO? payload,
    @JsonKey(name: 'lid') String? lid,
  }) = _PostCommentResponseDTO;

  const PostCommentResponseDTO._();

  factory PostCommentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PostCommentResponseDTOFromJson(json);

  @override
  List<Object?> get props => [ar, payload, lid];

  @override
  PostCommentResponseEntity toEntity() => PostCommentResponseEntity(
        ar: ar,
        payload: payload?.toEntity(),
        lid: lid,
      );
}

@freezed
class PostCommentPayloadDTO extends BaseDTO<PostCommentPayloadEntity>
    with _$PostCommentPayloadDTO {
  const factory PostCommentPayloadDTO({
    @JsonKey(name: 'commentID') String? commentID,
    @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap,
  }) = _PostCommentPayloadDTO;

  const PostCommentPayloadDTO._();

  factory PostCommentPayloadDTO.fromJson(Map<String, dynamic> json) =>
      _$PostCommentPayloadDTOFromJson(json);

  @override
  List<Object?> get props => [commentID, idMap];

  @override
  PostCommentPayloadEntity toEntity() => PostCommentPayloadEntity(
        commentID: commentID,
        idMap: idMap?.map((key, value) => MapEntry(key, value.toEntity())),
      );
}
