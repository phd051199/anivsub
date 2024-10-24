import 'package:anivsub/core/plugin/fb_comment.dart';
import 'package:anivsub/domain/domain_exports.dart';

class CommentParser {
  static List<CommentEntity> parse(CommentsData data) {
    try {
      final payload = data.comments;
      final idMap = payload['idMap'] as Map<String, dynamic>;
      final commentIDs = payload['commentIDs'] as List<dynamic>;

      return commentIDs
          .map((commentID) => CommentEntity.fromJson(idMap[commentID], idMap))
          .toList();
    } catch (e) {
      return [];
    }
  }
}
