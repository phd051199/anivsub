import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileState> {
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
