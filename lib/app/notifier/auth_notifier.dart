import 'dart:convert';

import 'package:anivsub/domain/domain_exports.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthNotifier with ChangeNotifier {
  AuthNotifier({required this.authUseCases});

  final AuthUseCase authUseCases;
  AuthStatus _status = AuthStatus.notAuthenticated;
  UserSessionResponseEntity? _loginResponseEntity;
  String? _tokenName;
  String? _tokenValue;

  AuthStatus get status => _status;
  UserSessionResponseEntity? get loginResponseEntity => _loginResponseEntity;
  String? get tokenName => _tokenName;
  String? get tokenValue => _tokenValue;

  bool get isLogged =>
      _loginResponseEntity != null && _tokenName != null && _tokenValue != null;

  Future<void> doLogin(UserSessionResponseEntity? loginResponseEntity) async {
    if (loginResponseEntity == null) {
      doLogout();
      return;
    }

    loginResponseEntity = loginResponseEntity.copyWith(
      id: sha256
          .convert(
            utf8.encode(
              loginResponseEntity.email! + loginResponseEntity.username!,
            ),
          )
          .toString(),
    );

    await authUseCases.execute(
      SetLocalAuthTokenInput(
        authRequest: loginResponseEntity,
      ),
    );
    _loginResponseEntity = loginResponseEntity;
    _status = AuthStatus.authenticated;
    notifyListeners();
  }

  Future<void> checkToken() async {
    try {
      final output = await authUseCases.execute(
        const GetLocalAuthTokenInput(),
      );
      if (output.localSession?.email != null) {
        _loginResponseEntity = output.localSession;
        _status = AuthStatus.authenticated;
        notifyListeners();
      } else {
        doLogout();
      }
    } catch (e) {
      doLogout();
    }
  }

  Future<void> refreshAuthToken() async {
    final response = await authUseCases.execute(
      RefreshUserSessionInput(
        refreshRequest: RefreshUserSessionRequestEntity(
          refreshToken: loginResponseEntity?.refreshToken ?? '',
        ),
      ),
    );

    if (response.refreshResult?.accessToken != null &&
        response.refreshResult?.refreshToken != null) {
      final newLocalData = loginResponseEntity?.copyWith(
        accessToken: response.refreshResult?.accessToken,
        refreshToken: response.refreshResult?.refreshToken,
      );
      if (newLocalData != null) {
        await authUseCases.execute(
          SetLocalAuthTokenInput(
            authRequest: newLocalData,
          ),
        );
        _status = AuthStatus.authenticated;
        notifyListeners();
      } else {
        doLogout();
      }
    } else {
      doLogout();
    }
  }

  Future<void> doLogout() async {
    _status = AuthStatus.notAuthenticated;
    _loginResponseEntity = null;
    await authUseCases.execute(
      const ClearLocalAuthTokenInput(),
    );
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    final output = await authUseCases.execute(
      const GetLocalAuthTokenInput(),
    );
    await doLogin(output.localSession);
  }
}

enum AuthStatus {
  authenticated,
  notAuthenticated,
}
