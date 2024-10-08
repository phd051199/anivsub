import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._getHomeDataUseCase) : super(HomeInitial()) {
    on<LoadHome>(_onLoadHome);
    on<ErrorHome>(_onErrorHome);
  }

  final GetHomeDataUseCase _getHomeDataUseCase;

  void _onLoadHome(LoadHome event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final GetHomeDataUseCaseOutput result = await _getHomeDataUseCase.send(
        GetHomeDataUseCaseInput(),
      );
      emit(HomeLoaded(homeData: result.homeData));
    } catch (error) {
      emit(HomeError(error.toString()));
    }
  }

  void _onErrorHome(ErrorHome event, Emitter<HomeState> emit) {
    emit(HomeError('An error occurred'));
  }
}
