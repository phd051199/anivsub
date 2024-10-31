part of 'search_bloc.dart';

@freezed
class SearchState extends BaseBlocState with _$SearchState {
  const factory SearchState.initial({
    SearchResultEntity? result,
    bool? hasReachedMax,
    @Default(1) int currentPage,
    List<PreSearchItemEntity>? preSearchItems,
  }) = SearchInitial;

  const factory SearchState.loaded({
    required SearchResultEntity result,
    required bool hasReachedMax,
    @Default(1) int currentPage,
    List<PreSearchItemEntity>? preSearchItems,
  }) = SearchLoaded;

  const factory SearchState.error({
    required String message,
    SearchResultEntity? result,
    bool? hasReachedMax,
    @Default(1) int currentPage,
    List<PreSearchItemEntity>? preSearchItems,
  }) = SearchError;
}
