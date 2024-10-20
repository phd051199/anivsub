import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:anivsub/features/shared/anime/anime_thumbnail.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widgets/chapter_horizonal.dart';
import 'package:anivsub/features/watch/widgets/skeleton.dart';
import 'package:anivsub/features/watch/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({super.key, required this.path});
  final String path;

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
          child: state is WatchLoaded
              ? _buildContent(state)
              : const WatchSkeleton(),
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
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        state.detail.name,
        style: context.textTheme.titleLarge
            ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${state.detail.views.formatNumber()} ${context.l10n.views.toLowerCase()}',
        style: context.textTheme.titleSmall
            ?.copyWith(color: context.theme.colorScheme.secondary),
      ),
      trailing: const Icon(Icons.chevron_right),
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
        '${state.detail.rate}☆ | ${state.detail.countRate} đánh giá | ${state.detail.seasonOf?.name}',
        TextStyle(
          fontWeight: FontWeight.bold,
          color: context.theme.colorScheme.secondary,
        )
      ),
      (
        state.detail.genre.map((e) => '#${e.name}').join(' '),
        TextStyle(
          color: context.theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
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
      height: 110,
      child: TabBarView(
        controller: _tabController,
        children: state.tabViewItems!.map((item) {
          return item?.chaps == null
              ? const LoadingWidget(withBox: false)
              : ChapterHorizontal(
                  chaps: item!.chaps!,
                  state: state,
                  currentTabIndex: _currentTabIndex,
                );
        }).toList(),
      ),
    );
  }

  Widget _buildSingleSeasonView(WatchLoaded state) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(12),
      child: ChapterHorizontal(chaps: state.chaps, state: state),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          minTileHeight: 32,
          title: Text(
            context.l10n.related,
            style: context.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
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
}
