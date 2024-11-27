import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../shared/dimens/dimens.dart';
import '../../shared/extension/extension.dart';
import 'bloc/base_bloc.dart';
import 'common/common_bloc.dart';

abstract class BlocState<T extends StatefulWidget, B extends BaseBloc>
    extends State<T> {
  final B bloc = GetIt.I.get<B>();
  final CommonBloc commonBloc = GetIt.instance.get<CommonBloc>();
  bool get isAppWidget => false;

  @override
  Widget build(BuildContext context) {
    if (!isAppWidget) {
      AppDimen.of(context);
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => bloc),
        BlocProvider(create: (_) => commonBloc),
      ],
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
