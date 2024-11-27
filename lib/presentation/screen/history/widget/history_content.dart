import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain_exports.dart';
import '../history.dart';
import 'history_date_group.dart';
import 'user_info.dart';

class HistoryContent extends StatelessWidget {
  const HistoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HistoryCubit>().state;
    final groupedHistory = _groupHistoryByDate(state.queryHistory);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: UserInfo(user: state.user),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index == groupedHistory.length - 1) {
                context.read<HistoryCubit>().loadMore();
              }
              return HistoryDateGroup(
                groupedHistory: groupedHistory,
                index: index,
              );
            },
            childCount: groupedHistory.length,
          ),
        ),
      ],
    );
  }

  Map<DateTime, List<QueryHistoryEntity?>> _groupHistoryByDate(
    List<QueryHistoryEntity?>? history,
  ) {
    final groupedMap = <DateTime, List<QueryHistoryEntity?>>{};
    if (history == null) return groupedMap;

    for (final item in history) {
      if (item is QueryHistoryEntity) {
        final date = item.createdAt?.toLocal();
        if (date == null) continue;

        final dateWithoutTime = DateTime(date.year, date.month, date.day);
        groupedMap.putIfAbsent(dateWithoutTime, () => []).add(item);
      }
    }
    return Map.fromEntries(
      groupedMap.entries.toList()..sort((a, b) => b.key.compareTo(a.key)),
    );
  }
}
