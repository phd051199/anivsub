import 'package:anivsub/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.isTransparent = true,
    this.color,
    this.withBox = true,
  });

  final bool isTransparent;
  final Color? color;
  final bool withBox;

  @override
  Widget build(BuildContext context) {
    final loadingWidget = Center(
      child: CircularProgressIndicator(
        color: color ?? context.theme.colorScheme.primary,
      ),
    );

    return withBox
        ? ColoredBox(
            color: isTransparent
                ? Colors.transparent
                : context.theme.colorScheme.surface,
            child: SizedBox.expand(
              child: loadingWidget,
            ),
          )
        : loadingWidget;
  }
}