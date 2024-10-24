import 'dart:async';
import 'dart:convert';

import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/core/utils/log_utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:get_it/get_it.dart';

class FBCommentPlugin {
  FBCommentPlugin({required this.config});

  final FBCommentPluginConfig config;
  final FbApiClient _fbApiClient = GetIt.I.get<FbApiClient>();
  SetupData? _setupData;

  Future<SetupData> setup({
    bool post = false,
  }) async {
    if (post &&
        _setupData != null &&
        _setupData!.isNotEmpty &&
        _setupData!.setupParams.fbDtsg != null) {
      return _setupData!;
    }
    if (!post && _setupData != null && _setupData!.isNotEmpty) {
      return _setupData!;
    }

    final url = '${config.pluginUrl}/feedback.php';
    final hostname = Uri.parse(config.app).host;

    final queries = _buildFeedbackQueries(hostname);
    final mainUrl = '$url?${Uri(queryParameters: queries.toJson()).query}';
    final html = await _fbApiClient.getFeedback(queries);

    final initialComments = _parseInitialComments(html);
    final setupParams = _extractSetupParams(html);
    _setupData = SetupData(
      headers: _buildHeaders(setupParams.lsd ?? '', mainUrl),
      setupParams: setupParams,
      comments: initialComments,
    );

    return _setupData!;
  }

  Future<CommentsData> getComments() async {
    try {
      final setup = await this.setup();
      final comments = setup.comments;
      final initialComments = comments.comments;

      final meta = comments.meta;
      final userID = meta.userID;

      final actors = meta.actors;
      FBUser user = FBUser.fromJson(actors?[userID]);

      final totalCount = meta.totalCount;

      return CommentsData(
        comments: initialComments,
        meta: CommentsMeta(
          userID: userID,
          actors: {userID: user},
          totalCount: totalCount,
        ),
      );
    } catch (e) {
      Log.debug(e);
      return CommentsData();
    }
  }

  Future<CommentResponse> getMoreComments([String? afterCursor]) async {
    final setup = await this.setup();
    final comments = setup.comments;
    final meta = comments.meta;
    final userID = meta.userID;
    afterCursor ??= meta.afterCursor;

    final body =
        _buildCommentRequestBody(setup.setupParams, userID, afterCursor);
    final headers = setup.headers;

    try {
      final data = await _fbApiClient.getComments(
        setup.setupParams.targetID ?? '',
        config.orderBy,
        body,
        headers.xFbLsd,
        headers.origin,
        headers.referer,
      );

      return CommentResponse.fromJson(data.parseRT());
    } catch (e) {
      Log.debug(e);
      return CommentResponse();
    }
  }

  Future<PostCommentResponse> postComment(String text) async {
    final setup = await this.setup(post: true);

    if (setup.setupParams.fbDtsg == null &&
        _setupData!.setupParams.fbDtsg == null) {
      throw Exception('fb_dtsg not found');
    }

    final body = _buildPostCommentBody(setup.setupParams, text);
    final headers = setup.headers;

    final data = await _fbApiClient.postComment(
      setup.setupParams.targetID ?? '',
      body,
      headers.xFbLsd,
      headers.origin,
      headers.referer,
    );

    final parsedData = CommentResponse.fromJson(data.parseRT());

    final payload = parsedData.payload;
    final commentId = payload.commentID;
    final idMap = payload.idMap;
    final userEntry = idMap.entries.firstWhere(
      (entry) => entry.value.type == 'user',
    );
    final userMap = userEntry.value;
    final authorName = userMap.name;
    final authorThumbSrc = userMap.thumbSrc;

    return PostCommentResponse(
      commentID: commentId,
      authorName: authorName,
      authorThumbSrc: authorThumbSrc,
      userEntry: userMap,
    );
  }

  CommentsData _parseInitialComments(String html) {
    final propsIndex = html.lastIndexOf('"props"');
    final placeholderIndex = html.lastIndexOf('"placeholderElement"');

    if (propsIndex == -1 || placeholderIndex == -1) {
      throw Exception('Unable to find comments data in HTML response');
    }

    final jsonStr = html.substring(propsIndex + 8, placeholderIndex - 1);

    try {
      final json = jsonDecode(jsonStr);
      return CommentsData.fromJson(json);
    } catch (e) {
      throw Exception('Failed to parse comments data: $e');
    }
  }

