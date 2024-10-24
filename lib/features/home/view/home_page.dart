import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/features/home/home.dart';
import 'package:anivsub/features/home/widget/home_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BlocState<HomePage, HomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const LoadHome());
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeError) onErrorListener(context, state);
      },
      builder: (context, state) => RefreshIndicator(
        onRefresh: () async {
          bloc.add(const LoadHome());
        },
        child: switch (state) {
          HomeInitial() ||
          HomeLoading() =>
            const Skeletonizer(child: HomeContent()),
          HomeLoaded() => HomeContent(state: state),
          _ => Container(),
        },
      ),
    );
  }
}
