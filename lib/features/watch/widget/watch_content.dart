import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widget/comment_section.dart';
import 'package:anivsub/features/watch/widget/detail_section.dart';
import 'package:anivsub/features/watch/widget/episodes_section.dart';
import 'package:anivsub/features/watch/widget/related_section.dart';
import 'package:anivsub/features/watch/widget/video_player_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VideoPlayerSection(state: state, tag: tag),
        const Gap(4),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child:
                    DetailSection(state: state, onTap: showDetailBottomSheet),
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
              SliverToBoxAdapter(
                child: CommentSection(
                  state: state,
                ),
              ),
              SliverToBoxAdapter(
                child: RelatedSection(
                  state: state,
                  onTap: onRelatedItemTap,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
