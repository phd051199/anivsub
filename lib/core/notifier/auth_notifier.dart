import 'dart:convert';

import 'package:anivsub/domain/domain_exports.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthNotifier with ChangeNotifier {
  AuthNotifier({required this.authUseCases});
  final AuthUseCases authUseCases;
  var _status = AuthStatus.notAuthenticated;
  UserSessionResponseEntity? _loginResponseEntity;
  String? _tokenName;
  String? _tokenValue;

  AuthStatus get status => _status;
  UserSessionResponseEntity? get loginResponseEntity => _loginResponseEntity;
  String? get tokenName => _tokenName;
  String? get tokenValue => _tokenValue;

  bool get isLogged =>
      _loginResponseEntity != null && _tokenName != null && _tokenValue != null;

  String? get uid {
    if (_loginResponseEntity == null) return null;
    final email = _loginResponseEntity!.email!;
    final name = _loginResponseEntity!.firstName!;
    return sha256.convert(utf8.encode(email + name)).toString();
  }

  Future<void> doLogin(UserSessionResponseEntity? loginResponseEntity) async {
    if (loginResponseEntity == null) {
      doLogout();
      return;
    }
    // if (loginResponseEntity.accessToken == null ||
    //     loginResponseEntity.refreshToken == null) {
    //   doLogout();
    //   return;
    // }
    await authUseCases.setLocalAuthToken(loginResponseEntity);
    _loginResponseEntity = loginResponseEntity;
    _status = AuthStatus.authenticated;
    notifyListeners();
  }

  Future<void> checkToken() async {
    final data = await authUseCases.getLocalUserSession();
    data.when(
      (data) {
        if (data.email != null) {
          _loginResponseEntity = data;
          _status = AuthStatus.authenticated;
          notifyListeners();
        } else {
          doLogout();
        }
      },
      (error) => doLogout(),
    );
  }

  Future<void> refreshAuthToken() async {
    final response = await authUseCases.refreshUserSession(
      RefreshUserSessionRequestEntity(
        refreshToken: loginResponseEntity?.refreshToken ?? '',
      ),
    );
    response.when(
      (data) {
        if (data.accessToken != null && data.refreshToken != null) {
          final newLocalData = loginResponseEntity?.copyWith(
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
          );
          if (newLocalData != null) {
            authUseCases.setLocalAuthToken(newLocalData);
            _status = AuthStatus.authenticated;
            notifyListeners();
          } else {
            doLogout();
          }
        } else {
          doLogout();
        }
      },
      (error) {
        doLogout();
      },
    );
  }

  Future<void> doLogout() async {
    _status = AuthStatus.notAuthenticated;
    _loginResponseEntity = null;
    await authUseCases.clearLocalSession();
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    final response = await authUseCases.getLocalUserSession();
    response.when(
      (data) async {
        await doLogin(data);
        // _setTokenFromCookie(data.cookie);
      },
      (error) {
        // Handle login error
      },
    );
  }
}

enum AuthStatus {
  authenticated,
  notAuthenticated,
}
