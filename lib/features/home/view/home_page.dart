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
                ...state.homeData.toMap().keys.map((key) {
                  return Column(
                    children: [
                      const SizedBox(height: 16),
                      _buildAnimeSection(
                        context,
                        state.homeData.toMapLocalized(context)[key]!,
                        state.homeData.toMap()[key],
                      ),
                    ],
                  );
                }),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAiringList(BuildContext context, List<AnimeDataEntity> movies) {
    return SizedBox(
      height: context.screenSize.height * 0.2,
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
        width: context.screenSize.width * 0.85,
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
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      leading: Text(
        title,
        style: context.textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
