class CommentEntity {
  CommentEntity({
    required this.id,
    required this.authorName,
    required this.authorThumbSrc,
    required this.body,
    required this.timestamp,
    required this.likeCount,
    this.replies = const [],
  });
  final String id;
  final String authorName;
  final String authorThumbSrc;
  final String body;
  final String timestamp;
  final int likeCount;
  final List<CommentEntity> replies;
}
