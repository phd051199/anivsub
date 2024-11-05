import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/base/base.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileState> {
  ProfileCubit(
    this._authUseCase,
    this._getUserHistoryUseCase,
  ) : super(const ProfileInitial()) {
    getUser();
  }

  final AuthUseCase _authUseCase;
  final GetUserHistoryUseCase _getUserHistoryUseCase;

  Future<void> getUser() async {
    final authUseCaseOutput =
        await _authUseCase.execute(const GetLocalAuthTokenInput());
    final getUserHistoryUseCaseOutput = await _getUserHistoryUseCase.execute(
      const GetUserHistoryUseCaseInput(
        page: 1,
      ),
    );

    safeEmit(
      ProfileLoaded(
        user: authUseCaseOutput.localSession!,
        queryHistory: getUserHistoryUseCaseOutput.result,
      ),
    );
  }
}
