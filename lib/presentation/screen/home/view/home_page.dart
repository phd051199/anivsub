import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../app/base/base.dart';
import '../home.dart';
import '../widget/home_content.dart';

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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => RefreshIndicator(
        onRefresh: () async {
          bloc.add(const LoadHome());
        },
        child: Skeletonizer(
          enabled: state is HomeInitial,
          child: const HomeContent(),
        ),
      ),
    );
  }
}
