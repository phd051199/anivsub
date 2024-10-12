import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../bloc/search_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends BlocState<SearchPage, SearchBloc> {
  final _formKey = GlobalKey<FormState>();
  final _searchInputController = TextEditingController();
  late final PagingController<int, AnimeDataEntity> _pagingController;

  @override
  void initState() {
    super.initState();
    _initPagingController();
    _setupBlocListener();
  }

  void _initPagingController() {
    _pagingController = PagingController(
      firstPageKey: 1,
      invisibleItemsThreshold: 10,
    );
    _pagingController.addPageRequestListener(_onPageRequest);
  }

  void _onPageRequest(int pageKey) {
    bloc.add(
      LoadSearch(
        keyword: _searchInputController.text,
        page: pageKey,
      ),
    );
  }

  void _setupBlocListener() {
    bloc.stream.listen((state) {
      if (state is SearchLoaded) {
        _updatePagingController(state);
      }
    });
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

  @override
  void dispose() {
    _pagingController.dispose();
    _searchInputController.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  _buildSearchForm(),
                  const SizedBox(height: 16),
                  Expanded(child: _buildSearchResults()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSearchForm() {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _searchInputController,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: context.l10n.searchHint,
          suffixIcon: _buildClearButton(),
        ),
        onFieldSubmitted: (_) => _pagingController.refresh(),
      ),
    );
  }

  Widget _buildClearButton() {
    return GestureDetector(
      onTap: () {
        _searchInputController.clear();
        _pagingController.refresh();
      },
      child: const Icon(Icons.clear),
    );
  }

  Widget _buildSearchResults() {
    return PagedGridView<int, AnimeDataEntity>(
      pagingController: _pagingController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.5,
      ),
      builderDelegate: PagedChildBuilderDelegate<AnimeDataEntity>(
        itemBuilder: (context, item, index) => AnimeCard(item: item),
      ),
      showNewPageProgressIndicatorAsGridChild: false,
      showNewPageErrorIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
    );
  }
}
