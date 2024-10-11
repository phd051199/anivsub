part of 'search_bloc.dart';

abstract class SearchEvent extends BaseBlocEvent {}

@freezed
class LoadSearch extends SearchEvent with _$LoadSearch {
  const factory LoadSearch({
    required String keyword,
    required int page,
  }) = _LoadSearch;
}

@freezed
class SubmitSearch extends SearchEvent with _$SubmitSearch {
  const factory SubmitSearch({
    required String keyword,
    int? page,
  }) = _SubmitSearch;
}

@freezed
class ErrorSearch extends SearchEvent with _$ErrorSearch {
  const factory ErrorSearch() = _ErrorSearch;
}
