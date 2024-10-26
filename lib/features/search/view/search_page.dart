import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/search/bloc/search_bloc.dart';
import 'package:anivsub/features/search/widget/search_results.dart';
import 'package:anivsub/features/search/widget/suggestion_image.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

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
      invisibleItemsThreshold: 3,
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
      onErrorListener(context, state.message);
    }
  }

  Widget _buildContent(BuildContext context, SearchState state) {
    return GestureDetector(
      onTap: context.focusScope.unfocus,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
          child: Column(
            children: [
              SearchForm(
                controller: _searchInputController,
                onSearch: () => _onSearch(context),
                suggestionsCallback: bloc.suggestionsCallback,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SearchResults(
                  state: state,
                  pagingController: _pagingController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSearch(BuildContext context) {
    context.focusScope.unfocus();
    _pagingController.refresh();
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

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
    required this.controller,
    required this.onSearch,
    required this.suggestionsCallback,
  });
  final TextEditingController controller;
  final VoidCallback onSearch;
  final Future<List<PreSearchItemEntity>> Function(String) suggestionsCallback;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<PreSearchItemEntity>(
      constraints: const BoxConstraints(maxHeight: 320),
      controller: controller,
      suggestionsCallback: suggestionsCallback,
      builder: _buildSearchInput,
      itemBuilder: _buildSuggestionItem,
      onSelected: (item) => _onSuggestionSelected(context, item),
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
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: controller.clear,
        ),
      ),
      onFieldSubmitted: (_) => onSearch(),
    );
  }

  Widget _buildSuggestionItem(BuildContext context, PreSearchItemEntity item) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: SuggestionImage(imageUrl: item.image),
      title: Text(item.name),
      subtitle: Text(item.status),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  void _onSuggestionSelected(BuildContext context, PreSearchItemEntity item) {
    context.pushNamed(
      ScreenNames.watch,
      queryParameters: {'path': item.path},
    );
  }
}
