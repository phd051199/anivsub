import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:anivsub/features/shared/anime/anime_thumbnail.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/watch.dart';
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
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    bloc.add(LoadWatch(id: widget.path));
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
    } else if (state is WatchError) {
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

  Widget _buildDetail(WatchLoaded state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
    return Hero(
      tag: widget.tag ?? const Uuid().v4(),
      child: ListTile(
        minVerticalPadding: 16,
        contentPadding: EdgeInsets.zero,
        title: Text(
          state.detail.name,
          style: context.textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            '${state.detail.views.formatNumber()} ${context.l10n.views.toLowerCase()}',
            style: context.textTheme.titleSmall
                ?.copyWith(color: context.theme.colorScheme.secondary),
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }

  Widget _buildInfoText(WatchLoaded state) {
    final infoTexts = [
      (
        'Sản xuất bởi ${state.detail.studio}',
        TextStyle(
          color: context.theme.colorScheme.tertiary,
          fontWeight: FontWeight.bold,
        )
      ),
      (
        'Lịch chiếu: ${state.detail.schedule?.toLowerCase()}',
        const TextStyle()
      ),
      (
        '${state.detail.yearOf} | Tập ${state.detail.duration} | ${state.detail.countries.map((e) => e.name).join(', ')}',
        const TextStyle()
      ),
      (
        '${state.detail.rate} ★ | ${state.detail.countRate} đánh giá | ${state.detail.seasonOf?.name}',
        TextStyle(
          fontWeight: FontWeight.bold,
          color: context.theme.colorScheme.secondary,
        )
      ),
      (
        state.detail.genre.map((e) => '#${e.name}').join(' '),
        TextStyle(
          color: context.theme.colorScheme.primary,
        )
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: infoTexts
          .map((item) => _buildInfoTextItem(item.$1, item.$2))
          .toList(),
    );
  }

  Widget _buildInfoTextItem(String text, TextStyle style) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text, style: context.textTheme.bodyMedium?.merge(style)),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chi tiết',
            style: context.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          AnimeThumbnail(imageUrl: state.detail.image),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Giới thiệu',
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              state.detail.description,
              style: context.textTheme.titleSmall
                  ?.copyWith(color: context.theme.colorScheme.secondary),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer(WatchLoaded state) {
    final listEpisodeSkip = state.tabViewItems?[_currentTabIndex]?.listEpisode;
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: VideoPlayerWidget(
        chaps: state.chaps,
        detail: state.detail,
        listEpisodeSkip: listEpisodeSkip,
      ),
    );
  }

  Widget _buildScrollableContent(WatchLoaded state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildDetail(state),
          const Gap(4),
          if (state.detail.season.isNotEmpty) ...[
            _buildTabBar(state),
            _buildTabBarView(state),
          ] else
            _buildSingleSeasonView(state),
          _buildRelatedSection(state),
        ],
      ),
    );
  }

  Widget _buildTabBarView(WatchLoaded state) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 112,
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
      height: 110,
      padding: const EdgeInsets.all(12),
      child: _buildChapterHorizontal(chaps: state.chaps, state: state),
    );
  }

  void _initializeTabController(WatchLoaded state) {
    if (_tabController == null && state.detail.season.isNotEmpty) {
      final initialIndex =
          state.detail.season.indexWhere((item) => item.path == widget.path);
      _currentTabIndex = initialIndex >= 0 ? initialIndex : 0;

      _tabController = TabController(
        length: state.detail.season.length,
        vsync: this,
        initialIndex: _currentTabIndex,
      )..addListener(_onTabChange);
    }
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
                style: context.textTheme.titleSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildRelatedSection(WatchLoaded state) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 14),
      initiallyExpanded: true,
      title: Text(
        context.l10n.related,
        style: context.textTheme.titleMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AnimeList(
            movies: state.detail.toPut,
            onTap: (chap) => bloc.add(LoadWatch(id: chap.path)),
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
            minTileHeight: 32,
            contentPadding: const EdgeInsets.only(left: 4),
            title:
                Text(context.l10n.episode, style: context.textTheme.titleSmall),
            trailing: const Icon(Icons.chevron_right),
          ),
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (context, index) => const Gap(4),
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

    final currentChaps = state.tabViewItems![_currentTabIndex];
    videoPlayerCubit.updateEpisodeList(
      currentChaps?.chaps,
      currentChaps?.listEpisode,
    );
    bloc.add(
      ChangeEpisode(animeDetail: currentChaps!.animeDetail!),
    );
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
}