  FeedbackQueriesEntity _buildFeedbackQueries(String hostname) {
    return FeedbackQueriesEntity(
      appId: config.appId ?? '',
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
  }

  String _buildChannelUrl(String hostname) {
    return 'https://staticxx.facebook.com/x/connect/xd_arbiter/?version=46'
        '#cb=fc971c42bd70c0003'
        '&domain=$hostname'
        '&is_canvas=false'
        '&origin=https://${config.app}/fbaf0c74572724fba'
        '&relation=parent.parent';
  }

  SetupParams _extractSetupParams(String html) {
    final params = SetupParams(
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

  Headers _buildHeaders(String lsd, String mainUrl) {
    return Headers(
      xFbLsd: lsd,
      origin: Uri.parse(config.pluginUrl).origin,
      referer: mainUrl,
      custom: config.headersCustom,
    );
  }

  Map<String, dynamic> _buildCommentRequestBody(
    SetupParams setup,
    String userID,
    String? afterCursor,
  ) {
    return {
      'app_id': setup.appId ?? '',
      'limit': setup.limit,
      '__user': userID,
      '__a': setup.a,
      '__req': setup.req,
      '__hs': setup.hs ?? '',
      'dpr': setup.dpr,
      '__ccg': setup.ccg,
      '__rev': setup.rev ?? '',
      '__s': setup.s,
      '__hsi': setup.hsi ?? '',
      '__dyn': setup.dyn,
      '__csr': setup.csr,
      'locale': setup.locale,
      'lsd': setup.lsd ?? '',
      'jazoest': setup.jazoest,
      '__sp': setup.sp,
      'fb_dtsg': setup.fbDtsg ?? _setupData!.setupParams.fbDtsg ?? '',
      if (afterCursor != null) 'after_cursor': afterCursor,
    };
  }

  Map<String, dynamic> _buildPostCommentBody(
    SetupParams setup,
    String text,
  ) {
    final comments = _setupData!.comments;
    final meta = comments.meta;
    final userID = meta.userID;

    return {
      'app_id': setup.appId ?? '',
      'text': text,
      'attached_photo_fbid': '0',
      'attached_sticker_fbid': '0',
      'post_to_feed': 'false',
      'privacy_option': 'everyone',
      '__user': userID,
      '__a': setup.a,
      '__req': setup.req,
      '__hs': setup.hs ?? '',
      'dpr': setup.dpr,
      '__ccg': 'EXCELLENT',
      '__rev': setup.rev ?? '',
      '__s': setup.s,
      '__hsi': setup.hsi ?? '',
      '__dyn': setup.dyn,
      '__csr': setup.csr,
      'locale': setup.locale,
      'fb_dtsg': setup.fbDtsg ?? _setupData!.setupParams.fbDtsg,
      'jazoest': setup.jazoest,
      'lsd': setup.lsd ?? '',
      '__sp': setup.sp,
    };
  }
}

class SetupData {
  SetupData({
    required this.headers,
    required this.setupParams,
    required this.comments,
  });
  final Headers headers;
  final SetupParams setupParams;
  final CommentsData comments;

  bool get isNotEmpty => setupParams.isNotEmpty;
}

class SetupParams {
  SetupParams({
    this.targetID,
    this.appId,
    this.hs,
    this.rev,
    this.hsi,
    required this.locale,
    this.lsd,
    this.fbDtsg,
    required this.limit,
    required this.a,
    required this.req,
    required this.dpr,
    required this.ccg,
    required this.s,
    required this.dyn,
    required this.csr,
    required this.jazoest,
    required this.sp,
  });
  final String? targetID;
  final String? appId;
  final String? hs;
  final String? rev;
  final String? hsi;
  final String locale;
  final String? lsd;
  final String? fbDtsg;
  final String limit;
  final String a;
  final String req;
  final String dpr;
  final String ccg;
  final String s;
  final String dyn;
  final String csr;
  final String jazoest;
  final String sp;

  bool hasNullValues() {
    return [targetID, appId, hs, rev, hsi, lsd].any((value) => value == null);
  }

  bool get isNotEmpty => !hasNullValues();
}

class Headers {
  Headers({
    required this.xFbLsd,
    required this.origin,
    required this.referer,
    this.custom,
  });
  final String xFbLsd;
  final String origin;
  final String referer;
  final Map<String, String>? custom;
}

class CommentsData {
  CommentsData({
    this.comments = const {},
    this.meta = const CommentsMeta(),
  });

  factory CommentsData.fromJson(Map<String, dynamic> json) {
    final meta = CommentsMeta.fromJson(json['meta'] ?? {});
    final comments = json['comments'] as Map<String, dynamic>? ?? {};

    return CommentsData(
      comments: comments,
      meta: meta,
    );
  }
  final Map<String, dynamic> comments;
  final CommentsMeta meta;
}

class CommentsMeta {
  const CommentsMeta({
    this.userID = '',
    this.actors,
    this.totalCount = 0,
    this.afterCursor,
  });

  factory CommentsMeta.fromJson(Map<String, dynamic> json) {
    final userID = json['userID'] ?? '';

    final actors = (json['actors'] is Map)
        ? (json['actors'] as Map<String, dynamic>)
        : (json['actors'] as List?)?.asMap().map(
                  (index, actor) =>
                      MapEntry(userID, actor as Map<String, dynamic>),
                ) ??
            {};

    return CommentsMeta(
      userID: userID,
      actors: actors.cast<String, dynamic>(),
      totalCount: json['totalCount'] ?? 0,
      afterCursor: json['afterCursor'],
    );
  }
  final String userID;
  final Map<String, dynamic>? actors;
  final int totalCount;
  final String? afterCursor;
}

class FBUser {
  FBUser({
    this.id = '',
    this.name = '',
    this.thumbSrc = '',
  });

  factory FBUser.fromJson(Map<String, dynamic> json) {
    return FBUser(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      thumbSrc: json['thumbSrc'] ?? '',
    );
  }
  final String id;
  final String name;
  final String thumbSrc;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'thumbSrc': thumbSrc,
      };
}

class CommentResponse {
  CommentResponse({
    this.payload = const CommentPayload(),
  });

  factory CommentResponse.fromJson(Map<String, dynamic> json) {
    return CommentResponse(
      payload: CommentPayload.fromJson(json['payload'] ?? {}),
    );
  }
  final CommentPayload payload;
}

class CommentPayload {
  const CommentPayload({
    this.commentID = '',
    this.idMap = const {},
  });

  factory CommentPayload.fromJson(Map<String, dynamic> json) {
    final idMapJson = json['idMap'] as Map<String, dynamic>? ?? {};
    final idMap = idMapJson
        .map((key, value) => MapEntry(key, CommentIdMapEntry.fromJson(value)));

    return CommentPayload(
      commentID: json['commentID'] ?? '',
      idMap: idMap,
    );
  }
  final String commentID;
  final Map<String, CommentIdMapEntry> idMap;
}

class CommentIdMapEntry {
  CommentIdMapEntry({
    required this.type,
    required this.name,
    required this.thumbSrc,
  });

  factory CommentIdMapEntry.fromJson(Map<String, dynamic> json) {
    return CommentIdMapEntry(
      type: json['type'] ?? '',
      name: json['name'] ?? '',
      thumbSrc: json['thumbSrc'] ?? '',
    );
  }
  final String type;
  final String name;
  final String thumbSrc;
}

class PostCommentResponse {
  PostCommentResponse({
    required this.commentID,
    required this.authorName,
    required this.authorThumbSrc,
    required this.userEntry,
  });
  final String commentID;
  final String authorName;
  final String authorThumbSrc;
  final CommentIdMapEntry userEntry;
}

class Actors {
  Actors({
    required this.id,
    required this.name,
    required this.thumbSrc,
  });

  factory Actors.fromJson(Map<String, dynamic> json) {
    return Actors(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      thumbSrc: json['thumbSrc'] ?? '',
    );
  }

  final String id;
  final String name;
  final String thumbSrc;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'thumbSrc': thumbSrc,
      };
}
