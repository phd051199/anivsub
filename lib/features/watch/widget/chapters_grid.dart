import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widget/chapter_item.dart';
import 'package:flutter/material.dart';

class ChaptersGrid extends StatelessWidget {
  const ChaptersGrid({
    super.key,
    required this.chaps,
    required this.state,
    required this.onChapTap,
  });

  final List<ChapDataEntity> chaps;
  final WatchLoaded state;
  final Function(BuildContext, bool, ChapDataEntity, WatchLoaded) onChapTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.75,
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: chaps.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 62 / 60,
        ),
        itemBuilder: (context, index) => ChapterItem(
          chap: chaps[index],
          index: index,
          state: state,
          onChapTap: onChapTap,
        ),
      ),
    );
  }
}
