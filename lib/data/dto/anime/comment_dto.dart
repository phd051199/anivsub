import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
class CommentDTO extends BaseDTO<CommentEntity> with _$CommentDTO {
  const factory CommentDTO({
    required String id,
    required String authorName,
    required String authorThumbSrc,
    required String body,
    required String timestamp,
    required int likeCount,
    @Default([]) List<CommentDTO> replies,
  }) = _CommentDTO;

  const CommentDTO._();

  factory CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentDTOFromJson(json);

  @override
  List<Object?> get props => [
        id,
        authorName,
        authorThumbSrc,
        body,
        timestamp,
        likeCount,
        replies,
      ];

  @override
  CommentEntity toEntity() {
    return CommentEntity(
      id: id,
      authorName: authorName,
      authorThumbSrc: authorThumbSrc,
      body: body,
      timestamp: timestamp,
      likeCount: likeCount,
      replies: replies.map((r) => r.toEntity()).toList(),
    );
  }
}
