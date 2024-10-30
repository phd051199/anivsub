part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    required bool isPasswordObscured,
  }) = LoginInitial;

  const factory LoginState.loaded({
    required bool isPasswordObscured,
  }) = LoginLoaded;

  const factory LoginState.loading({
    required bool isPasswordObscured,
  }) = LoginLoading;

  const factory LoginState.error({
    required bool isPasswordObscured,
    required String message,
  }) = LoginError;
}
