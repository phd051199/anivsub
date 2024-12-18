import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../data/data_exports.dart';
import '../../../domain/domain_exports.dart';
import '../../extension/string_extension.dart';
import '../../shared_exports.dart';

class FBCommentPlugin {
  FBCommentPlugin({required this.config});

  FbCommentPluginConfig config;
  SetupDataDTO? _setupData;
  ActorEntity? loginUser;

  Future<SetupDataDTO> setup({
    bool post = false,
    bool force = false,
  }) async {
    if (!force && _setupData != null && (_setupData?.isNotEmpty ?? false)) {
      if (post && _setupData?.setupParams.fbDtsg != null) {
        return _setupData!;
      }
      if (!post) {
        return _setupData!;
      }
    }

    final url = '${config.pluginUrl}/feedback.php';
    final hostname = Uri.parse(config.app).host;

    final queries = FeedbackQueriesEntity(
      appId: config.appId,
      channel: Uri.encodeFull(_buildChannelUrl(hostname)),
      colorScheme: 'light',
      containerWidth: '973',
      height: '100',
      href: config.href,
      lazy: 'false',
      locale: config.locale,
      numposts: '${config.limit}',
      orderBy: config.orderBy,
      sdk: config.sdk,
      version: config.version,
      width: '',
    );

    final mainUrl = '$url?${Uri(queryParameters: queries.toJson()).query}';
    final html = await fbApiClient.getFeedback(queries);

    final initResponse = _parseInitialComments(html);
    final setupParams = _extractSetupParams(html);

    loginUser =
        initResponse.meta?.actors?[initResponse.meta?.userId]?.toEntity();

    final headers = CustomHeadersDTO(
      xFbLsd: setupParams.lsd ?? '',
      origin: Uri.parse(config.pluginUrl).origin,
      referer: mainUrl,
      custom: config.headersCustom,
    );

    _setupData = SetupDataDTO(
      headers: headers,
      setupParams: setupParams,
      initResponse: initResponse,
    );

    return _setupData!;
  }

  Future<void> logout() async {
    _setupData = null;
    loginUser = null;
  }

  Future<CommentDataEntity> getComments() async {
    try {
      final setup = await this.setup();

      final parsedComments = await compute(
        CommentParser.parse,
        setup.initResponse.comments ?? const CommentsDTO(),
      );
      final parsedCommentsEntity =
          parsedComments.map((e) => e.toEntity()).toList();

      return CommentDataEntity(
        meta: setup.initResponse.meta?.toEntity(),
        comments: parsedCommentsEntity,
      );
    } catch (e) {
      return const CommentDataEntity();
    }
  }

  Future<CommentDataEntity> updateUrlAndGetComments(String url) {
    if (url != config.href) {
      config = config.copyWith(href: url);
      _setupData = null;
    }
    return getComments();
  }

  Future<String> postComment(String text) async {
    final setup = await this.setup(post: true);

    if (setup.setupParams.fbDtsg == null &&
        _setupData?.setupParams.fbDtsg == null) {
      throw Exception('fb_dtsg not found');
    }

    final body = PostCommentRequestDTO(
      appId: setup.setupParams.appId ?? '',
      text: text,
      attachedPhotoFbid: '0',
      attachedStickerFbid: '0',
      postToFeed: 'false',
      privacyOption: 'everyone',
      user: loginUser?.id ?? '',
      a: setup.setupParams.a,
      req: setup.setupParams.req,
      hs: setup.setupParams.hs ?? '',
      dpr: setup.setupParams.dpr,
      ccg: setup.setupParams.ccg,
      rev: setup.setupParams.rev ?? '',
      s: setup.setupParams.s,
      hsi: setup.setupParams.hsi ?? '',
      dyn: setup.setupParams.dyn,
      csr: setup.setupParams.csr,
      locale: setup.setupParams.locale,
      lsd: setup.setupParams.lsd ?? '',
      jazoest: setup.setupParams.jazoest,
      sp: setup.setupParams.sp,
      fbDtsg: setup.setupParams.fbDtsg ?? _setupData?.setupParams.fbDtsg ?? '',
    ).toJson();

    final headers = setup.headers;

    final data = await fbApiClient.postComment(
      setup.setupParams.targetID ?? '',
      body,
      headers.xFbLsd,
      headers.origin,
      headers.referer,
    );

    final json = data.parseRT();
    final parsedResponse = PostCommentResponseDTO.fromJson(json).toEntity();

    return parsedResponse.payload?.commentID ?? '';
  }

  Future<void> deleteComment(String commentId) async {
    final setup = await this.setup(post: true);

    if (setup.setupParams.fbDtsg == null &&
        _setupData?.setupParams.fbDtsg == null) {
      throw Exception('fb_dtsg not found');
    }

    final body = PostCommentRequestDTO(
      appId: setup.setupParams.appId ?? '',
      a: setup.setupParams.a,
      req: setup.setupParams.req,
      hs: setup.setupParams.hs ?? '',
      dpr: setup.setupParams.dpr,
      rev: setup.setupParams.rev ?? '',
      s: setup.setupParams.s,
      hsi: setup.setupParams.hsi ?? '',
      dyn: setup.setupParams.dyn,
      csr: setup.setupParams.csr,
      locale: setup.setupParams.locale,
      lsd: setup.setupParams.lsd ?? '',
      jazoest: setup.setupParams.jazoest,
      sp: setup.setupParams.sp,
      fbDtsg: setup.setupParams.fbDtsg ?? _setupData?.setupParams.fbDtsg ?? '',
      user: loginUser?.id ?? '',
      ccg: 'EXCELLENT',
    ).toJson();

    body['comment_id'] = commentId;

    await fbApiClient.deleteComment(loginUser?.id ?? '', body);
  }

