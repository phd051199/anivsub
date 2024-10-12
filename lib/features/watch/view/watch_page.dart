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
    bloc.add(LoadWatch(id: widget.path));
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocSelector<WatchBloc, WatchState, WatchLoaded?>(
      selector: (state) => state is WatchLoaded ? state : null,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(forceMaterialTransparency: true),
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
    return ListView(
      children: [
        if (state.chapLoading)
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.black,
              child: const LoadingWidget(),
            ),
          )
        else
          VideoPlayer(
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
            onChanged: (value) {
              bloc.add(const ToggleSkipIntro());
            },
          ),
        const SizedBox(height: 12),
        _buildChaptersGrid(context, state),
      ],
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
        itemBuilder: (context, index) {
          final chap = state.chaps[index];
          return GestureDetector(
            onTap: () => bloc.add(ChangeChap(chap: chap)),
            child: _buildChapCard(context, state, chap),
          );
        },
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
