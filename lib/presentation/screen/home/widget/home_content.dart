import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../shared/dimens/dimens.dart';
import '../home.dart';
import 'airing_list.dart';
import 'anime_section.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(Dimens.d12.responsive()),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              if (state is HomeLoaded) ...[
                AiringList(movies: state.homeData.sliderMovies),
                Gap(Dimens.d12.responsive()),
                ...state.homeData.toMap().keys.map((key) {
                  return AnimeSection(
                    title: state.homeData.toMapLocalized()[key]!,
                    movies: state.homeData.toMap()[key],
                  );
                }),
              ] else ...[
                AiringList(
                  movies: List.generate(2, (_) => AnimeDataEntity.mockup()),
                ),
                Gap(Dimens.d12.responsive()),
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
