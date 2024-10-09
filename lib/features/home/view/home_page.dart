import 'dart:ui';
import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/features/home/home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gap/gap.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:shimmer/shimmer.dart';

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
        child: _buildPageContent(context, state),
      ),
    );
  }

  Widget _buildPageContent(BuildContext context, HomeState state) {
    return switch (state) {
      HomeInitial() ||
      HomeLoading() =>
        const LoadingWidget(isTransparent: true),
      HomeLoaded() => _buildHomeSection(context, state),
      _ => Container(),
    };
  }

  Widget _buildHomeSection(BuildContext context, HomeLoaded state) {
    return RefreshIndicator(
      onRefresh: () {
        bloc.add(const LoadHome());
        return Future.value();
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: _buildSectionHeaders(context, state),
      ),
    );
  }

  Widget _buildSectionHeaders(BuildContext context, HomeLoaded state) {
    return Column(
      children: [
        _buildAiringList(context, state),
        const Divider(height: 32),
        _buildSectionHeader(
          context,
          title: context.l10n.hotUpdates,
          showSeeAllButton: true,
          child: _buildAnimeList(context, state,
              movies: state.homeData.hotUpdates),
        ),
        const Divider(height: 32),
        _buildSectionHeader(
          context,
          title: context.l10n.topMovies,
          showSeeAllButton: true,
          child:
              _buildAnimeList(context, state, movies: state.homeData.topMovies),
        ),
        const Divider(height: 32),
        _buildSectionHeader(
          context,
          title: context.l10n.latestUpdates,
          showSeeAllButton: true,
          child: _buildAnimeList(context, state,
              movies: state.homeData.latestUpdates),
        ),
        const Divider(height: 32),
        _buildSectionHeader(
          context,
          title: context.l10n.preRelease,
          showSeeAllButton: true,
          child: _buildAnimeList(context, state,
              movies: state.homeData.preRelease),
        ),
      ],
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

  Widget _buildAnimeList(
    BuildContext context,
    HomeLoaded state, {
    required List<AnimeDataEntity> movies,
  }) {
    int itemCount = movies.length;
    int missingItems = (3 - (itemCount % 3)) % 3;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: IntrinsicWidth(
        child: Wrap(
          runSpacing: 24,
          alignment: WrapAlignment.spaceBetween,
          children: [
            ...movies.map((item) {
              return GestureDetector(
                onTap: () => context.pushNamed(
                  ScreenNames.watch,
                  pathParameters: {
                    'path': item.path,
                  },
                ),
                child: SizedBox(
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMovieThumbnail(
                        context,
                        item,
                        height: 160,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (item.views != 0) ...[
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            '${context.l10n.views}: ${item.views?.formatNumber()}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.labelSmall!.copyWith(
                              color: context.theme.colorScheme.secondary,
                            ),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              );
            }),
            for (int i = 0; i < missingItems; i++) const SizedBox(width: 120),
          ],
        ),
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
            _buildMovieThumbnail(context, movie),
            _buildMovieDescription(context, movie),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieDescription(BuildContext context, AnimeDataEntity movie) {
    return Expanded(
      child: Container(
        height: 180,
        margin: const EdgeInsets.only(left: 12, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today, 12:00 AM',
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.primary,
              ),
            ),
            const Gap(4),
            Text(
              movie.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(4),
            Text(
              movie.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelMedium!.copyWith(
                color: context.theme.colorScheme.secondary,
              ),
            ),
            const Spacer(),
            Text(
              movie.genre?.map((e) => e['name']).join(', ') ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildMovieThumbnail(BuildContext context, AnimeDataEntity movie,
      {double? height = 180, double? width = 120}) {
    return Stack(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: CachedNetworkImage(
            imageUrl: movie.image,
            httpHeaders: headers,
            fit: BoxFit.cover,
            height: height,
            width: width,
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: context.theme.colorScheme.surface,
              highlightColor: context.theme.colorScheme.onSurface,
              child: Container(
                height: height,
                width: width,
                color: context.theme.colorScheme.onPrimary.withOpacity(0.25),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        if (movie.process != '')
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.theme.colorScheme.onPrimary.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '${context.l10n.ep}${movie.process}',
                    style: context.textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
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
