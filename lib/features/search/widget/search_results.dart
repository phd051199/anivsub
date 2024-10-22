import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/search/bloc/search_bloc.dart';
import 'package:anivsub/features/search/widget/search_skeleton.dart';
import 'package:anivsub/features/shared/anime_list.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
    required this.state,
    required this.pagingController,
  });
  final SearchState state;
  final PagingController<int, AnimeDataEntity> pagingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      buildWhen: (previous, current) =>
          previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        return switch (state) {
          SearchLoading() ||
          SearchInitial() when pagingController.itemList == null =>
            const SearchSkeleton(),
          _ => RefreshIndicator(
              onRefresh: () async => pagingController.refresh(),
              child: PagedGridView<int, AnimeDataEntity>(
                pagingController: pagingController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.45,
                ),
                builderDelegate: PagedChildBuilderDelegate<AnimeDataEntity>(
                  itemBuilder: (_, item, __) => AnimeCard(
                    key: ValueKey(item.path),
                    item: item,
                  ),
                  newPageProgressIndicatorBuilder: (context) => const SizedBox(
                    height: 80,
                    child: LoadingWidget(),
                  ),
                ),
                showNewPageProgressIndicatorAsGridChild: false,
              ),
            ),
        };
      },
    );
  }
}
