import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/notifier/auth_notifier.dart';
import 'package:anivsub/core/service/flutter_secure_storage_service.dart';
import 'package:anivsub/core/service/shared_preferences_service.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:get_it/get_it.dart';

Environment get environment => GetIt.I<Environment>();
AuthNotifier get authNotifier => GetIt.I<AuthNotifier>();

// Local services
SharedPreferenceService get sharedPreferenceService =>
    GetIt.I<SharedPreferenceService>();
FlutterSecureStorageService get flutterSecureStorageService =>
    GetIt.I<FlutterSecureStorageService>();

// Api Client
AuthApiClient get authApiClient => GetIt.I<AuthApiClient>();
ScrapingClient get scrapingClient => GetIt.I<ScrapingClient>();

// Remote Data Source
AuthRemoteDataSource get authRemoteDataSource =>
    GetIt.I<AuthRemoteDataSource>();

// Local Data Source
AuthLocalDataSource get authLocalDataSource => GetIt.I<AuthLocalDataSource>();
AppSettingsLocalDataSource get appSettingsLocalDataSource =>
    GetIt.I<AppSettingsLocalDataSource>();

// Repositories
AuthRepository get authRepository => GetIt.I<AuthRepository>();

// Local Repositories
AuthLocalRepository get authLocalRepository => GetIt.I<AuthLocalRepository>();
AppSettingsLocalRepository get appSettingsLocalRepository =>
    GetIt.I<AppSettingsLocalRepository>();

// Use Cases
AuthUseCases get authUseCases => GetIt.I<AuthUseCases>();
ProfileUseCases get profileUseCases => GetIt.I<ProfileUseCases>();
AppSettingsUseCases get appSettingsUseCases => GetIt.I<AppSettingsUseCases>();
HomeUseCases get homeUseCases => GetIt.I<HomeUseCases>();
GetHomeDataUseCase get getHomeDataUseCase => GetIt.I<GetHomeDataUseCase>();
