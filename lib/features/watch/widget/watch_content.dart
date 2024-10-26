import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/core/plugin/fb_comment.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widget/comment_section.dart';
import 'package:anivsub/features/watch/widget/detail_section.dart';
import 'package:anivsub/features/watch/widget/episodes_section.dart';
import 'package:anivsub/features/watch/widget/related_section.dart';
import 'package:anivsub/features/watch/widget/video_player_section.dart';
import 'package:flutter/material.dart';

class WatchContent extends StatelessWidget {
  const WatchContent({
    super.key,
    required this.state,
    required this.tabController,
    required this.currentTabIndex,
    required this.onTabChange,
    required this.onEpisodeTap,
    required this.onChapTap,
    required this.onRelatedItemTap,
    required this.showDetailBottomSheet,
    required this.fbCommentPlugin,
    this.tag,
  });

  final WatchLoaded state;
  final TabController? tabController;
  final int currentTabIndex;
  final VoidCallback onTabChange;
  final Function(BuildContext, List<ChapDataEntity>, WatchLoaded) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchLoaded) onChapTap;
  final Function(AnimeDataEntity) onRelatedItemTap;
  final Function(WatchLoaded) showDetailBottomSheet;
  final FBCommentPlugin fbCommentPlugin;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VideoPlayerSection(state: state, tag: tag),
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                _buildTabBar(context),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buildDetailTab(),
                      _buildCommentTabContent(),
                      _buildRelatedTabContent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
        state.totalCommentCount?.formatNumber() ?? '0',
        style: TextStyle(
          color: context.theme.colorScheme.onSecondaryContainer,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDetailTab() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DetailSection(
            state: state,
            onTap: showDetailBottomSheet,
          ),
        ),
        SliverToBoxAdapter(
          child: EpisodesSection(
            state: state,
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

  Widget _buildCommentTabContent() {
    return SingleChildScrollView(
      child: CommentSection(
        state: state,
      ),
    );
  }

  Widget _buildRelatedTabContent() {
    return SingleChildScrollView(
      child: RelatedSection(
        state: state,
        onTap: onRelatedItemTap,
      ),
    );
  }
}
