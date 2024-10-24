import 'package:anivsub/core/shared/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'bloc/base_bloc.dart';

abstract class BlocState<T extends StatefulWidget, B extends BaseBloc>
    extends State<T> {
  final B bloc = GetIt.I.get<B>();

  @override
  Widget build(BuildContext context) {
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

    context.pop();
  }
}
