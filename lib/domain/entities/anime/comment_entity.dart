import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'comment_entity.freezed.dart';

@freezed
class CommentEntity extends BaseEntity<CommentDTO> with _$CommentEntity {
  const factory CommentEntity({
    required String id,
    required String authorName,
    required String authorThumbSrc,
    required String body,
    required String timestamp,
    required int likeCount,
    @Default([]) List<CommentEntity> replies,
  }) = _CommentEntity;

  const CommentEntity._();

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
  CommentDTO toDTO() => CommentDTO(
        id: id,
        authorName: authorName,
        authorThumbSrc: authorThumbSrc,
        body: body,
        timestamp: timestamp,
        likeCount: likeCount,
        replies: replies.map((e) => e.toDTO()).toList(),
      );
}
