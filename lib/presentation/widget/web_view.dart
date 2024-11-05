import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebView extends StatelessWidget {
  const WebView({super.key, required this.onLoadStop, required this.url});
  final Function(InAppWebViewController, BuildContext) onLoadStop;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(url)),
      onLoadStop: (controller, url) => onLoadStop(controller, context),
    );
  }
}
