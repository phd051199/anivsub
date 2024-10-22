import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/home/home.dart';
import 'package:anivsub/features/home/widget/airing_list.dart';
import 'package:anivsub/features/home/widget/anime_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key, this.state});
  final HomeLoaded? state;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(12),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              if (state != null) ...[
                AiringList(movies: state!.homeData.sliderMovies),
                const Gap(12),
                ...state!.homeData.toMap().keys.map((key) {
                  return AnimeSection(
                    title: state!.homeData.toMapLocalized(context)[key]!,
                    movies: state!.homeData.toMap()[key],
                  );
                }),
              ] else ...[
                AiringList(
                  movies: List.generate(2, (_) => AnimeDataEntity.mockup()),
                ),
                const Gap(12),
                AnimeSection(
                  title: 'Loading...',
                  movies: List.generate(6, (_) => AnimeDataEntity.mockup()),
                ),
              ],
            ]),
          ),
        ),
      ],
    );
  }
}
