import 'package:flutter/material.dart';

import '../../resources/localization.dart';
import '../../shared/dimens/dimens.dart';

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
          title: Text(title ?? S.current.genericErrorTitle),
          content: Text(message ?? S.current.genericErrorMessage),
          contentPadding: EdgeInsets.all(Dimens.d16.responsive()),
          actions: <Widget>[
            if (onClose != null)
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onClose();
                },
                child: Text(S.current.close),
              ),
            if (onRetry != null)
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onRetry();
                },
                child: Text(S.current.retry),
              ),
          ],
        );
      },
    );
  }
}
