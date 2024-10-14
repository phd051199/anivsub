import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
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

class _WatchPageState extends BlocState<WatchPage, WatchBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(LoadWatch(id: widget.path));
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    return BlocSelector<WatchBloc, WatchState, WatchLoaded?>(
      selector: (state) => state is WatchLoaded ? state : null,
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: state == null
                ? const LoadingWidget()
                : _buildBody(context, state),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, WatchLoaded state) {
    return Column(
      children: [
        _buildPinnedVideoPlayer(state),
        const SizedBox(height: 12),
        _buildScrollableContent(context, state),
      ],
    );
  }

  Widget _buildPinnedVideoPlayer(WatchLoaded state) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 240,
      ),
      child: EnhancedVideoPlayer(
        path: widget.path,
        chaps: state.chaps,
        skipIntro: state.skipIntro,
      ),
    );
  }

  Widget _buildScrollableContent(BuildContext context, WatchLoaded state) {
    return Expanded(
      child: ListView(
        children: [
          _buildSkipIntroSwitch(context, state),
          const SizedBox(height: 12),
          _buildChaptersGrid(context, state),
        ],
      ),
    );
  }

  Widget _buildSkipIntroSwitch(BuildContext context, WatchLoaded state) {
    return SwitchListTile(
      title: Text('Skip intro / outro', style: context.textTheme.bodyMedium),
      value: state.skipIntro,
      onChanged: (_) => bloc.add(const ToggleSkipIntro()),
    );
  }

  Widget _buildChaptersGrid(BuildContext context, WatchLoaded state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: state.chaps.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 62 / 60,
        ),
        itemBuilder: (context, index) =>
            _buildChapItem(context, state.chaps[index]),
      ),
    );
  }

  Widget _buildChapItem(BuildContext context, ChapDataEntity chap) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, videoPlayerState) {
        final isPlaying = videoPlayerState is VideoPlayerLoaded &&
            videoPlayerState.currentChap.id == chap.id;
        return GestureDetector(
          onTap: () {
            if (isPlaying) return;
            videoPlayerCubit.loadChapter(chap);
          },
          child: Card(
            color: isPlaying
                ? Theme.of(context).colorScheme.primaryContainer
                : null,
            child: Center(
              child: Text(
                chap.name,
                style: context.textTheme.bodySmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );
  }
}
