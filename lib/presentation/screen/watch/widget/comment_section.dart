import 'dart:io' as io;

import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/core/utils/utils.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:anivsub/presentation/widget/web_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:comment_tree/comment_tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gap/gap.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({super.key});

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _textController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isAtBottom) _loadMoreComments();
  }

  bool get _isAtBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;

    return currentScroll == maxScroll;
  }

  void _loadMoreComments() {
    context.read<WatchBloc>().add(const LoadMoreComments());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.focusScope.unfocus,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: context.screenSize.height * 0.6,
        ),
        child: ListView(
          controller: _scrollController,
          children: [
            _buildCommentInput(),
            _buildCommentList(),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentInput() {
    return BlocBuilder<WatchBloc, WatchState>(
      builder: (context, state) {
        if (state is! WatchLoaded) return const SizedBox.shrink();
        return CommentInputField(
          state: state,
          textController: _textController,
          onSubmit: _handleCommentSubmission,
        );
      },
    );
  }

  Widget _buildCommentList() {
    return BlocBuilder<WatchBloc, WatchState>(
      builder: (context, state) {
        if (state is! WatchLoaded) return const SizedBox.shrink();
        return CommentList(
          comments: state.comments ?? [],
          fbUser: state.fbUser,
          onDeleteComment: _handleDeleteComment,
          onLikeComment: _handleLikeComment,
        );
      },
    );
  }

  Future<void> _handleCommentSubmission() async {
    if (!mounted) return;

    final state = context.read<WatchBloc>().state;
    if (state is! WatchLoaded || state.isCmtLoading) return;

    await _ensureUserLoggedIn();

    if (_textController.text.trim().isNotEmpty) {
      final comment = _textController.text.trim();
      _textController.clear();
      _postComment(comment);
    }
  }

  Future<void> _ensureUserLoggedIn() async {
    await _silentlyLoadCookies();

    final webviewCookies = await CookieManager.instance().getCookies(
      url: WebUri(fbBaseUrl),
    );

    if (!_isValidCookie(webviewCookies)) {
      _showLoginWebView();
    }
  }

  void _postComment(String comment) {
    if (mounted) {
      context.focusScope.unfocus();
      context.read<WatchBloc>().add(PostComment(comment: comment));
    }
  }

  bool _isValidCookie(List<Cookie> webviewCookies) {
    return webviewCookies.isNotEmpty &&
        webviewCookies.firstWhereOrNull((cookie) => cookie.name == 'c_user') !=
            null;
  }

  Future<void> _silentlyLoadCookies() async {
    final webviewCookies = await CookieManager.instance().getCookies(
      url: WebUri(fbBaseUrl),
    );

    if (_isValidCookie(webviewCookies)) return;

    final headlessWebView = HeadlessInAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(fbBaseUrl)),
      onLoadStop: (controller, url) async {
        await _getCookiesAndSetInDio();
        controller.dispose();
      },
    );

    await headlessWebView.run();
  }

  void _showLoginWebView() {
    if (mounted) {
      showModalBottomSheet(
        clipBehavior: Clip.hardEdge,
        isScrollControlled: true,
        context: context,
        builder: (context) => WebView(
          url: fbBaseUrl,
          onLoadStop: _handleWebViewLoadStop,
        ),
        constraints: BoxConstraints(
          maxHeight: context.screenSize.height * 0.75,
        ),
      );
    }
  }

  Future<void> _handleWebViewLoadStop(
    InAppWebViewController controller,
    BuildContext context,
  ) async {
    final html = await controller.getHtml();

    if (html?.contains('password') == false) {
      await _getCookiesAndSetInDio();

      if (context.mounted) {
        Navigator.of(context).pop();
        _getFbCookies();
      }
    }
  }

  void _getFbCookies() {
    if (mounted) {
      context.read<WatchBloc>().add(const GetFbCookies());
    }
  }

  Future<void> _getCookiesAndSetInDio() async {
    try {
      List<Cookie> cookies =
          await CookieManager.instance().getCookies(url: WebUri(fbBaseUrl));

      if (cookies.isNotEmpty) {
        await cookieJar.saveFromResponse(
          Uri.parse(fbBaseUrl),
          cookies.map(_convertToIOCookie).toList(),
        );
      }
    } catch (e) {
      Log.debug('Error getting cookies and setting in dio $e');
    }
  }

  io.Cookie _convertToIOCookie(Cookie cookie) {
    return io.Cookie(cookie.name, cookie.value)
      ..domain = cookie.domain
      ..path = cookie.path
      ..expires = cookie.expiresDate != null
          ? DateTime.fromMillisecondsSinceEpoch(cookie.expiresDate!.toInt())
          : null
      ..httpOnly = cookie.isHttpOnly ?? false
      ..secure = cookie.isSecure ?? false;
  }

  void _handleDeleteComment(String commentId) {
    if (mounted) {
      context.read<WatchBloc>().add(DeleteComment(commentId: commentId));
    }
  }

  void _handleLikeComment(String commentId) {
    if (mounted) {
      context.read<WatchBloc>().add(LikeComment(commentId: commentId));
    }
  }
}

