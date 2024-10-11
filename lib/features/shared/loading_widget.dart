import 'package:anivsub/core/shared/context_extension.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        // child: Lottie.asset(
        //   'assets/json/loading.json',
        //   width: 240,
        //   height: 240,
        // ),
        child: CircularProgressIndicator(
          color: context.theme.colorScheme.primary,
        ),
      ),
    );
  }
}
