import 'dart:io' as io;

import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/core/utils/log_utils.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:comment_tree/comment_tree.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({
    super.key,
    required this.state,
  });

  final WatchLoaded state;

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
    if (_isAtBottom) {
      Log.debug('Near bottom of comment list');
      _loadMoreComments();
    }
  }

  bool get _isAtBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;

    return maxScroll == currentScroll;
  }

  void _loadMoreComments() {
    context.read<WatchBloc>().add(const LoadMoreComments());
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      initiallyExpanded: true,
      title: Text(
        '${context.l10n.comment} (${widget.state.totalCommentCount?.formatNumber() ?? 0})',
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        ConstrainedBox(
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
      ],
    );
  }

  Widget _buildCommentInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: widget.state.fbUser?.thumbSrc != null
                ? CachedNetworkImageProvider(widget.state.fbUser!.thumbSrc!)
                : null,
            child:
                widget.state.fbUser == null ? const Icon(Icons.person) : null,
          ),
          const Gap(8),
          Expanded(
            child: TextField(
              controller: _textController,
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
                  onPressed: _handleCommentSubmission,
                  icon: widget.state.isCmtLoading
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

  Widget _buildCommentList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.state.comments?.length ?? 0,
      itemBuilder: (context, index) => _buildCommentTree(
        widget.state.comments![index],
        key: UniqueKey(),
      ),
    );
  }

  Future<void> _handleCommentSubmission() async {
    if (widget.state.isCmtLoading) return;

    final cookies =
        await GetIt.I.get<CookieJar>().loadForRequest(Uri.parse(fbBaseUrl));

    final webviewCookies = await CookieManager.instance().getCookies(
      url: WebUri(fbBaseUrl),
    );

    if (cookies.isEmpty && webviewCookies.isEmpty) {
      _showLoginWebView();
      return;
    } else if (cookies.isEmpty && webviewCookies.isNotEmpty) {
      await _silentlyLoadCookies();
    }

    if (_textController.text.isNotEmpty) {
      final comment = _textController.text;
      _textController.clear();

      if (mounted) {
        context.focusScope.unfocus();
        context.read<WatchBloc>().add(PostComment(comment: comment));
      }
    }
  }

  Future<void> _silentlyLoadCookies() async {
    final cookies = await CookieManager.instance().getCookies(
      url: WebUri(fbBaseUrl),
    );
    await GetIt.I.get<CookieJar>().saveFromResponse(
          Uri.parse(fbBaseUrl),
          cookies.map(_convertToIOCookie).toList(),
        );
  }

  void _showLoginWebView() {
    if (mounted) {
      showModalBottomSheet(
        clipBehavior: Clip.hardEdge,
        isScrollControlled: true,
        context: context,
        builder: (context) => _buildWebView(context),
        constraints: BoxConstraints(
          maxHeight: context.screenSize.height * 0.75,
        ),
      );
    }
  }

  Widget _buildWebView(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(fbBaseUrl)),
      initialSettings: InAppWebViewSettings(),
      onLoadStop: (controller, url) =>
          _handleWebViewLoadStop(controller, context),
    );
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
        await GetIt.I<CookieJar>().saveFromResponse(
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

  String getImageNameFromUrl(String url) {
    final uri = Uri.parse(url);
    final pathSegments = uri.pathSegments;
    if (pathSegments.isNotEmpty) {
      return pathSegments.last;
    }
    return '';
  }

  Widget _buildCommentTree(CommentEntity comment, {required Key key}) {
    final selfComment = comment.authorName == widget.state.fbUser?.name &&
        getImageNameFromUrl(comment.authorThumbSrc) ==
            getImageNameFromUrl(widget.state.fbUser?.thumbSrc ?? '');

    Widget commentWidget = CommentTreeWidget<CommentEntity, CommentEntity>(
      comment,
      comment.replies,
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
        key: key,
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
        confirmDismiss: (direction) async {
          if (widget.state.isCmtLoading) {
            context.showSnackBar('Please wait...');

            return false;
          }
          return true;
        },
        onDismissed: (direction) {
          if (mounted && !widget.state.isCmtLoading) {
            context.read<WatchBloc>().add(DeleteComment(commentId: comment.id));
          }
        },
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
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: context.theme.colorScheme.outlineVariant),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: CachedNetworkImageProvider(data.authorThumbSrc),
      ),
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
          padding: const EdgeInsets.only(top: 4, left: 8, bottom: 8),
          child: DefaultTextStyle(
            style: context.textTheme.bodySmall!.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
            child: Row(
              children: [
                Text(data.timestamp),
                const Gap(12),
                GestureDetector(
                  onTap: () => context
                      .read<WatchBloc>()
                      .add(LikeComment(commentId: data.id)),
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
