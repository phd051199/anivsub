import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/screen/watch/widget/comment_section.dart';
import 'package:anivsub/presentation/screen/watch/widget/detail_section.dart';
import 'package:anivsub/presentation/screen/watch/widget/episodes_section.dart';
import 'package:anivsub/presentation/screen/watch/widget/related_section.dart';
import 'package:anivsub/presentation/screen/watch/widget/video_player_section.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchContent extends StatelessWidget {
  const WatchContent({
    super.key,
    required this.tabController,
    required this.currentTabIndex,
    required this.onTabChange,
    required this.onEpisodeTap,
    required this.onChapTap,
    required this.onRelatedItemTap,
    required this.showDetailBottomSheet,
    this.tag,
  });

  final TabController? tabController;
  final int currentTabIndex;
  final VoidCallback onTabChange;
  final Function(BuildContext, List<ChapDataEntity>, WatchState) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;
  final Function(AnimeDataEntity) onRelatedItemTap;
  final Function(WatchState) showDetailBottomSheet;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VideoPlayerSection(tag: tag),
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                _buildTabBar(context),
                SizedBox(
                  height: context.screenSize.height * 0.6,
                  child: TabBarView(
                    children: [
                      _buildDetailTab(context),
                      _buildCommentTabContent(context),
                      _buildRelatedTabContent(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      tabs: [
        _buildTab(context, Icons.info_outline, context.l10n.detail),
        _buildCommentTab(context),
        _buildTab(context, Icons.video_library_outlined, context.l10n.related),
      ],
    );
  }

  Widget _buildTab(BuildContext context, IconData icon, String text) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentTab(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.comment_outlined, size: 20),
          const SizedBox(width: 8),
          Text(
            context.l10n.comment,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          _buildCommentCount(context),
        ],
      ),
    );
  }

  Widget _buildCommentCount(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        context.watch<WatchBloc>().state.totalCommentCount?.formatNumber() ??
            '0',
        style: TextStyle(
          color: context.theme.colorScheme.onSecondaryContainer,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDetailTab(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DetailSection(
            onTap: showDetailBottomSheet,
          ),
        ),
        SliverToBoxAdapter(
          child: EpisodesSection(
            tabController: tabController,
            currentTabIndex: currentTabIndex,
            onTabChange: onTabChange,
            onEpisodeTap: onEpisodeTap,
            onChapTap: onChapTap,
          ),
        ),
      ],
    );
  }

  Widget _buildCommentTabContent(BuildContext context) {
    final state = context.watch<WatchBloc>().state;
    final comments = state.comments;

    if (comments == null) {
      return state.isCmtLoading
          ? const LoadingWidget()
          : _buildCommentError(context);
    }

    return const SingleChildScrollView(
      child: CommentSection(),
    );
  }

  Column _buildCommentError(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          color: context.theme.colorScheme.onSurface,
        ),
        const SizedBox(height: 12),
        Text(
          context.l10n.failedToLoadComments,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.theme.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  Widget _buildRelatedTabContent(BuildContext context) {
    return SingleChildScrollView(
      child: RelatedSection(
        onTap: onRelatedItemTap,
      ),
    );
  }
}
