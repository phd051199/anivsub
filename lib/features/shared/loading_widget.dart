import 'package:anivsub/core/shared/context_extension.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.isTransparent = true,
    this.color,
  });

  final bool isTransparent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isTransparent
          ? Colors.transparent
          : context.theme.colorScheme.surface,
      child: SizedBox.expand(
        child: Center(
          // child: Lottie.asset(
          //   'assets/json/loading.json',
          //   width: 200,
          //   height: 200,
          // ),
          child: CircularProgressIndicator(
            color: color ?? context.theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
