import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit(this._authUseCase)
      : super(
          const LoginInitial(isPasswordObscured: true),
        );

  final AuthUseCase _authUseCase;

  void togglePasswordVisibility() {
    final isPasswordVisible = !state.isPasswordObscured;
    emit(
      LoginLoaded(
        isPasswordObscured: isPasswordVisible,
      ),
    );
  }

  void getUserSession(UserSessionRequestEntity request) async {
    emit(
      LoginLoading(
        isPasswordObscured: state.isPasswordObscured,
      ),
    );

    try {
      final output = await _authUseCase.execute(
        GetUserSessionInput(authRequest: request),
      );

      await authNotifier.doLogin(output.sessionResult);
    } catch (error) {
      emit(
        LoginError(
          message: error.toString(),
          isPasswordObscured: state.isPasswordObscured,
        ),
      );
      await authNotifier.doLogout();
    }
  }
}
