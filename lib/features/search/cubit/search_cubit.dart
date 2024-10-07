import 'package:anivsub/core/base/base.dart';
import 'package:injectable/injectable.dart';

import 'search_state.dart';

@injectable
class SearchCubit extends BaseCubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  void load() {
    emit(SearchLoading());
    // Add your loading logic here
    emit(SearchLoaded());
  }

  void error() {
    emit(SearchError('An error occurred'));
  }
}