  Future<void> likeComment(String commentId, bool isLike) async {
    final setup = await this.setup(post: true);

    final body = PostCommentRequestDTO(
      appId: setup.setupParams.appId ?? '',
      user: loginUser?.id ?? '',
      a: setup.setupParams.a,
      req: setup.setupParams.req,
      hs: setup.setupParams.hs ?? '',
      dpr: setup.setupParams.dpr,
      ccg: 'EXCELLENT',
      rev: setup.setupParams.rev ?? '',
      s: setup.setupParams.s,
      hsi: setup.setupParams.hsi ?? '',
      dyn: setup.setupParams.dyn,
      csr: setup.setupParams.csr,
      locale: setup.setupParams.locale,
      lsd: setup.setupParams.lsd ?? '',
      jazoest: setup.setupParams.jazoest,
      sp: setup.setupParams.sp,
      fbDtsg: setup.setupParams.fbDtsg ?? _setupData?.setupParams.fbDtsg ?? '',
    ).toJson();

    body['comment_id'] = commentId;

    await fbApiClient.likeComment(isLike, loginUser?.id ?? '', body);
  }

  Future<CommentDataEntity> getMoreComments([String? afterCursor]) async {
    final setup = await this.setup();

    final body = PostCommentRequestDTO(
      appId: setup.setupParams.appId ?? '',
      limit: setup.setupParams.limit,
      user: loginUser?.id ?? '',
      a: setup.setupParams.a,
      req: setup.setupParams.req,
      hs: setup.setupParams.hs ?? '',
      dpr: setup.setupParams.dpr,
      ccg: 'MODERATE',
      rev: setup.setupParams.rev ?? '',
      s: setup.setupParams.s,
      hsi: setup.setupParams.hsi ?? '',
      dyn: setup.setupParams.dyn,
      csr: setup.setupParams.csr,
      locale: setup.setupParams.locale,
      lsd: setup.setupParams.lsd ?? '',
      jazoest: setup.setupParams.jazoest,
      sp: setup.setupParams.sp,
      fbDtsg: setup.setupParams.fbDtsg ?? _setupData?.setupParams.fbDtsg ?? '',
      afterCursor: afterCursor,
    ).toJson();

    final headers = setup.headers;

    try {
      final data = await fbApiClient.getComments(
        setup.setupParams.targetID ?? '',
        config.orderBy,
        body,
        headers.xFbLsd,
        headers.origin,
        headers.referer,
      );

      final json = data.parseRT();
      final Map<String, dynamic> payload = json['payload'];

      final comments = CommentsDTO.fromJson(payload);
      final parsedComments = await compute(CommentParser.parse, comments);
      final parsedCommentsEntity =
          parsedComments.map((e) => e.toEntity()).toList();

      final meta = MetaDTO(
        totalCount: payload['totalCount'],
        afterCursor: payload['afterCursor'],
      ).toEntity();

      return CommentDataEntity(
        meta: meta,
        comments: parsedCommentsEntity,
      );
    } catch (e) {
      return const CommentDataEntity();
    }
  }

  GetInitialCommentResponseDTO _parseInitialComments(String html) {
    final propsIndex = html.lastIndexOf('"props"');
    final placeholderIndex = html.lastIndexOf('"placeholderElement"');

    if (propsIndex == -1 || placeholderIndex == -1) {
      throw Exception('Unable to find comments data in HTML response');
    }

    final jsonStr = html.substring(propsIndex + 8, placeholderIndex - 1);

    try {
      final Map<String, dynamic> json = jsonDecode(jsonStr);

      final meta = json['meta'];
      if (meta is Map<String, dynamic>) {
        if (meta['actorsOptIn'] is List) meta['actorsOptIn'] = null;
        if (meta['actors'] is List) meta['actors'] = null;
      }

      return GetInitialCommentResponseDTO.fromJson(json);
    } catch (e) {
      throw Exception('Failed to parse comments data: $e');
    }
  }

  String _buildChannelUrl(String hostname) {
    return 'https://staticxx.facebook.com/x/connect/xd_arbiter/?version=46'
        '#cb=fc971c42bd70c0003'
        '&domain=$hostname'
        '&is_canvas=false'
        '&origin=https://${config.app}/fbaf0c74572724fba'
        '&relation=parent.parent';
  }

  SetupParamsDTO _extractSetupParams(String html) {
    final params = SetupParamsDTO(
      targetID: _extractRegexGroup(html, r'"targetID":"(\d+)"'),
      appId: _extractRegexGroup(html, r'"appID":"(\d+)"'),
      hs: _extractRegexGroup(html, r'"haste_session"\:"([^"]+)"'),
      rev: _extractRegexGroup(html, r'"client_revision":(\d+)'),
      hsi: _extractRegexGroup(html, r'"hsi":"(\d+)"'),
      locale: _extractRegexGroup(html, r'"locale":"(\w+)"') ?? config.locale,
      lsd: _extractRegexGroup(html, r'"LSD",\[\],{"token":"([^"]+)"'),
      fbDtsg:
          _extractRegexGroup(html, r'"DTSGInitData",\[\],{"token":"([^"]+)"'),
      limit: config.limit.toString(),
      a: '1',
      req: '1',
      dpr: '1',
      ccg: 'GOOD',
      s: '',
      dyn: '',
      csr: '',
      jazoest: '',
      sp: '1',
    );

    if (params.hasNullValues()) {
      throw Exception('Failed to parse required parameters from response');
    }

    return params;
  }

  String? _extractRegexGroup(String input, String pattern) {
    return RegExp(pattern).firstMatch(input)?.group(1);
  }
}
