import 'dart:io';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/search/bloc/search_bloc.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends BlocState<SearchPage, SearchBloc> {
  final _searchInputController = TextEditingController();
  late final PagingController<int, AnimeDataEntity> _pagingController;
  static const int _initPage = 1;

  @override
  void initState() {
    super.initState();
    _initPagingController();
    _onPageRequest(_initPage);
  }

  void _initPagingController() {
    _pagingController = PagingController(
      firstPageKey: _initPage,
      invisibleItemsThreshold: 12,
    )..addPageRequestListener(_onPageRequest);
  }

  void _onPageRequest(int pageKey) {
    bloc.add(LoadSearch(keyword: _searchInputController.text, page: pageKey));
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _searchInputController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: _blocListener,
      builder: (context, state) => _buildContent(context, state),
    );
  }

  void _blocListener(BuildContext context, SearchState state) {
    if (state is SearchLoaded) {
      _updatePagingController(state);
    } else if (state is SearchError) {
      onErrorListener(context, state);
    }
  }

  Widget _buildContent(BuildContext context, SearchState state) {
    return GestureDetector(
      onTap: () => context.focusScope.unfocus(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
          child: Column(
            children: [
              _buildSearchForm(),
              const SizedBox(height: 8),
              Expanded(child: _buildSearchResults(state)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchForm() {
    return TypeAheadField<PreSearchItemEntity>(
      constraints: const BoxConstraints(maxHeight: 320),
      controller: _searchInputController,
      suggestionsCallback: bloc.suggestionsCallback,
      builder: _buildSearchInput,
      itemBuilder: _buildSuggestionItem,
      onSelected: _onSuggestionSelected,
      loadingBuilder: (_) => const LoadingWidget(),
    );
  }

  Widget _buildSearchInput(
    BuildContext context,
    TextEditingController controller,
    FocusNode focusNode,
  ) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: context.l10n.searchHint,
        suffixIcon: _buildClearButton(),
      ),
      onFieldSubmitted: (_) => _onSearch(context),
    );
  }

  Widget _buildClearButton() {
    return IconButton(
      icon: const Icon(Icons.clear),
      onPressed: _searchInputController.clear,
    );
  }

  Widget _buildSuggestionItem(BuildContext context, PreSearchItemEntity item) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: _buildSuggestionImage(item.image),
      title: Text(item.name),
      subtitle: Text(item.status),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  Widget _buildSuggestionImage(String imageUrl) {
    return Container(
      width: 42,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: CachedNetworkImage(imageUrl: imageUrl),
    );
  }

  void _onSuggestionSelected(PreSearchItemEntity item) {
    context.pushNamed(
      ScreenNames.watch,
      queryParameters: {'path': item.path},
    );
  }

  void _onSearch(BuildContext context) {
    context.focusScope.unfocus();
    _pagingController.refresh();
  }

  Widget _buildSearchResults(SearchState state) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return switch (state) {
          SearchLoading() ||
          SearchInitial() when _pagingController.itemList == null =>
            _buildSkeletonGrid(),
          _ => RefreshIndicator(
              onRefresh: () async => _pagingController.refresh(),
              child: PagedGridView<int, AnimeDataEntity>(
                pagingController: _pagingController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.45,
                ),
                builderDelegate: PagedChildBuilderDelegate<AnimeDataEntity>(
                  itemBuilder: (_, item, __) => AnimeCard(item: item),
                  newPageProgressIndicatorBuilder: (context) => SizedBox(
                    height: 80,
                    child: Platform.isIOS
                        ? CupertinoActivityIndicator(
                            color: context.theme.colorScheme.onSurface,
                            radius: 12,
                          )
                        : CircularProgressIndicator(
                            color: context.theme.colorScheme.primary,
                          ),
                  ),
                ),
                showNewPageProgressIndicatorAsGridChild: false,
              ),
            ),
        };
      },
    );
  }

  Widget _buildSkeletonGrid() {
    return Skeletonizer(
      enabled: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          childAspectRatio: 0.45,
        ),
        itemCount: 9,
        itemBuilder: (_, __) => AnimeCard(item: AnimeDataEntity.mockup()),
      ),
    );
  }

  void _updatePagingController(SearchLoaded state) {
    final isLastPage = state.hasReachedMax;
    final newItems = state.result.items;

    if (isLastPage) {
      _pagingController.appendLastPage(newItems);
    } else {
      _pagingController.appendPage(newItems, state.currentPage + 1);
    }
  }
}
