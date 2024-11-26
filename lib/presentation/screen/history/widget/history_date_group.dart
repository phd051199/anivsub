import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/history/widget/history_item.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
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
          padding: EdgeInsets.all(Dimens.d16.responsive()),
          child: Text(
            DateTimeUtils.formatTimestamp(date, context, withTime: false),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return item is QueryHistoryEntity
                ? HistoryItem(item: item)
                : const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
