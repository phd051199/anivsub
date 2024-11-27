import 'package:flutter/material.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';
import '../watch.dart';
import 'chapter_item.dart';

class ChaptersGrid extends StatelessWidget {
  const ChaptersGrid({
    super.key,
    required this.chaps,
    required this.state,
    required this.onChapTap,
  });

  final List<ChapDataEntity> chaps;
  final WatchState state;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.75,
      padding: EdgeInsets.all(Dimens.d16.responsive()),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: chaps.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: Dimens.d4.responsive(),
          crossAxisSpacing: Dimens.d4.responsive(),
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
