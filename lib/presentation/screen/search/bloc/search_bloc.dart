import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends BaseBloc<SearchEvent, SearchState> {
  SearchBloc(
    this._searchAnimeUseCase,
    this._getPreSearchUseCase,
  ) : super(const SearchInitial()) {
    on<LoadSearch>(_onLoadSearch);
  }

  final SearchAnimeUseCase _searchAnimeUseCase;
  final GetPreSearchUseCase _getPreSearchUseCase;

  static const int _pageSize = 30;

  Future<List<PreSearchItemEntity>> suggestionsCallback(String keyword) async {
    if (keyword.isEmpty) return [];

    final output = await _getPreSearchUseCase.execute(
      GetPreSearchUseCaseInput(keyword: keyword),
    );
    return output.result;
  }

  Future<void> _onLoadSearch(
    LoadSearch event,
    Emitter<SearchState> emit,
  ) async {
    try {
      final output = await _searchAnimeUseCase.execute(
        SearchAnimeUseCaseInput(
          keyword: event.keyword,
          page: event.page,
        ),
      );

      final items = output.result.items;
      final hasReachedMax = items.length < _pageSize;

      emit(
        items.isNotEmpty
            ? SearchLoaded(
                result: output.result,
                hasReachedMax: hasReachedMax,
                currentPage: event.page,
              )
            : const SearchLoaded(
                hasReachedMax: true,
                result: SearchResultEntity(items: []),
              ),
      );
    } catch (e) {
      emit(
        SearchError(
          message: 'An error occurred: $e',
          result: state.result,
          hasReachedMax: state.hasReachedMax,
          currentPage: state.currentPage,
          preSearchItems: state.preSearchItems,
        ),
      );
    }
  }
}
