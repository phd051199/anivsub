import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime_list.dart';
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

  final PagingController<int, AnimeDataEntity> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener(_fetchPage);
  }

  void _fetchPage(int pageKey) {
    try {
      bloc.add(
        LoadSearch(
          keyword: _searchInputController.text,
          page: pageKey,
        ),
      );

      bloc.stream.listen((state) {
        if (state is SearchError) {
          _pagingController.error = state.message;
          return;
        }

        if (state is SearchLoaded) {
          final isLastPage = state.hasReachedMax;
          final newItems = state.result.items;

          if (isLastPage) {
            _pagingController.appendLastPage(newItems);
          } else {
            final nextPageKey = pageKey + 1;
            _pagingController.appendPage(newItems, nextPageKey);
          }
        }
      });
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() async {
    super.dispose();
    _pagingController.dispose();
    await bloc.close();
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
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: _searchInputController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        label: Text('Name'.unTranslated()),
                        suffixIcon: GestureDetector(
                          onTap: () => _searchInputController.clear(),
                          child: const Icon(Icons.clear),
                        ),
                      ),
                      onFieldSubmitted: (value) {
                        _pagingController.refresh();
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: PagedGridView<int, AnimeDataEntity>(
                      pagingController: _pagingController,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.5,
                      ),
                      builderDelegate:
                          PagedChildBuilderDelegate<AnimeDataEntity>(
                        itemBuilder: (context, item, index) =>
                            AnimeCard(item: item),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
