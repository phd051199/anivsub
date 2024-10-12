import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/home/home.dart';
import 'package:anivsub/features/shared/anime/anime_description.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:anivsub/features/shared/anime/anime_thumbnail.dart';
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
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeError) onErrorListener(context, state);
      },
      builder: (context, state) => SafeArea(
        child: switch (state) {
          HomeInitial() || HomeLoading() => const LoadingWidget(),
          HomeLoaded() => _buildHomeContent(context, state),
          _ => Container(),
        },
      ),
    );
  }

  Widget _buildHomeContent(BuildContext context, HomeLoaded state) {
    return RefreshIndicator(
      onRefresh: () {
        bloc.add(const LoadHome());
        return Future.value();
      },
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildAiringList(context, state.homeData.sliderMovies),
                const Divider(height: 32),
                _buildAnimeSection(
                  context,
                  context.l10n.hotUpdates,
                  state.homeData.hotUpdates,
                ),
                const Divider(height: 32),
                _buildAnimeSection(
                  context,
                  context.l10n.topMovies,
                  state.homeData.topMovies,
                ),
                const Divider(height: 32),
                _buildAnimeSection(
                  context,
                  context.l10n.latestUpdates,
                  state.homeData.latestUpdates,
                ),
                const Divider(height: 32),
                _buildAnimeSection(
                  context,
                  context.l10n.preRelease,
                  state.homeData.preRelease,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAiringList(BuildContext context, List<AnimeDataEntity> movies) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) =>
            _buildMovieCard(context, movies[index]),
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, AnimeDataEntity movie) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        ScreenNames.watch,
        pathParameters: {'path': movie.path},
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

  Widget _buildAnimeSection(
    BuildContext context,
    String title,
    List<AnimeDataEntity> movies,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, title),
        AnimeList(movies: movies),
      ],
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'See all',
          style: context.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
