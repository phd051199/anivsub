import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ErrorDialog {
  static void showErrorDialog({
    required BuildContext context,
    String? title,
    String? message,
    VoidCallback? onClose,
    VoidCallback? onRetry,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title ?? context.l10n.genericErrorTitle),
          content: Text(message ?? context.l10n.genericErrorMessage),
          contentPadding: EdgeInsets.all(Dimens.d16.responsive()),
          actions: <Widget>[
            if (onClose != null)
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onClose();
                },
                child: Text(context.l10n.close),
              ),
            if (onRetry != null)
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onRetry();
                },
                child: Text(context.l10n.retry),
              ),
          ],
        );
      },
    );
  }
}
