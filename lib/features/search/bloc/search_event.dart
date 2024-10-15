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
class PreSearch extends SearchEvent with _$PreSearch {
  const factory PreSearch({
    required String keyword,
  }) = _PreSearch;
}

@freezed
class ErrorSearch extends SearchEvent with _$ErrorSearch {
  const factory ErrorSearch() = _ErrorSearch;
}
