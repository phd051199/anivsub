import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/search_cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends CubitState<SearchPage, SearchCubit> {
  @override
  void initState() {
    super.initState();
    cubit.load();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SafeArea(
          child: switch (state) {
            SearchInitial() || SearchLoading() => const LoadingWidget(),
            SearchLoaded() => _buildBody(context, state),
            _ => Container(),
          },
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, SearchLoaded state) {
    return const Scaffold(
      body: Center(
        child: Text('Search loaded'),
      ),
    );
  }
}
