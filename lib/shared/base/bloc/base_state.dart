part of 'base_bloc.dart';

abstract interface class IBaseBlocStateErrorMessage {
  String? get message;
}

abstract interface class IBaseBlocStateErrorRedirecting {
  int get httpCode;
}

abstract class BaseBlocState {
  const BaseBlocState();
}
