import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'cubit/base_cubit.dart';

abstract class CubitState<T extends StatefulWidget, C extends BaseCubit>
    extends State<T> {
  final C cubit = GetIt.I.get<C>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => cubit,
      child: buildPage(context),
    );
  }

  Widget buildPage(BuildContext context);
}
