import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/view/video_player.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      listener: (context, state) {
        if (state is WatchLoaded) {
          _initializeTabController(state);
        }
        if (state is WatchError) {
          onErrorListener(context, state);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: switch (state) {
              WatchInitial() || WatchLoading() => const LoadingWidget(),
              WatchLoaded() => _buildContent(context, state),
              _ => Container(),
            },
          ),
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, WatchLoaded state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildVideoPlayer(state),
        const SizedBox(height: 4),
        _buildDetail(state, context),
        _buildSkipIntroSwitch(context, state),
        Expanded(child: _buildScrollableContent(context, state)),
      ],
    );
  }

  Padding _buildDetail(WatchLoaded state, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            state.detail.name,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            '${state.detail.views.formatNumber()} views',
            style: context.textTheme.titleSmall?.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer(WatchLoaded state) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 240),
      child: VideoPlayerWidget(
        chaps: state.chaps,
        detail: state.detail,
        skipIntro: state.skipIntro,
      ),
    );
  }

  Widget _buildScrollableContent(BuildContext context, WatchLoaded state) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (state.detail.season.isNotEmpty) ...[
            _buildTabBar(state),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              height: 210,
              child: TabBarView(
                controller: _tabController,
                children: state.tabViewItems!.map((chaps) {
                  return chaps == null
                      ? const Center(child: CircularProgressIndicator())
                      : _buildChaptersGrid(context, chaps, state);
                }).toList(),
              ),
            ),
          ] else
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              height: 210,
              child: _buildChaptersGrid(context, state.chaps, state),
            ),
        ],
      ),
    );
  }

  void _initializeTabController(WatchLoaded state) {
    if (_tabController == null && state.detail.season.isNotEmpty) {
      final initialIndex =
          state.detail.season.indexWhere((item) => item.path == widget.path);
      _currentTabIndex = initialIndex;

      _tabController = TabController(
        length: state.detail.season.length,
        vsync: this,
        initialIndex: initialIndex,
      )..addListener(() {
          if (_currentTabIndex != _tabController!.index) {
            _currentTabIndex = _tabController!.index;
            bloc.add(
              ChangeSeasonTab(
                id: state.detail.season[_tabController!.index].path,
              ),
            );
          }
        });
    }
  }

  Widget _buildSkipIntroSwitch(BuildContext context, WatchLoaded state) {
    return SwitchListTile(
      title: Text('Skip intro / outro', style: context.textTheme.bodyMedium),
      value: state.skipIntro,
      onChanged: (_) => bloc.add(const ToggleSkipIntro()),
    );
  }

  Widget _buildTabBar(WatchLoaded state) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: _tabController,
      isScrollable: true,
      tabs: state.detail.season.map((item) => Tab(text: item.name)).toList(),
    );
  }

  Widget _buildChaptersGrid(
    BuildContext context,
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
          context,
          chaps[index],
          index,
          state,
        ),
      ),
    );
  }

  Widget _buildChapterItem(
    BuildContext context,
    ChapDataEntity chap,
    int index,
    WatchLoaded state,
  ) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, videoPlayerState) {
          final isPlaying = (videoPlayerState is VideoPlayerLoaded &&
                  videoPlayerState.currentChap.id == chap.id) ||
              (videoPlayerState is VideoPlayerLoading && index == 0);

          return GestureDetector(
            onTap: () => _onChapTap(isPlaying, chap, state),
            child: _buildChapCard(context, isPlaying, chap),
          );
        },
      ),
    );
  }

  void _onChapTap(bool isPlaying, ChapDataEntity chap, WatchLoaded state) {
    if (!isPlaying) {
      if (state.tabViewItems?.isNotEmpty ?? false) {
        final currentChaps = state.tabViewItems?[_currentTabIndex];
        videoPlayerCubit.updateChapterList(currentChaps);
      }

      videoPlayerCubit.loadChapter(chap);
    }
  }

  Widget _buildChapCard(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
  ) {
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
