import 'package:anivsub/core/shared/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

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

  // ignore: avoid_shadowing_type_parameters
  void onErrorListener<T extends Object>(
    BuildContext context,
    T state,
  ) {
    if (state is IBaseBlocStateErrorMessage && state.message != null) {
      context.showSnackBar(state.message!);
      return;
    }
  }
}
