import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_usecase.freezed.dart';

@injectable
class AuthUseCase extends BaseFutureUseCase<BaseInput, AuthUseCaseOutput> {
  const AuthUseCase(this._authRepository, this._authLocalRepository);
  final AuthRepository _authRepository;
  final AuthLocalRepository _authLocalRepository;

  @protected
  @override
  Future<AuthUseCaseOutput> buildUseCase(BaseInput input) async {
    switch (input) {
      case GetUserSessionInput():
        final result = await _authRepository.getUserSession(input.authRequest!);
        return AuthUseCaseOutput(sessionResult: result);

      case RefreshUserSessionInput():
        final result =
            await _authRepository.refreshUserSession(input.refreshRequest!);
        return AuthUseCaseOutput(refreshResult: result);

      case SetLocalAuthTokenInput():
        await _authLocalRepository.setLocalUserSession(input.authRequest!);
        return const AuthUseCaseOutput();

      case GetLocalAuthTokenInput():
        final result = await _authLocalRepository.getLocalUserSession();
        return AuthUseCaseOutput(localSession: result);

      case ClearLocalAuthTokenInput():
        await _authLocalRepository.clearLocalSession();
        return const AuthUseCaseOutput();

      default:
        return const AuthUseCaseOutput();
    }
  }
}

@freezed
class GetUserSessionInput extends BaseInput with _$GetUserSessionInput {
  const factory GetUserSessionInput({
    UserSessionRequestEntity? authRequest,
  }) = _GetUserSessionInput;
}

@freezed
class RefreshUserSessionInput extends BaseInput with _$RefreshUserSessionInput {
  const factory RefreshUserSessionInput({
    RefreshUserSessionRequestEntity? refreshRequest,
  }) = _RefreshUserSessionInput;
}

@freezed
class SetLocalAuthTokenInput extends BaseInput with _$SetLocalAuthTokenInput {
  const factory SetLocalAuthTokenInput({
    UserSessionResponseEntity? authRequest,
  }) = _SetLocalAuthTokenInput;
}

@freezed
class GetLocalAuthTokenInput extends BaseInput with _$GetLocalAuthTokenInput {
  const factory GetLocalAuthTokenInput() = _GetLocalAuthTokenInput;
}

@freezed
class ClearLocalAuthTokenInput extends BaseInput
    with _$ClearLocalAuthTokenInput {
  const factory ClearLocalAuthTokenInput() = _ClearLocalAuthTokenInput;
}

@freezed
class AuthUseCaseOutput extends BaseOutput with _$AuthUseCaseOutput {
  const factory AuthUseCaseOutput({
    UserSessionResponseEntity? sessionResult,
    RefreshUserSessionResponseEntity? refreshResult,
    UserSessionResponseEntity? localSession,
  }) = _AuthUseCaseOutput;
}
