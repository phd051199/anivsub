import '../data_exports.dart';

class CommentParser {
  const CommentParser._();

  static List<CommentDTO> parse(CommentsDTO data) {
    try {
      return _parseComments(data.idMap, data.commentIDs);
    } catch (e) {
      return [];
    }
  }

  static List<CommentDTO> _parseComments(
    Map<String, IdMapDTO>? idMap,
    List<String>? commentIDs,
  ) {
    if (idMap == null || commentIDs == null) return [];

    return commentIDs
        .map((commentID) => _parseComment(idMap, commentID))
        .toList();
  }

  static CommentDTO _parseComment(
    Map<String, IdMapDTO> idMap,
    String commentID,
  ) {
    final commentData = idMap[commentID];
    final authorData = idMap[commentData?.authorId];

    return CommentDTO(
      id: commentID,
      authorName: authorData?.name ?? '',
      authorThumbSrc: authorData?.thumbSrc ?? '',
      body: commentData?.body?.text ?? '',
      timestamp: commentData?.timestamp?.text ?? '',
      likeCount: commentData?.likeCount ?? 0,
      replies: _parseReplies(idMap, commentData?.publicReplies?.commentIDs),
    );
  }

  static List<CommentDTO> _parseReplies(
    Map<String, IdMapDTO> idMap,
    List<dynamic>? replyIDs,
  ) {
    if (replyIDs == null) return [];

    return replyIDs
        .map((replyID) => _parseReply(idMap, replyID.toString()))
        .toList();
  }

  static CommentDTO _parseReply(
    Map<String, IdMapDTO> idMap,
    String replyID,
  ) {
    final replyData = idMap[replyID];
    final replyAuthorData = idMap[replyData?.authorId];

    return CommentDTO(
      id: replyID,
      authorName: replyAuthorData?.name ?? '',
      authorThumbSrc: replyAuthorData?.thumbSrc ?? '',
      body: replyData?.body?.text ?? '',
      timestamp: replyData?.timestamp?.text ?? '',
      likeCount: replyData?.likeCount ?? 0,
    );
  }
}
