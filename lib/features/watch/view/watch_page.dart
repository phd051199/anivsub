import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/view/chewie_player.dart';
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
          appBar: AppBar(
            title: const Text('Watch'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: switch (state) {
              WatchInitial() || WatchLoading() => const LoadingWidget(
                  isTransparent: true,
                ),
              WatchLoaded() => _buildBody(context, state),
              _ => Container(),
            },
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, WatchLoaded state) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ChewiePlayer(
                key: ValueKey(state.link),
                url: state.link,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              children: state.chaps
                  .map(
                    (chap) => GestureDetector(
                      onTap: () {
                        bloc.add(ChangeChap(chap: chap));
                      },
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Card(
                          color: state.playingId == chap.id
                              ? context.theme.colorScheme.primary
                                  .withOpacity(0.1)
                              : null,
                          child: Center(
                            child: Text(
                              chap.name,
                              style: context.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
