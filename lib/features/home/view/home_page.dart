import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/home/home.dart';
import 'package:anivsub/features/shared/anime_description.dart';
import 'package:anivsub/features/shared/anime_list.dart';
import 'package:anivsub/features/shared/anime_thumbnail.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BlocState<HomePage, HomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const LoadHome());
  }

  @override
  void dispose() async {
    super.dispose();
    await bloc.close();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeError) {
          onErrorListener(context, state);
        }
      },
      builder: (context, state) => SafeArea(
        child: switch (state) {
          HomeInitial() || HomeLoading() => const LoadingWidget(),
          HomeLoaded() => _buildHomeSection(context, state),
          _ => Container(),
        },
      ),
    );
  }

  Widget _buildHomeSection(BuildContext context, HomeLoaded state) {
    return RefreshIndicator(
      onRefresh: () {
        bloc.add(const LoadHome());
        return Future.value();
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _buildAiringList(context, state),
            const Divider(height: 32),
            _buildSectionHeader(
              context,
              title: context.l10n.hotUpdates,
              showSeeAllButton: true,
              child: AnimeList(movies: state.homeData.hotUpdates),
            ),
            const Divider(height: 32),
            _buildSectionHeader(
              context,
              title: context.l10n.topMovies,
              showSeeAllButton: true,
              child: AnimeList(movies: state.homeData.topMovies),
            ),
            const Divider(height: 32),
            _buildSectionHeader(
              context,
              title: context.l10n.latestUpdates,
              showSeeAllButton: true,
              child: AnimeList(movies: state.homeData.latestUpdates),
            ),
            const Divider(height: 32),
            _buildSectionHeader(
              context,
              title: context.l10n.preRelease,
              showSeeAllButton: true,
              child: AnimeList(movies: state.homeData.preRelease),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAiringList(BuildContext context, HomeLoaded state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: state.homeData.sliderMovies
            .map((movie) => _buildMovieCard(context, movie))
            .toList(),
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, AnimeDataEntity movie) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        ScreenNames.watch,
        pathParameters: {
          'path': movie.path,
        },
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Row(
          children: [
            AnimeThumbnail(movie: movie),
            AnimeDescription(movie: movie),
          ],
        ),
      ),
    );
  }

  Column _buildSectionHeader(
    BuildContext context, {
    bool showSeeAllButton = false,
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            if (showSeeAllButton)
              Text(
                'See all',
                style: context.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.theme.colorScheme.secondary,
                ),
              ),
          ],
        ),
        child,
      ],
    );
  }
}
