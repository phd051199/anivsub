import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';

class FBCommentPluginConfig {
  FBCommentPluginConfig({
    this.appId = '',
    required this.href,
    this.limit = 10,
    required this.locale,
    this.orderBy = 'reverse_time',
    this.pluginUrl = 'https://www.facebook.com/plugins',
    this.dialogUrl = 'https://www.facebook.com/dialog',
    required this.app,
    this.sdk = 'joey',
    this.version = 'v15.0',
    this.headersCustom,
  });
  final String? appId;
  final String href;
  final int limit;
  final String locale;
  final String orderBy;
  final String pluginUrl;
  final String dialogUrl;
  final String app;
  final String sdk;
  final String version;
  final Map<String, String>? headersCustom;
}

class FBCommentPlugin {
  FBCommentPlugin(this.config) : _dio = Dio();
  final FBCommentPluginConfig config;
  final Dio _dio;
  Map<String, dynamic>? _setupData;

  Future<Map<String, dynamic>> _parseRT(String data) async {
    final cleanData = data.replaceAll(RegExp(r'^for \(;;\);'), '');
    return jsonDecode(cleanData);
  }

  Map<String, dynamic> _parseInitialComments(String html) {
    final propsIndex = html.lastIndexOf('"props"');
    final placeholderIndex = html.lastIndexOf('"placeholderElement"');

    if (propsIndex == -1 || placeholderIndex == -1) {
      throw Exception('Unable to find comments data in HTML response');
    }

    final jsonStr = html.substring(
      propsIndex + 8,
      placeholderIndex - 1,
    );

    try {
      final jsonData = jsonDecode(jsonStr);

      return jsonData;
    } catch (e) {
      throw Exception('Failed to parse comments data: $e');
    }
  }

  Future<Map<String, dynamic>> setup() async {
    if (_setupData != null) return _setupData!;

    final url = '${config.pluginUrl}/feedback.php';
    final hostname = Uri.parse(config.app).host;

    final queries = {
      'app_id': config.appId,
      'channel':
          'https://staticxx.facebook.com/x/connect/xd_arbiter/?version=46#cb=fc971c42bd70c0003&domain=$hostname&is_canvas=false&origin=https%3A%2F%2F${config.app}%2Ffbaf0c74572724fba&relation=parent.parent',
      'color_scheme': 'light',
      'container_width': '973',
      'height': '100',
      'href': config.href,
      'lazy': 'false',
      'locale': config.locale,
      'numposts': config.limit.toString(),
      'order_by': config.orderBy,
      'sdk': config.sdk,
      'version': config.version,
      'width': '',
    };

    final mainUrl = '$url?${Uri(queryParameters: queries).query}';
    final response = await _dio.get(mainUrl);
    final html = response.data;

    final initialComments = _parseInitialComments(html);
    final targetID = RegExp(r'"targetID":"(\d+)"').firstMatch(html)?.group(1);
    final appId = RegExp(r'"appID":"(\d+)"').firstMatch(html)?.group(1);
    final hs = RegExp(r'"haste_session"\:"([^"]+)"').firstMatch(html)?.group(1);
    final rev = RegExp(r'"client_revision":(\d+)').firstMatch(html)?.group(1);
    final hsi = RegExp(r'"hsi":"(\d+)"').firstMatch(html)?.group(1);
    final localeMatch =
        RegExp(r'"locale":"(\w+)"').firstMatch(html)?.group(1) ?? config.locale;
    final lsd =
        RegExp(r'"LSD",\[\],{"token":"([^"]+)"').firstMatch(html)?.group(1);
    final fbDtsg = RegExp(r'"DTSGInitData",\[\],{"token":"([^"]+)"')
        .firstMatch(html)
        ?.group(1);

    if (targetID == null ||
        appId == null ||
        hs == null ||
        rev == null ||
        hsi == null ||
        lsd == null) {
      throw Exception('Failed to parse required parameters from response');
    }

    final headers = {
      'content-type': 'application/x-www-form-urlencoded',
      'dpr': '1',
      'pragma': 'no-cache',
      'sec-ch-prefers-color-scheme': 'dark',
      'sec-ch-ua':
          '"Chromium";v="122", "Not(A:Brand";v="24", "Google Chrome";v="122"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"Windows"',
      'sec-gpc': '1',
      'viewport-width': '727',
      'x-asbd-id': '129477',
      'x-fb-lsd': lsd,
      'origin': Uri.parse(config.pluginUrl).origin,
      'Referer': mainUrl,
      'Referrer-Policy': 'origin-when-cross-origin',
      ...?config.headersCustom,
    };

    _setupData = {
      'headers': headers,
      'targetID': targetID,
      'app_id': appId,
      'limit': config.limit.toString(),
      '__a': '1',
      '__req': '1',
      '__hs': hs,
      'dpr': '1',
      '__ccg': 'GOOD',
      '__rev': rev,
      '__s': '',
      '__hsi': hsi,
      '__dyn': '',
      '__csr': '',
      'locale': localeMatch,
      'lsd': lsd,
      'jazoest': '',
      '__sp': '1',
      'fb_dtsg': fbDtsg,
      'comments': initialComments,
    };

    return _setupData!;
  }

