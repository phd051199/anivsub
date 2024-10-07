import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
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
