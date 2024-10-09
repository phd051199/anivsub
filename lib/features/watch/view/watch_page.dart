import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/view/chewie_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/watch_bloc.dart';

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
    return Container(
      margin: const EdgeInsets.all(12),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ChewiePlayer(url: state.link),
    );
  }
}