  Future<Map<String, dynamic>> getComments([String? afterCursor]) async {
    final setup = await this.setup();

    final comments = setup['comments'] as Map<String, dynamic>;
    final meta = comments['meta'] as Map<String, dynamic>;
    final userID = meta['userID'] as String;
    afterCursor ??= meta['afterCursor'] as String?;

    final body = {
      'app_id': setup['app_id'],
      'limit': setup['limit'],
      '__user': userID,
      '__a': setup['__a'],
      '__req': setup['__req'],
      '__hs': setup['__hs'],
      'dpr': setup['dpr'],
      '__ccg': 'GOOD',
      '__rev': setup['__rev'],
      '__s': setup['__s'],
      '__hsi': setup['__hsi'],
      '__dyn': setup['__dyn'],
      '__csr': setup['__csr'],
      'locale': setup['locale'],
      'lsd': setup['lsd'],
      'jazoest': setup['jazoest'],
      '__sp': setup['__sp'],
      'fb_dtsg': setup['fb_dtsg'],
      if (afterCursor != null) 'after_cursor': afterCursor,
    };

    final response = await _dio.post(
      '${config.pluginUrl}/comments/async/${setup['targetID']}/pager/${config.orderBy}/',
      data: body,
      options: Options(headers: setup['headers']),
    );

    return _parseRT(response.data);
  }

  Future<Map<String, dynamic>> postComment(String text) async {
    final setup = await this.setup();

    if (setup['fb_dtsg'] == null) {
      throw Exception('fb_dtsg not found');
    }

    final body = {
      'app_id': setup['app_id'],
      'text': text,
      'attached_photo_fbid': '0',
      'attached_sticker_fbid': '0',
      'post_to_feed': 'false',
      'privacy_option': 'everyone',
      '__user': '0',
      '__a': setup['__a'],
      '__req': setup['__req'],
      '__hs': setup['__hs'],
      'dpr': setup['dpr'],
      '__ccg': 'EXCELLENT',
      '__rev': setup['__rev'],
      '__s': setup['__s'],
      '__hsi': setup['__hsi'],
      '__dyn': setup['__dyn'],
      '__csr': setup['__csr'],
      'locale': setup['locale'],
      'fb_dtsg': setup['fb_dtsg'],
      'jazoest': setup['jazoest'],
      'lsd': setup['lsd'],
      '__sp': setup['__sp'],
    };

    final response = await _dio.post(
      '${config.pluginUrl}/comments/async/createComment/${setup['targetID']}/?av=0',
      data: body,
      options: Options(headers: setup['headers']),
    );

    return _parseRT(response.data);
  }
}
