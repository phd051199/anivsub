import 'package:anivsub/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyPlayer extends StatelessWidget {
  const EmptyPlayer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          child: child ?? _buildErrorText(context),
        ),
        Positioned(
          top: 10,
          left: 6,
          child: IconButton(
            onPressed: context.pop,
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          ),
        ),
      ],
    );
  }

  Center _buildErrorText(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.noChaptersFound,
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}