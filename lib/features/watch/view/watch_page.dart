import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime/anime_thumbnail.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/view/video_player.dart';
import 'package:anivsub/features/watch/watch.dart';
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
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<WatchBloc, WatchState>(
      listener: _watchStateListener,
      builder: (context, state) => Scaffold(
        body: SafeArea(
          child: _buildBody(state),
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

  Widget _buildBody(WatchState state) {
    return switch (state) {
      WatchInitial() || WatchLoading() => const LoadingWidget(),
      WatchLoaded() => _buildContent(state),
      _ => Container(),
    };
  }

  Widget _buildContent(WatchLoaded state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildVideoPlayer(state),
        const Gap(4),
        _buildDetail(state),
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
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                state.detail.name,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '${state.detail.views.formatNumber()} lượt xem',
                style: context.textTheme.titleSmall?.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
              ),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          _buildInfoText(state),
        ],
      ),
    );
  }

  Widget _buildInfoText(WatchLoaded state) {
    final infoTexts = [
      (
        'Sản xuất bởi ${state.detail.studio}',
        TextStyle(
          color: context.theme.colorScheme.secondary,
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
          color: context.theme.colorScheme.tertiary,
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
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                item.$1,
                style: context.textTheme.bodyMedium?.merge(item.$2),
              ),
            ),
          )
          .toList(),
    );
  }

  void _showDetailBottomSheet(WatchLoaded state) {
    showModalBottomSheet(
      isScrollControlled: true,
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
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          AnimeThumbnail(imageUrl: state.detail.image),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Giới thiệu',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              state.detail.description,
              style: context.textTheme.titleSmall?.copyWith(
                color: context.theme.colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer(WatchLoaded state) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: VideoPlayerWidget(
        chaps: state.chaps,
        detail: state.detail,
      ),
    );
  }

  Widget _buildScrollableContent(WatchLoaded state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (state.detail.season.isNotEmpty) ...[
            _buildTabBar(state),
            _buildTabBarView(state),
          ] else
            _buildSingleSeasonView(state),
        ],
      ),
    );
  }

  Widget _buildTabBarView(WatchLoaded state) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      height: 210,
      child: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: state.tabViewItems!.map((chaps) {
          return chaps == null
              ? const Center(child: CircularProgressIndicator())
              : _buildChaptersGrid(chaps, state);
        }).toList(),
      ),
    );
  }

  Widget _buildSingleSeasonView(WatchLoaded state) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      height: 210,
      child: _buildChaptersGrid(state.chaps, state),
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
          id: (bloc.state as WatchLoaded)
              .detail
              .season[_tabController!.index]
              .path,
        ),
      );
    }
  }

  Widget _buildTabBar(WatchLoaded state) {
    if (state.detail.season.isEmpty) {
      return SizedBox.shrink();
    }
    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: _tabController,
      isScrollable: true,
      tabs: state.detail.season.map((item) => Tab(text: item.name)).toList(),
    );
  }

  Widget _buildChaptersGrid(
    List<ChapDataEntity> chaps,
    WatchLoaded state,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: chaps.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 62 / 60,
        ),
        itemBuilder: (context, index) => _buildChapterItem(
          chaps[index],
          index,
          state,
        ),
      ),
    );
  }

  Widget _buildChapterItem(
    ChapDataEntity chap,
    int index,
    WatchLoaded state,
  ) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, videoPlayerState) {
          final isPlaying = _isChapterPlaying(videoPlayerState, chap, index);
          return GestureDetector(
            onTap: () => _onChapTap(isPlaying, chap, state),
            child: _buildChapCard(isPlaying, chap),
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

  void _onChapTap(bool isPlaying, ChapDataEntity chap, WatchLoaded state) {
    if (!isPlaying) {
      if (state.tabViewItems?.isNotEmpty ?? false) {
        final currentChaps = state.tabViewItems![_currentTabIndex];
        videoPlayerCubit.updateChapterList(currentChaps);
      }
      videoPlayerCubit.loadChapter(chap);
    }
  }

  Widget _buildChapCard(bool isPlaying, ChapDataEntity chap) {
    return Card(
      color: isPlaying ? context.theme.colorScheme.primaryContainer : null,
      child: Center(
        child: Text(
          chap.name,
          style: context.textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
