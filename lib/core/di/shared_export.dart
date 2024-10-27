import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/notifier/auth_notifier.dart';
import 'package:anivsub/core/service/flutter_secure_storage_service.dart';
import 'package:anivsub/core/service/shared_preferences_service.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:get_it/get_it.dart';

Environment get environment => GetIt.I<Environment>();
AuthNotifier get authNotifier => GetIt.I<AuthNotifier>();

// Local services
SharedPreferenceService get sharedPreferenceService =>
    GetIt.I<SharedPreferenceService>();
FlutterSecureStorageService get flutterSecureStorageService =>
    GetIt.I<FlutterSecureStorageService>();
CookieJar get cookieJar => GetIt.I<CookieJar>();

// Api Client
AuthApiClient get authApiClient => GetIt.I<AuthApiClient>();
ScrapingClient get scrapingClient => GetIt.I<ScrapingClient>();
WorkerApiClient get workerApiClient => GetIt.I<WorkerApiClient>();
FbApiClient get fbApiClient => GetIt.I<FbApiClient>();

// Data Source
AuthRemoteDataSource get authRemoteDataSource =>
    GetIt.I<AuthRemoteDataSource>();
AuthLocalDataSource get authLocalDataSource => GetIt.I<AuthLocalDataSource>();
AppSettingsLocalDataSource get appSettingsLocalDataSource =>
    GetIt.I<AppSettingsLocalDataSource>();

// Repositories
AuthRepository get authRepository => GetIt.I<AuthRepository>();
AuthLocalRepository get authLocalRepository => GetIt.I<AuthLocalRepository>();
AppSettingsLocalRepository get appSettingsLocalRepository =>
    GetIt.I<AppSettingsLocalRepository>();

// Use Cases
AuthUseCases get authUseCases => GetIt.I<AuthUseCases>();
ProfileUseCases get profileUseCases => GetIt.I<ProfileUseCases>();
AppSettingsUseCases get appSettingsUseCases => GetIt.I<AppSettingsUseCases>();
HomeUseCases get homeUseCases => GetIt.I<HomeUseCases>();
GetHomeDataUseCase get getHomeDataUseCase => GetIt.I<GetHomeDataUseCase>();
GetPlayDataUseCase get getPlayDataUseCase => GetIt.I<GetPlayDataUseCase>();
GetEncryptedHlsUseCase get getEncryptedHlsUseCase =>
    GetIt.I<GetEncryptedHlsUseCase>();
DecryptHlsUseCase get decryptHlsUseCase => GetIt.I<DecryptHlsUseCase>();
GetListEpisodeUseCase get getListEpisodeUseCase =>
    GetIt.I<GetListEpisodeUseCase>();
GetEpisodeSkipUsecase get getEpisodeSkipUsecase =>
    GetIt.I<GetEpisodeSkipUsecase>();

// Blocs
VideoPlayerCubit get videoPlayerCubit => GetIt.I<VideoPlayerCubit>();
