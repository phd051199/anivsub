import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({super.key, required this.state});

  final WatchLoaded state;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      initiallyExpanded: true,
      title: Text(
        context.l10n.comment,
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        ListView.builder(
          padding: const EdgeInsets.all(16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.comments?.length ?? 0,
          itemBuilder: (context, index) =>
              _buildCommentTree(state.comments![index]),
        ),
      ],
    );
  }

  Widget _buildCommentTree(CommentEntity comment) {
    return CommentTreeWidget<CommentEntity, CommentEntity>(
      comment,
      comment.replies,
      avatarRoot: (context, data) => PreferredSize(
        preferredSize: const Size.fromRadius(18),
        child: _buildAvatar(context, data),
      ),
      avatarChild: (context, data) => PreferredSize(
        preferredSize: const Size.fromRadius(12),
        child: _buildAvatar(context, data),
      ),
      contentRoot: (context, data) =>
          _buildCommentContent(context, data, isRoot: true),
      contentChild: (context, data) =>
          _buildCommentContent(context, data, isRoot: false),
    );
  }

  Widget _buildAvatar(BuildContext context, CommentEntity data) {
    final double radius = data.replies.isEmpty ? 18 : 12;
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey,
      backgroundImage: NetworkImage(data.authorThumbSrc),
    );
  }

  Widget _buildCommentContent(
    BuildContext context,
    CommentEntity data, {
    required bool isRoot,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.authorName,
                style: context.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                data.body,
                style: context.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 8),
          child: DefaultTextStyle(
            style: context.textTheme.bodySmall!.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
            child: Row(
              children: [
                Text(data.timestamp),
                const SizedBox(width: 12),
                Text('${data.likeCount} likes'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
