import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/features/profile/profile.dart';
import 'package:flutter/material.dart';

import 'history_date_group.dart';
import 'user_info.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watchTypedState<ProfileCubit, ProfileLoaded>();
    final groupedHistory = _groupHistoryByDate(state.queryHistory);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: UserInfo(user: state.user),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => HistoryDateGroup(
              groupedHistory: groupedHistory,
              index: index,
            ),
            childCount: groupedHistory.length,
          ),
        ),
      ],
    );
  }

  Map<DateTime, List<dynamic>> _groupHistoryByDate(List<dynamic>? history) {
    final groupedMap = <DateTime, List<dynamic>>{};
    if (history == null) return groupedMap;

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
}
