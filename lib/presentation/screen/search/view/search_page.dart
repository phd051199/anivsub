import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../app/base/base.dart';
import '../../../../app/routes/go_router_config.dart';
import '../../../../domain/domain_exports.dart';
import '../../../../resources/localization.dart';
import '../../../../shared/const/const.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/extension.dart';
import '../../../widget/loading_widget.dart';
import '../bloc/search_bloc.dart';
import '../widget/search_results.dart';
import '../widget/suggestion_image.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends BlocState<SearchPage, SearchBloc> {
  final _searchInputController = TextEditingController();
  late final PagingController<int, AnimeDataEntity> _pagingController;
  static const int _initPage = PagingConstants.initialPage;

  @override
  void initState() {
    super.initState();
    _initPagingController();
    _onPageRequest(_initPage);
    _setupInputListener();
  }

  void _setupInputListener() {
    _searchInputController.addListener(() {
      bloc.add(
        SetClearButton(
          show: _searchInputController.text.isNotEmpty,
        ),
      );
    });
  }

  void _initPagingController() {
    _pagingController = PagingController(
      firstPageKey: _initPage,
      invisibleItemsThreshold: PagingConstants.defaultInvisibleItemsThreshold,
    )..addPageRequestListener(_onPageRequest);
  }

  void _onPageRequest(int pageKey) {
    bloc.add(
      LoadSearch(
        keyword: _searchInputController.text,
        page: pageKey,
      ),
    );
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
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: Dimens.d12.responsive(),
          right: Dimens.d12.responsive(),
          top: Dimens.d12.responsive(),
        ),
        child: Column(
          children: [
            SearchForm(
              controller: _searchInputController,
              onSearch: () => _onSearch(context),
              suggestionsCallback: bloc.suggestionsCallback,
            ),
            Gap(Dimens.d8.responsive()),
            Expanded(
              child: SearchResults(
                pagingController: _pagingController,
              ),
            ),
          ],
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
      constraints: BoxConstraints(
        maxHeight: Dimens.d320.responsive(),
      ),
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
      onTapOutside: (_) => context.focusScope.unfocus(),
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: S.current.searchHint,
        suffixIcon: context.read<SearchBloc>().state.showClearButton
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: controller.clear,
              )
            : null,
      ),
      onFieldSubmitted: (_) => onSearch(),
    );
  }

  Widget _buildSuggestionItem(BuildContext context, PreSearchItemEntity item) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: Dimens.d16.responsive()),
      leading: SuggestionImage(imageUrl: item.image),
      title: Text(item.name),
      subtitle: Text(item.status),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  void _onSuggestionSelected(BuildContext context, PreSearchItemEntity item) {
    context.pushNamed(
      Routes.watch.name,
      queryParameters: {'path': item.path},
    );
  }
}
