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
  ) : super(const SearchInitial()) {
    on<LoadSearch>(_onLoadSearch);
    on<ErrorSearch>(_onErrorSearch);
    on<SubmitSearch>(_onSubmitSearch);
  }

  final SearchAnimeUseCase _searchAnimeUseCase;
  static const _pageSize = 30;

  Future<void> _onLoadSearch(
    LoadSearch event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchLoading());

      final output = await _searchAnimeUseCase.send(
        SearchAnimeUseCaseInput(
          keyword: event.keyword,
          page: event.page,
        ),
      );

      if (output.result.items.isNotEmpty) {
        emit(
          SearchLoaded(
            result: output.result,
            hasReachedMax: output.result.items.length < _pageSize,
          ),
        );
      } else {
        emit(
          const SearchLoaded(
            hasReachedMax: true,
            result: SearchResultEntity(items: []),
          ),
        );
      }
    } catch (e) {
      emit(const SearchError('An error occurred'));
    }
  }

  void _onSubmitSearch(SubmitSearch event, Emitter<SearchState> emit) {
    add(LoadSearch(keyword: event.keyword, page: 1));
  }

  void _onErrorSearch(ErrorSearch event, Emitter<SearchState> emit) {
    emit(const SearchError('An error occurred'));
  }
}