class CommentInputField extends StatelessWidget {
  const CommentInputField({
    super.key,
    required this.state,
    required this.textController,
    required this.onSubmit,
  });
  final WatchLoaded state;
  final TextEditingController textController;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        children: [
          GestureDetector(
            onTapDown: (details) {
              if (state.fbUser == null) return;

              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                  details.globalPosition.dx,
                  details.globalPosition.dy,
                  details.globalPosition.dx + 1,
                  details.globalPosition.dy + 1,
                ),
                items: [
                  PopupMenuItem(
                    onTap: () async {
                      await CookieManager.instance().deleteAllCookies();
                      await cookieJar.deleteAll();
                      if (context.mounted) {
                        context.showSnackBar('Logged out');
                        context.read<WatchBloc>().add(const Logout());
                      }
                    },
                    child: const Text('Logout'),
                  ),
                ],
              );
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: state.fbUser?.thumbSrc != null
                  ? CachedNetworkImageProvider(state.fbUser!.thumbSrc!)
                  : null,
              child: state.fbUser == null ? const Icon(Icons.person) : null,
            ),
          ),
          const Gap(8),
          Expanded(
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: context.l10n.commentHint,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                suffixIcon: IconButton(
                  onPressed: onSubmit,
                  icon: state.isCmtLoading
                      ? const Icon(Icons.hourglass_bottom_rounded)
                      : const Icon(Icons.send_rounded),
                  color: context.theme.colorScheme.primary,
                ),
              ),
              style: const TextStyle(fontSize: 14),
              maxLines: null,
              textInputAction: TextInputAction.newline,
            ),
          ),
        ],
      ),
    );
  }
}

class CommentList extends StatelessWidget {
  const CommentList({
    super.key,
    required this.comments,
    required this.fbUser,
    required this.onDeleteComment,
    required this.onLikeComment,
  });
  final List<CommentEntity> comments;
  final ActorEntity? fbUser;
  final Function(String) onDeleteComment;
  final Function(String) onLikeComment;

  @override
  Widget build(BuildContext context) {
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: comments.length + (state.isCmtLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == comments.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: LoadingWidget(withBox: false),
          );
        }
        return CommentTreeItem(
          comment: comments[index],
          fbUser: fbUser,
          onDeleteComment: onDeleteComment,
          onLikeComment: onLikeComment,
        );
      },
    );
  }
}

class CommentTreeItem extends StatelessWidget {
  const CommentTreeItem({
    super.key,
    required this.comment,
    required this.fbUser,
    required this.onDeleteComment,
    required this.onLikeComment,
  });
  final CommentEntity comment;
  final ActorEntity? fbUser;
  final Function(String) onDeleteComment;
  final Function(String) onLikeComment;

  @override
  Widget build(BuildContext context) {
    final selfComment = comment.authorName == fbUser?.name &&
        StringUtils.getImageNameFromUrl(comment.authorThumbSrc) ==
            StringUtils.getImageNameFromUrl(fbUser?.thumbSrc ?? '');

    Widget commentWidget = CommentTreeWidget<CommentEntity, CommentEntity>(
      comment,
      comment.replies,
      treeThemeData: TreeThemeData(
        lineWidth: 0.5,
        lineColor: context.theme.colorScheme.outlineVariant,
      ),
      avatarRoot: (context, data) => PreferredSize(
        preferredSize: const Size.fromRadius(18),
        child: _buildAvatar(context, data, isRoot: true),
      ),
      avatarChild: (context, data) => PreferredSize(
        preferredSize: const Size.fromRadius(12),
        child: _buildAvatar(context, data, isRoot: false),
      ),
      contentRoot: (context, data) =>
          _buildCommentContent(context, data, isRoot: true),
      contentChild: (context, data) =>
          _buildCommentContent(context, data, isRoot: false),
    );

    if (selfComment) {
      return Dismissible(
        key: ValueKey(comment.id),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          color: context.theme.colorScheme.error,
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.delete,
              color: context.theme.colorScheme.onError,
            ),
          ),
        ),
        confirmDismiss: (direction) async => true,
        onDismissed: (direction) => onDeleteComment(comment.id),
        child: commentWidget,
      );
    }

    return commentWidget;
  }

  Widget _buildAvatar(
    BuildContext context,
    CommentEntity data, {
    required bool isRoot,
  }) {
    final double radius = isRoot ? 18 : 12;
    return CircleAvatar(
      radius: radius,
      backgroundImage: CachedNetworkImageProvider(data.authorThumbSrc),
    );
  }

  Widget _buildCommentContent(
    BuildContext context,
    CommentEntity data, {
    required bool isRoot,
  }) {
    final likeColor = data.likeCount > 0
        ? context.theme.colorScheme.primary
        : context.theme.colorScheme.outlineVariant;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.authorName,
                style: context.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(data.body, style: context.textTheme.bodyMedium),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
            bottom: 12,
          ),
          child: DefaultTextStyle(
            style: context.textTheme.bodySmall!.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
            child: Row(
              children: [
                Text(data.timestamp),
                const Gap(12),
                GestureDetector(
                  onTap: () => onLikeComment(data.id),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_sharp,
                        size: 12,
                        color: likeColor,
                      ),
                      const Gap(4),
                      Text(
                        '${data.likeCount} ${data.likeCount > 1 ? 'likes' : 'like'}',
                        style: context.textTheme.bodySmall!.copyWith(
                          color: likeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
