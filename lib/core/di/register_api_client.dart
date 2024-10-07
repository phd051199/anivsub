import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/network/network_client.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:get_it/get_it.dart';

void registerApiClient(GetIt getIt, Environment environment) {
  getIt.registerSingleton<AuthApiClient>(
      AuthApiClient(NetworkClient.getDio(baseUrl: environment.baseUrl)));
}
