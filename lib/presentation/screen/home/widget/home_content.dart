import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/home/home.dart';
import 'package:anivsub/presentation/screen/home/widget/airing_list.dart';
import 'package:anivsub/presentation/screen/home/widget/anime_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  context: context,
                  label: 'All',
                  selected: true,
                ),
                _buildFilterChip(
                  context: context,
                  label: 'Movies',
                  selected: false,
                ),
                _buildFilterChip(
                  context: context,
                  label: 'TV Series',
                  selected: false,
                ),
                _buildFilterChip(
                  context: context,
                  label: 'OVA',
                  selected: false,
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(12),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              if (state is HomeLoaded) ...[
                AiringList(movies: state.homeData.sliderMovies),
                const Gap(12),
                ...state.homeData.toMap().keys.map((key) {
                  return AnimeSection(
                    title: state.homeData.toMapLocalized(context)[key]!,
                    movies: state.homeData.toMap()[key],
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

  ChoiceChip _buildFilterChip({
    required BuildContext context,
    required String label,
    required bool selected,
  }) {
    return ChoiceChip.elevated(
      elevation: 0,
      label: Text(
        label,
        style: context.theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      selected: selected,
      onSelected: (_) {},
    );
  }
}
