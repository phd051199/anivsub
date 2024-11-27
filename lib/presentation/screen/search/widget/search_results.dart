import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../widget/anime/anime_list.dart';
import '../../../widget/loading_widget.dart';
import '../bloc/search_bloc.dart';
import 'search_skeleton.dart';

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
