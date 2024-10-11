import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'video_player.dart';

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
    bloc.add(
      LoadWatch(id: widget.path),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await bloc.close();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<WatchBloc, WatchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(forceMaterialTransparency: true),
          body: SafeArea(
            child: switch (state) {
              WatchInitial() || WatchLoading() => const LoadingWidget(),
              WatchLoaded() => _buildBody(context, state),
              _ => Container(),
            },
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, WatchLoaded state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          state.chapLoading
              ? AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.black,
                    child: const LoadingWidget(),
                  ),
                )
              : VideoPlayer(
                  key: ValueKey(state.link),
                  url: state.link,
                  episodeSkip: state.episodeSkip,
                  skipIntro: state.skipIntro,
                  poster: state.poster,
                ),
          const SizedBox(height: 12),
          if (state.episodeSkip != null)
            SwitchListTile(
              title: Text(
                'Skip intro (${state.episodeSkip!.intro.start} - ${state.episodeSkip!.intro.end}), outro (${state.episodeSkip!.outro.start} - ${state.episodeSkip!.outro.end})',
                style: context.textTheme.bodyMedium,
              ),
              value: state.skipIntro,
              onChanged: (_) {
                bloc.add(const ToggleSkipIntro());
              },
            ),
          const SizedBox(height: 12),
          Wrap(
            children: state.chaps
                .map(
                  (chap) => GestureDetector(
                    onTap: () => bloc.add(ChangeChap(chap: chap)),
                    child: SizedBox(
                      height: 60,
                      width: 62,
                      key: ValueKey(chap.id),
                      child: _buildChapCard(context, state, chap),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildChapCard(
    BuildContext context,
    WatchLoaded state,
    ChapDataEntity chap,
  ) {
    final isPlaying = state.playingId == chap.id;

    final child = Center(
      child: Text(
        chap.name,
        style: context.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return isPlaying ? Card.filled(child: child) : Card(child: child);
  }
}
