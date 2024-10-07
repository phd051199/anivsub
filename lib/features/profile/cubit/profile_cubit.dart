import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:anivsub/domain/entities/user/user_entity.dart';
import 'package:anivsub/domain/usecases/profile_use_cases.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileUseCases) : super(ProfileInitial()) {
    getUser();
  }

  final ProfileUseCases profileUseCases;

  Future<void> getUser() async {
    emit(ProfileLoading());
    final response = await profileUseCases.getUser();
    response.when(
      (data) {
        emit(ProfileLoaded(data));
      },
      (error) {
        emit(ProfileError(error.toString()));
      },
    );
  }
}
