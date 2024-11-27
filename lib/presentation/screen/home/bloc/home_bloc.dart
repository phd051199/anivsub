import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/base/base.dart';
import '../../../../domain/domain_exports.dart';
import '../../../../shared/extension/extension.dart';

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
    if (state is! HomeInitial) safeEmit(const HomeInitial());

    final GetHomeDataUseCaseOutput output = await _getHomeDataUseCase.execute(
      const GetHomeDataUseCaseInput(),
    );

    safeEmit(
      HomeLoaded(homeData: output.result),
    );
  }
}
