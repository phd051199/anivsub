import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/base/base.dart';
import '../../../../app/notifier/auth_notifier.dart';
import '../../../../shared/shared_exports.dart';
import '../../../widget/error_dialog.dart';
import '../../../widget/loading_widget.dart';
import '../history.dart';
import '../widget/history_content.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends CubitState<HistoryPage, HistoryCubit> {
  @override
  void initState() {
    super.initState();

    authNotifier.addListener(() {
      switch (authNotifier.status) {
        case AuthStatus.authenticated:
          cubit.getHistory();
          break;
        case AuthStatus.notAuthenticated:
          cubit.logout();
          break;
      }
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<HistoryCubit, HistoryState>(
      listener: (context, state) {
        if (state is HistoryError) {
          ErrorDialog.showErrorDialog(
            context: context,
            title: 'Error',
            message: state.message,
          );
        }
      },
      builder: (context, state) => RefreshIndicator(
        onRefresh: cubit.getHistory,
        child: switch (state) {
          HistoryInitial() => const LoadingWidget(),
          HistoryLoaded() => const HistoryContent(),
          _ => Container(),
        },
      ),
    );
  }
}
