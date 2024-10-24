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

  factory CommentEntity.fromJson(
    Map<String, dynamic> json,
    Map<String, dynamic> idMap,
  ) {
    final authorID = json['authorID'] as String;
    final authorData = idMap[authorID] as Map<String, dynamic>;

    List<CommentEntity> replies = [];
    if (json.containsKey('public_replies')) {
      final replyIDs = ((json['public_replies']
              as Map<String, dynamic>)['commentIDs'] as List<dynamic>)
          .cast<String>();
      replies = replyIDs
          .map((replyID) => CommentEntity.fromJson(idMap[replyID], idMap))
          .toList();
    }

    return CommentEntity(
      id: json['id'] as String,
      authorName: authorData['name'] as String,
      authorThumbSrc: (authorData['thumbSrc'] as String?) ?? '',
      body: (json['body'] as Map<String, dynamic>)['text'] as String,
      timestamp: (json['timestamp'] as Map<String, dynamic>)['text'] as String,
      likeCount: json['likeCount'] as int,
      replies: replies,
    );
  }
  final String id;
  final String authorName;
  final String authorThumbSrc;
  final String body;
  final String timestamp;
  final int likeCount;
  final List<CommentEntity> replies;
}
