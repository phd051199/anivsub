import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._getHomeDataUseCase) : super(const HomeInitial()) {
    on<LoadHome>(_onLoadHome);
  }

  final GetHomeDataUseCase _getHomeDataUseCase;

  void _onLoadHome(LoadHome event, Emitter<HomeState> emit) async {
    emit(const HomeLoading());

    final GetHomeDataUseCaseOutput output = await _getHomeDataUseCase.send(
      const GetHomeDataUseCaseInput(),
    );

    emit(HomeLoaded(homeData: output.result));
  }
}
