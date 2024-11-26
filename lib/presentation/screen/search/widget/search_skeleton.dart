import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/widget/anime/anime_list.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchSkeleton extends StatelessWidget {
  const SearchSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: Dimens.d12.responsive(),
          childAspectRatio: 0.45,
        ),
        itemCount: 9,
        itemBuilder: (_, __) => AnimeCard(item: AnimeDataEntity.mockup()),
      ),
    );
  }
}
