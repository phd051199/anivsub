import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future<String> getBaseUrl() async {
  final completer = Completer<String>();

  final headlessWebView = HeadlessInAppWebView(
    initialUrlRequest: URLRequest(
      url: WebUri(
        '${dotenv.get('HOST_CURL')}?_=${DateTime.now().millisecondsSinceEpoch}',
      ),
    ),
    onLoadStop: (controller, url) async {
      final currentUrl = await controller.getUrl();
      completer.complete(currentUrl?.baseUrl);
    },
  );

  await headlessWebView.run();
  final result = await completer.future;

  await headlessWebView.dispose();
  return result;
}

extension UriExtension on WebUri {
  String get baseUrl => toString().replaceAll(RegExp(r'/$'), '');
}
