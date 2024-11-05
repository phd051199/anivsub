import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/profile/widget/history_item.dart';
import 'package:anivsub/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class HistoryDateGroup extends StatelessWidget {
  const HistoryDateGroup({
    super.key,
    required this.groupedHistory,
    required this.index,
  });
  final Map<DateTime, List<QueryHistoryEntity?>> groupedHistory;
  final int index;

  @override
  Widget build(BuildContext context) {
    final date = groupedHistory.keys.elementAt(index);
    final items = groupedHistory[date]!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            DateTimeUtils.formatTimestamp(date, context, withTime: false),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...items.map(
          (e) => e is QueryHistoryEntity ? HistoryItem(item: e) : Container(),
        ),
      ],
    );
  }
}
