import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/search/bloc/search_bloc.dart';
import 'package:anivsub/presentation/screen/search/widget/search_skeleton.dart';
import 'package:anivsub/presentation/widget/anime/anime_list.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
    required this.pagingController,
  });
  final PagingController<int, AnimeDataEntity> pagingController;

  @override
  Widget build(BuildContext context) {
    return switch (context.read<SearchBloc>().state) {
      SearchInitial() when pagingController.itemList == null =>
        const SearchSkeleton(),
      _ => RefreshIndicator(
          onRefresh: () async => pagingController.refresh(),
          child: PagedGridView<int, AnimeDataEntity>(
            pagingController: pagingController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: Dimens.d12.responsive(),
              childAspectRatio: 0.45,
            ),
            builderDelegate: PagedChildBuilderDelegate<AnimeDataEntity>(
              itemBuilder: (_, item, __) => AnimeCard(
                item: item,
              ),
              newPageProgressIndicatorBuilder: (context) => SizedBox(
                height: Dimens.d80.responsive(),
                child: const LoadingWidget(),
              ),
            ),
            showNewPageProgressIndicatorAsGridChild: false,
          ),
        ),
    };
  }
}
