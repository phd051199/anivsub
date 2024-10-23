import 'package:anivsub/data/data_exports.dart';

class CommentParser {
  static List<CommentDTO> parse(Map<String, dynamic> data) {
    try {
      final payload = data['payload'] as Map<String, dynamic>;
      final idMap = payload['idMap'] as Map<String, dynamic>;
      final commentIDs =
          (payload['commentIDs'] as List<dynamic>).cast<String>();

      List<CommentDTO> comments = [];

      for (String commentID in commentIDs) {
        final commentData = idMap[commentID] as Map<String, dynamic>;
        final authorID = commentData['authorID'] as String;
        final authorData = idMap[authorID] as Map<String, dynamic>;

        CommentDTO comment = CommentDTO(
          id: commentID,
          authorName: authorData['name'] as String,
          authorThumbSrc: (authorData['thumbSrc'] as String?) ?? '',
          body: (commentData['body'] as Map<String, dynamic>)['text'] as String,
          timestamp: (commentData['timestamp'] as Map<String, dynamic>)['text']
              as String,
          likeCount: commentData['likeCount'] as int,
        );

        if (commentData.containsKey('public_replies')) {
          final replyIDs = ((commentData['public_replies']
                  as Map<String, dynamic>)['commentIDs'] as List<dynamic>)
              .cast<String>();
          final replies = replyIDs.map((replyID) {
            final replyData = idMap[replyID] as Map<String, dynamic>;
            final replyAuthorID = replyData['authorID'];
            final replyAuthorData =
                idMap[replyAuthorID] as Map<String, dynamic>;

            return CommentDTO(
              id: replyID,
              authorName: (replyAuthorData['name'] as String?) ?? '',
              authorThumbSrc: (replyAuthorData['thumbSrc'] as String?) ?? '',
              body:
                  (replyData['body'] as Map<String, dynamic>)['text'] as String,
              timestamp: (replyData['timestamp']
                  as Map<String, dynamic>)['text'] as String,
              likeCount: replyData['likeCount'] as int,
            );
          }).toList();

          comment = comment.copyWith(replies: replies);
        }

        comments.add(comment);
      }

      return comments;
    } catch (e) {
      return [];
    }
  }
}
