import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/base/base.dart';
import '../../../../domain/domain_exports.dart';
import '../../../../shared/extension/extension.dart';
import '../../../../shared/shared_exports.dart';

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
    safeEmit(
      LoginLoaded(
        isPasswordObscured: isPasswordVisible,
      ),
    );
  }

  Future<void> getUserSession(UserSessionRequestEntity request) async {
    safeEmit(
      LoginLoading(
        isPasswordObscured: state.isPasswordObscured,
      ),
    );

    try {
      final output = await _authUseCase.execute(
        GetUserSessionInput(authRequest: request),
      );

      await authNotifier.doLogin(output.sessionResult);

      safeEmit(
        const LoginLoaded(
          isPasswordObscured: true,
        ),
      );
    } catch (error) {
      safeEmit(
        LoginError(
          message: error.toString(),
          isPasswordObscured: state.isPasswordObscured,
        ),
      );
      await authNotifier.doLogout();
    }
  }
}
