import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit(this.authUseCases)
      : super(
          const LoginInitial(isPasswordObscured: true),
        );

  final AuthUseCases authUseCases;

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
    final result = await authUseCases.getUserSession(request);
    result.when(
      (data) async {
        await authNotifier.doLogin(data);
      },
      (error) async {
        emit(
          LoginError(
            message: error.toString(),
            isPasswordObscured: state.isPasswordObscured,
          ),
        );
        await authNotifier.doLogout();
      },
    );
  }
}
