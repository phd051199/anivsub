import 'package:bloc/bloc.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';
import 'package:anivsub/domain/usecases/home_usecases.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeUseCases) : super(HomeInitial()) {
    getUser();
  }

  final HomeUseCases _homeUseCases;

  Future<void> getUser() async {
    emit(HomeLoading());
    final response = await _homeUseCases.getLocalUserSession();
    response.when(
      (UserSessionResponseEntity user) {
        emit(HomeLoaded(user: user));
      },
      (String message) {
        emit(HomeError(message));
      },
    );
  }
}
