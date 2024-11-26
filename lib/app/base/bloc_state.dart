import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/base_bloc.dart';

abstract class BlocState<T extends StatefulWidget, B extends BaseBloc>
    extends State<T> {
  final B bloc = GetIt.I.get<B>();

  @override
  Widget build(BuildContext context) {
    AppDimen.of(context);

    return BlocProvider(
      create: (_) => bloc,
      child: buildPage(context),
    );
  }

  Widget buildPage(BuildContext context);

  void onErrorListener(
    BuildContext context,
    String? message,
  ) {
    if (message != null && message.isNotEmpty) {
      context.showSnackBar(message);
    }
  }
}
