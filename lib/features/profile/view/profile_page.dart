import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/features/profile/profile.dart';
import 'package:anivsub/features/profile/widget/profile_content.dart';
import 'package:anivsub/features/shared/error_dialog.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends CubitState<ProfilePage, ProfileCubit> {
  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileError) {
          ErrorDialog.showErrorDialog(
            context: context,
            title: 'Error',
            message: state.message,
          );
        }
      },
      builder: (context, state) => RefreshIndicator(
        onRefresh: cubit.getUser,
        child: switch (state) {
          ProfileInitial() || ProfileLoading() => const LoadingWidget(),
          ProfileLoaded() => ProfileContent(state: state),
          _ => Container(),
        },
      ),
    );
  }
}

Map<DateTime, List<dynamic>> groupHistoryByDate(List<dynamic> history) {
  final groupedMap = <DateTime, List<dynamic>>{};
  for (var item in history) {
    if (item is Map<String, dynamic>) {
      final date = DateTime.parse(item['created_at']).toLocal();
      final dateWithoutTime = DateTime(date.year, date.month, date.day);
      groupedMap.putIfAbsent(dateWithoutTime, () => []).add(item);
    }
  }
  return Map.fromEntries(
    groupedMap.entries.toList()..sort((a, b) => b.key.compareTo(a.key)),
  );
}
