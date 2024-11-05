import 'dart:io';

import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/screen/watch/widget/chapters_grid.dart';
import 'package:anivsub/presentation/screen/watch/widget/cubit/video_player_cubit.dart';
import 'package:anivsub/presentation/screen/watch/widget/detail_bottom_sheet.dart';
import 'package:anivsub/presentation/screen/watch/widget/watch_content.dart';
import 'package:anivsub/presentation/screen/watch/widget/watch_skeleton.dart';
import 'package:anivsub/shared/base/base.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/di/shared_export.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:anivsub/shared/plugin/plugin.dart';
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
  late final FBCommentPlugin _fbCommentPlugin;

  @override
  void initState() {
    super.initState();
    _initializeFbComment();
    _initializeWatch();
  }

  void _initializeFbComment() {
    _fbCommentPlugin = FBCommentPlugin(
      config: FbCommentPluginConfig(
        href: '$ogHostCurl/phim/-${widget.path.extractId()}/',
        app: ogHostCurl,
        locale: Platform.localeName,
      ),
    );
  }

  void _initializeWatch() {
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
    videoPlayerCubit.close();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: BlocConsumer<WatchBloc, WatchState>(
        listener: _watchStateListener,
        builder: _buildWatchContent,
      ),
    );
  }

  Widget _buildWatchContent(BuildContext context, WatchState state) {
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
            : WatchSkeleton(tag: widget.tag),
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
    _resetControllers();
    bloc.add(InitWatch(id: anime.path));
  }

  void _resetControllers() {
    _needUpdateTabIndex = true;
    _tabController?.dispose();
    _tabController = null;
    videoPlayerCubit.close();
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
    _updateTabController(state, initialTabIndex);
    _handleTabIndexUpdate(initialTabIndex);
  }

  void _updateTabController(WatchState state, int initialTabIndex) {
    if (_shouldRecreateTabController(state)) {
      _tabController?.dispose();
      _tabController = TabController(
        length: state.detail!.season.length,
        vsync: this,
        initialIndex: initialTabIndex,
      );
      _tabController?.addListener(_onTabChange);
    }
  }

  bool _shouldRecreateTabController(WatchState state) {
    return _tabController == null ||
        _tabController!.length != state.detail!.season.length;
  }

  void _handleTabIndexUpdate(int initialTabIndex) {
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
    if (_currentTabIndex == _tabController!.index) return;

    _currentTabIndex = _tabController!.index;
    final state = bloc.state;
    if (state is! WatchLoaded) return;

    bloc.add(
      ChangeSeasonTab(
        id: state.detail.season[_currentTabIndex].path,
      ),
    );
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
    if (currentTab == null) return;

    _updateEpisodeState(currentTab, chap);
  }

  void _updateEpisodeState(TabViewItem currentTab, ChapDataEntity chap) {
    bloc.add(
      ChangeEpisode(
        animeDetail: currentTab.animeDetail,
        chaps: currentTab.chaps,
      ),
    );

    videoPlayerCubit
      ..updateCurrentChap(chap)
      ..updateEpisodeList(
        currentTab.chaps,
        currentTab.listEpisode,
      );

    if (videoPlayerCubit.playerController != null) {
      videoPlayerCubit.loadEpisode(chap);
    }
  }
}
