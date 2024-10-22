import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:anivsub/features/shared/anime/anime_thumbnail.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widgets/empty_player.dart';
import 'package:anivsub/features/watch/widgets/skeleton.dart';
import 'package:anivsub/features/watch/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:uuid/uuid.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({super.key, required this.path, this.tag});
  final String path;
  final String? tag;

  @override
  State<WatchPage> createState() => _WatchPageState();
}

class _WatchPageState extends BlocState<WatchPage, WatchBloc>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;
  bool _needUpdateTabIndex = false;

  @override
  void initState() {
    super.initState();
    bloc.add(InitWatch(id: widget.path));
  }

  @override
  void dispose() {
    _tabController?.dispose();
    videoPlayerCubit.close();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<WatchBloc, WatchState>(
      listener: _watchStateListener,
      builder: (context, state) => Scaffold(
        body: SafeArea(
          bottom: false,
          child: state is WatchLoaded
              ? _buildContent(state)
              : WatchSkeleton(tag: widget.tag),
        ),
      ),
    );
  }

  void _watchStateListener(BuildContext context, WatchState state) {
    if (state is WatchLoaded) {
      _initializeTabController(state);
    }

    if (state is WatchError) {
      onErrorListener(context, state);
    }
  }

  Widget _buildContent(WatchLoaded state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildVideoPlayer(state),
        const Gap(4),
        Expanded(child: _buildScrollableContent(state)),
      ],
    );
  }

  Widget _buildVideoPlayer(WatchLoaded state) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          _buildHeroWidget(),
          _buildVideoPlayerWidget(state),
        ],
      ),
    );
  }

  Widget _buildHeroWidget() {
    return Hero(
      tag: widget.tag ?? const Uuid().v4(),
      child: const SizedBox.expand(),
    );
  }

  Widget _buildVideoPlayerWidget(WatchLoaded state) {
    if (state.chaps == null || state.chaps!.isEmpty) {
      return const EmptyPlayer(child: LoadingWidget(color: Colors.white));
    }

    ListEpisodeResponseEntity? listEpisodeSkip;
    if (state.tabViewItems != null &&
        _currentTabIndex < (state.tabViewItems?.length ?? 0)) {
      listEpisodeSkip = state.tabViewItems?[_currentTabIndex]?.listEpisode;
    }

    return VideoPlayerWidget(
      chaps: state.chaps!,
      detail: state.detail,
      listEpisodeSkip: listEpisodeSkip,
    );
  }

  Widget _buildScrollableContent(WatchLoaded state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildDetail(state),
          const Gap(8),
          _buildEpisodesSection(state),
          _buildCommentSection(state),
          _buildRelatedSection(state),
        ],
      ),
    );
  }

  Widget _buildEpisodesSection(WatchLoaded state) {
    if (state.detail.season.isNotEmpty && state.tabViewItems != null) {
      return Column(
        children: [
          _buildTabBar(state),
          _buildTabBarView(state),
        ],
      );
    } else if (state.chaps != null && state.chaps!.isNotEmpty) {
      return _buildSingleSeasonView(state);
    } else {
      return const SizedBox(height: 100, child: LoadingWidget());
    }
  }

  Widget _buildDetail(WatchLoaded state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => _showDetailBottomSheet(state),
            child: _buildDetailTile(state),
          ),
          _buildInfoText(state),
        ],
      ),
    );
  }

  Widget _buildDetailTile(WatchLoaded state) {
    return ListTile(
      minVerticalPadding: 16,
      contentPadding: EdgeInsets.zero,
      title: Text(
        state.detail.name,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          '${state.detail.views.formatNumber()} ${context.l10n.views.toLowerCase()}',
          style: context.textTheme.titleSmall?.copyWith(
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ),
      trailing: const Icon(Icons.info_outline),
    );
  }

  void _showDetailBottomSheet(WatchLoaded state) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => _buildDetailBottomSheet(state),
    );
  }

  Widget _buildDetailBottomSheet(WatchLoaded state) {
    return Container(
      height: context.screenSize.height * 0.75,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.detail,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(12),
            AnimeThumbnail(imageUrl: state.detail.image),
            const Gap(12),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  context.l10n.introduction,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                state.detail.description,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBarView(WatchLoaded state) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 136,
      child: TabBarView(
        controller: _tabController,
        children: state.tabViewItems!.map((item) {
          return item?.chaps == null
              ? const LoadingWidget(withBox: false)
              : _buildChapterHorizontal(
                  chaps: item!.chaps!,
                  state: state,
                );
        }).toList(),
      ),
    );
  }

  Widget _buildSingleSeasonView(WatchLoaded state) {
    return Container(
      height: 136,
      padding: const EdgeInsets.all(12),
      child: _buildChapterHorizontal(
        chaps: state.chaps!,
        state: state,
      ),
    );
  }

  void _initializeTabController(WatchLoaded state) {
    if (state.detail.season.isEmpty) return;
    final initialTabIndex = _getInitialTabIndex(state);

    if (_tabController == null ||
        _tabController!.length != state.detail.season.length) {
      _tabController?.dispose();
      _tabController = TabController(
        length: state.detail.season.length,
        vsync: this,
        initialIndex: initialTabIndex,
      );
      _tabController!.addListener(_onTabChange);
    }

    _currentTabIndex = _tabController!.index;

    if (_needUpdateTabIndex) {
      _tabController!.animateTo(initialTabIndex);
      _currentTabIndex = initialTabIndex;
      _needUpdateTabIndex = false;
    }
  }

  int _getInitialTabIndex(WatchLoaded state) {
    final index = state.detail.season.indexWhere(
      (item) => item.path == state.detail.pathToView!.cleanPathToView(),
    );
    return index >= 0 ? index : 0;
  }

  void _onTabChange() {
    if (_currentTabIndex != _tabController!.index) {
      _currentTabIndex = _tabController!.index;
      bloc.add(
        ChangeSeasonTab(
          id: (bloc.state as WatchLoaded).detail.season[_currentTabIndex].path,
        ),
      );
    }
  }

  Widget _buildTabBar(WatchLoaded state) {
    if (state.detail.season.isEmpty) return const SizedBox.shrink();
    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: _tabController,
      isScrollable: true,
      tabs: state.detail.season
          .map(
            (item) => Tab(
              child: Text(
                item.name,
                style: context.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildCommentSection(WatchLoaded state) {
    return const SizedBox.shrink();
  }

  Widget _buildRelatedSection(WatchLoaded state) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      initiallyExpanded: true,
      title: Text(
        context.l10n.related,
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AnimeList(
            movies: state.detail.toPut,
            onTap: (chap) {
              videoPlayerCubit.dispose();
              _needUpdateTabIndex = true;
              _tabController?.dispose();
              _tabController = null;

              bloc.add(InitWatch(id: chap.path));
            },
          ),
        ),
      ],
    );
  }

  Widget _buildChapterHorizontal({
    required List<ChapDataEntity> chaps,
    required WatchLoaded state,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => _onEpisodeTap(context, chaps, state),
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 6),
            title: Text(
              context.l10n.episodeList,
              style: context.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.secondary,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.l10n.fullSeason,
                  style: context.textTheme.bodyMedium,
                ),
                const SizedBox(width: 4),
                const Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 56,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (_, __) => const Gap(4),
            itemBuilder: (context, index) =>
                _buildChapterItem(chaps[index], index, state),
          ),
        ),
      ],
    );
  }

  void _onEpisodeTap(
    BuildContext context,
    List<ChapDataEntity> chaps,
    WatchLoaded state,
  ) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => _buildChaptersGrid(context, chaps, state),
    );
  }

  Widget _buildChaptersGrid(
    BuildContext context,
    List<ChapDataEntity> chaps,
    WatchLoaded state,
  ) {
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
        itemBuilder: (context, index) =>
            _buildChapterItem(chaps[index], index, state),
      ),
    );
  }

  Widget _buildChapterItem(ChapDataEntity chap, int index, WatchLoaded state) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, videoPlayerState) {
          final isPlaying = _isChapterPlaying(videoPlayerState, chap, index);
          return GestureDetector(
            onTap: () => _onChapTap(context, isPlaying, chap, state),
            child: _buildChapCard(context, isPlaying, chap),
          );
        },
      ),
    );
  }

  bool _isChapterPlaying(
    VideoPlayerState state,
    ChapDataEntity chap,
    int index,
  ) {
    return (state is VideoPlayerLoaded && state.currentChap.id == chap.id) ||
        (state is VideoPlayerLoading && index == 0);
  }

  void _onChapTap(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
    WatchLoaded state,
  ) {
    if (isPlaying) return;

    final currentChaps = state.tabViewItems?[_currentTabIndex];

    videoPlayerCubit.updateEpisodeList(
      currentChaps?.chaps,
      currentChaps?.listEpisode,
    );

    bloc.add(ChangeEpisode(animeDetail: currentChaps!.animeDetail!));

    videoPlayerCubit.loadEpisode(chap);
  }

  Widget _buildChapCard(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
  ) {
    return Card.filled(
      color: isPlaying
          ? context.theme.colorScheme.primaryContainer
          : context.theme.colorScheme.surfaceContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Center(
          child: Text(
            chap.name,
            style: context.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoText(WatchLoaded state) {
    final infoTexts = [
      InfoText(
        '${context.l10n.producedBy} ${state.detail.studio}',
        TextStyle(
          color: context.theme.colorScheme.tertiary,
          fontWeight: FontWeight.bold,
        ),
        Icons.movie_creation_outlined,
      ),
      InfoText(
        state.detail.schedule != ''
            ? state.detail.schedule ?? ''
            : context.l10n.seasonEnd,
        null,
        Icons.calendar_today_outlined,
      ),
      InfoText(
        '${state.detail.yearOf} • ${context.l10n.episode} ${state.detail.duration} • ${state.detail.countries.map((e) => e.name).join(', ')}',
        null,
        Icons.info_outline,
      ),
      InfoText(
        '${state.detail.rate}/10 • ${state.detail.countRate} ${context.l10n.rating} • ${state.detail.seasonOf?.name}',
        null,
        Icons.star_outline,
      ),
      InfoText(
        state.detail.genre.map((e) => e.name).join(', '),
        TextStyle(
          color: context.theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
        Icons.tag,
      ),
    ];

    return Card.filled(
      color: context.theme.colorScheme.surfaceContainer,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: infoTexts.map((item) => item.build(context)).toList(),
        ),
      ),
    );
  }
}

class InfoText {
  const InfoText(this.text, [this.style, this.icon]);
  final String text;
  final TextStyle? style;
  final IconData? icon;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          if (icon != null)
            Icon(icon, size: 20, color: context.theme.colorScheme.secondary),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodyMedium?.merge(style).copyWith(
                    letterSpacing: 0.5,
                  ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
