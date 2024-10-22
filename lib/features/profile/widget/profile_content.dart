import 'package:anivsub/features/profile/profile.dart';
import 'package:anivsub/features/profile/widget/history_date_group.dart';
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key, required this.state});
  final ProfileLoaded state;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SliverToBoxAdapter(
        //   child: UserInfo(user: state.user),
        // ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => HistoryDateGroup(
              groupedHistory:
                  groupHistoryByDate(state.queryHistory as List<dynamic>),
              index: index,
            ),
            childCount:
                groupHistoryByDate(state.queryHistory as List<dynamic>).length,
          ),
        ),
      ],
    );
  }
}
