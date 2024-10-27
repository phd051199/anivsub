import 'package:anivsub/core/utils/utils.dart';
import 'package:anivsub/features/profile/widget/history_item.dart';
import 'package:flutter/material.dart';

class HistoryDateGroup extends StatelessWidget {
  const HistoryDateGroup({
    super.key,
    required this.groupedHistory,
    required this.index,
  });
  final Map<DateTime, List<dynamic>> groupedHistory;
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
            StringUtils.formatTimestamp(date, withTime: false),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...items.map(
          (e) => e is Map<String, dynamic> ? HistoryItem(item: e) : Container(),
        ),
      ],
    );
  }
}
