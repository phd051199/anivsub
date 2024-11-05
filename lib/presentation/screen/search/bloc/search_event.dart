part of 'search_bloc.dart';

sealed class SearchEvent extends BaseBlocEvent {}

@freezed
class LoadSearch extends SearchEvent with _$LoadSearch {
  const factory LoadSearch({
    required String keyword,
    required int page,
  }) = _LoadSearch;
}

@freezed
class SetClearButton extends SearchEvent with _$SetClearButton {
  const factory SetClearButton({
    required bool show,
  }) = _SetClearButton;
}
