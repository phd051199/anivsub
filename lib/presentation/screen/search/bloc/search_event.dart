part of 'search_bloc.dart';

abstract class SearchEvent extends BaseBlocEvent {}

@freezed
class LoadSearch extends SearchEvent with _$LoadSearch {
  const factory LoadSearch({
    required String keyword,
    required int page,
  }) = _LoadSearch;
}
