import 'dart:io';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/const/const.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/core/plugin/plugin.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/screen/watch/widget/chapters_grid.dart';
import 'package:anivsub/presentation/screen/watch/widget/detail_bottom_sheet.dart';
import 'package:anivsub/presentation/screen/watch/widget/watch_content.dart';
import 'package:anivsub/presentation/screen/watch/widget/watch_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  late FBCommentPlugin _fbCommentPlugin;

  @override
  void initState() {
    super.initState();

    _fbCommentPlugin = FBCommentPlugin(
      config: FbCommentPluginConfig(
        href: '$ogHostCurl/phim/-${widget.path.extractId()}/',
        app: ogHostCurl,
        locale: Platform.localeName,
      ),
    );

    bloc.add(
      InitWatch(
        id: widget.path,
        fbCommentPlugin: _fbCommentPlugin,
      ),
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();

    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: BlocConsumer<WatchBloc, WatchState>(
        listener: _watchStateListener,
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: state is! WatchInitial
                  ? WatchContent(
                      tabController: _tabController,
                      currentTabIndex: _currentTabIndex,
                      onTabChange: _onTabChange,
                      onEpisodeTap: _onEpisodeTap,
                      onChapTap: _onChapTap,
                      onRelatedItemTap: _onRelatedItemTap,
                      showDetailBottomSheet: _showDetailBottomSheet,
                      tag: widget.tag,
                    )
                  : WatchSkeleton(
                      tag: widget.tag,
                    ),
            ),
          );
        },
      ),
    );
  }

  void _watchStateListener(BuildContext context, WatchState state) {
    if (state is WatchLoaded) {
      _initializeTabController(state);
    } else if (state is WatchError) {
      onErrorListener(context, state.message);
    }
  }

  void _onRelatedItemTap(AnimeDataEntity anime) {
    _needUpdateTabIndex = true;
    _tabController = null;
    _tabController?.dispose();
    videoPlayerCubit.close();

    bloc.add(InitWatch(id: anime.path));
  }

  void _showDetailBottomSheet(WatchState state) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => DetailBottomSheet(state: state),
    );
  }

  void _initializeTabController(WatchState state) {
    if (state.detail!.season.isEmpty) return;
    final initialTabIndex = _getInitialTabIndex(state);

    if (_tabController == null ||
        _tabController!.length != state.detail!.season.length) {
      _tabController?.dispose();
      _tabController = TabController(
        length: state.detail!.season.length,
        vsync: this,
        initialIndex: initialTabIndex,
      );
      _tabController?.addListener(_onTabChange);
    }

    _currentTabIndex = _tabController!.index;

    if (_needUpdateTabIndex) {
      _tabController?.animateTo(initialTabIndex);
      _currentTabIndex = initialTabIndex;
      _needUpdateTabIndex = false;
    }
  }

  int _getInitialTabIndex(WatchState state) {
    final pathToView = state.detail?.pathToView?.cleanPathToView();
    if (pathToView == null) {
      return state.detail!.season.length - 1;
    }

    final index = state.detail!.season.indexWhere(
      (item) => item.path == pathToView,
    );
    return index >= 0 ? index : 0;
  }

  void _onTabChange() {
    if (_currentTabIndex != _tabController!.index) {
      _currentTabIndex = _tabController!.index;

      final state = bloc.state;
      if (state is! WatchLoaded) return;

      bloc.add(
        ChangeSeasonTab(
          id: state.detail.season[_currentTabIndex].path,
        ),
      );
    }
  }

  void _onEpisodeTap(
    BuildContext context,
    List<ChapDataEntity> chaps,
    WatchState state,
  ) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => ChaptersGrid(
        chaps: chaps,
        state: state,
        onChapTap: _onChapTap,
      ),
    );
  }

  void _onChapTap(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
    WatchState state,
  ) {
    if (isPlaying) return;

    final currentTab = state.tabViewItems?[_currentTabIndex];
    if (currentTab == null) {
      return;
    }

    bloc.add(
      ChangeEpisode(
        animeDetail: currentTab.animeDetail,
        chaps: currentTab.chaps,
      ),
    );

    context.read<VideoPlayerCubit>()
      ..updateEpisodeList(
        currentTab.chaps,
        currentTab.listEpisode,
      )
      ..loadEpisode(chap);
  }
}
