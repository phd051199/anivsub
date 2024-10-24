// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anivsub/core/di/di.dart' as _i823;
import 'package:anivsub/core/notifier/auth_notifier.dart' as _i910;
import 'package:anivsub/core/service/flutter_secure_storage_service.dart'
    as _i723;
import 'package:anivsub/core/service/location_service.dart' as _i260;
import 'package:anivsub/core/service/shared_preferences_service.dart' as _i595;
import 'package:anivsub/data/data_exports.dart' as _i987;
import 'package:anivsub/data/datasources/local/app_settings_local_data_source.dart'
    as _i306;
import 'package:anivsub/data/datasources/local/app_settings_local_data_source_impl.dart'
    as _i137;
import 'package:anivsub/data/datasources/local/auth_local_data_source.dart'
    as _i833;
import 'package:anivsub/data/datasources/local/auth_local_data_source_impl.dart'
    as _i278;
import 'package:anivsub/data/datasources/remote/auth/auth_api_client.dart'
    as _i502;
import 'package:anivsub/data/datasources/remote/auth/auth_remote_data_source.dart'
    as _i540;
import 'package:anivsub/data/datasources/remote/auth/auth_remote_data_source_impl.dart'
    as _i254;
import 'package:anivsub/data/datasources/remote/scraping/anime_remote_data_source_impl.dart'
    as _i603;
import 'package:anivsub/data/datasources/remote/sk/sk_remote_data_source_impl.dart'
    as _i387;
import 'package:anivsub/data/datasources/remote/worker/decrypt_hls_service_impl.dart'
    as _i274;
import 'package:anivsub/data/repositories/anime_repository_impl.dart' as _i728;
import 'package:anivsub/data/repositories/app_settings_local_repository_impl.dart'
    as _i200;
import 'package:anivsub/data/repositories/auth_local_repository_impl.dart'
    as _i954;
import 'package:anivsub/data/repositories/auth_repository_impl.dart' as _i792;
import 'package:anivsub/domain/domain_exports.dart' as _i772;
import 'package:anivsub/domain/repositories/app_settings_local_repository.dart'
    as _i104;
import 'package:anivsub/domain/repositories/auth_local_repository.dart'
    as _i1060;
import 'package:anivsub/domain/repositories/auth_repository.dart' as _i870;
import 'package:anivsub/domain/usecases/app_settings_usecase.dart' as _i268;
import 'package:anivsub/domain/usecases/auth_usecase.dart' as _i586;
import 'package:anivsub/domain/usecases/decrypt_hls_usecase.dart' as _i743;
import 'package:anivsub/domain/usecases/get_anime_detail_usecase.dart'
    as _i1040;
import 'package:anivsub/domain/usecases/get_encrypted_hls_usecase.dart'
    as _i407;
import 'package:anivsub/domain/usecases/get_episode_skip_usecase.dart' as _i611;
import 'package:anivsub/domain/usecases/get_home_data_usecase.dart' as _i68;
import 'package:anivsub/domain/usecases/get_list_episode_usecase.dart' as _i72;
import 'package:anivsub/domain/usecases/get_play_data_usecase.dart' as _i539;
import 'package:anivsub/domain/usecases/get_pre_search_usecase.dart' as _i32;
import 'package:anivsub/domain/usecases/home_usecases.dart' as _i179;
import 'package:anivsub/domain/usecases/profile_usecase.dart' as _i107;
import 'package:anivsub/domain/usecases/search_anime_usecase.dart' as _i125;
import 'package:anivsub/features/home/bloc/home_bloc.dart' as _i187;
import 'package:anivsub/features/login/cubit/login_cubit.dart' as _i30;
import 'package:anivsub/features/profile/cubit/profile_cubit.dart' as _i132;
import 'package:anivsub/features/search/bloc/search_bloc.dart' as _i785;
import 'package:anivsub/features/settings/cubit/settings_cubit.dart' as _i185;
import 'package:anivsub/features/watch/bloc/watch_bloc.dart' as _i451;
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart' as _i597;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i185.SettingsCubit>(() => _i185.SettingsCubit());
    gh.singleton<_i595.SharedPreferenceService>(
        () => _i595.SharedPreferenceService());
    gh.lazySingleton<_i558.AndroidOptions>(() => registerModule.androidOptions);
    gh.lazySingleton<_i558.IOSOptions>(() => registerModule.iosOptions);
    gh.lazySingleton<_i260.LocationService>(() => _i260.LocationService());
    gh.lazySingleton<_i987.AnimeRemoteDataSource>(() =>
        _i603.AnimeRemoteDataSourceImpl(client: gh<_i987.ScrapingClient>()));
    gh.lazySingleton<_i987.SkRemoteDataSource>(
        () => _i387.SkRemoteDataSourceImpl(gh<_i987.SkApiClient>()));
    gh.lazySingleton<_i723.FlutterSecureStorageService>(
        () => _i723.FlutterSecureStorageService(
              externalAndroidOptions: gh<_i558.AndroidOptions>(),
              externalIosOptions: gh<_i558.IOSOptions>(),
            ));
    gh.lazySingleton<_i306.AppSettingsLocalDataSource>(() =>
        _i137.AppSettingsLocalDataSourceImpl(
            sharedPreferenceService: gh<_i595.SharedPreferenceService>()));
    gh.lazySingleton<_i540.AuthRemoteDataSource>(() =>
        _i254.AuthRemoteDataSourceImpl(client: gh<_i502.AuthApiClient>()));
    gh.lazySingleton<_i772.AuthRepository>(() => _i792.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i987.AuthRemoteDataSource>()));
    gh.lazySingleton<_i987.DecryptHlsService>(
        () => _i274.DecryptHlsServiceImpl(client: gh<_i987.WorkerApiClient>()));
    gh.singleton<_i107.ProfileUseCases>(
        () => _i107.ProfileUseCases(gh<_i772.AuthRepository>()));
    gh.lazySingleton<_i833.AuthLocalDataSource>(() =>
        _i278.AuthLocalDataSourceImpl(
            flutterSecureStorageService:
                gh<_i723.FlutterSecureStorageService>()));
    gh.lazySingleton<_i1060.AuthLocalRepository>(() =>
        _i954.AuthLocalRepositoryImpl(
            authLocalDataSource: gh<_i833.AuthLocalDataSource>()));
    gh.lazySingleton<_i104.AppSettingsLocalRepository>(() =>
        _i200.AppSettingsLocalRepositoryImpl(
            appSettingsLocalDataSource:
                gh<_i306.AppSettingsLocalDataSource>()));
    gh.singleton<_i586.AuthUseCases>(() => _i586.AuthUseCases(
          gh<_i870.AuthRepository>(),
          gh<_i1060.AuthLocalRepository>(),
        ));
    gh.singleton<_i268.AppSettingsUseCases>(() =>
        _i268.AppSettingsUseCases(gh<_i104.AppSettingsLocalRepository>()));
    gh.singleton<_i179.HomeUseCases>(
        () => _i179.HomeUseCases(gh<_i772.AuthLocalRepository>()));
    gh.lazySingleton<_i772.AnimeRepository>(() => _i728.AnimeRepositoryImpl(
          gh<_i987.AnimeRemoteDataSource>(),
          gh<_i987.DecryptHlsService>(),
          gh<_i987.SkRemoteDataSource>(),
        ));
    gh.factory<_i125.SearchAnimeUseCase>(
        () => _i125.SearchAnimeUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i407.GetEncryptedHlsUseCase>(
        () => _i407.GetEncryptedHlsUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i72.GetListEpisodeUseCase>(
        () => _i72.GetListEpisodeUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i1040.GetAnimeDetailUseCase>(
        () => _i1040.GetAnimeDetailUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i68.GetHomeDataUseCase>(
        () => _i68.GetHomeDataUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i539.GetPlayDataUseCase>(
        () => _i539.GetPlayDataUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i32.GetPreSearchUseCase>(
        () => _i32.GetPreSearchUseCase(gh<_i772.AnimeRepository>()));
    gh.factory<_i611.GetEpisodeSkipUsecase>(
        () => _i611.GetEpisodeSkipUsecase(gh<_i772.AnimeRepository>()));
    gh.factory<_i743.DecryptHlsUseCase>(
        () => _i743.DecryptHlsUseCase(gh<_i772.AnimeRepository>()));
    gh.singleton<_i910.AuthNotifier>(
        () => _i910.AuthNotifier(authUseCases: gh<_i772.AuthUseCases>()));
    gh.singleton<_i597.VideoPlayerCubit>(() => _i597.VideoPlayerCubit(
          gh<_i772.GetEncryptedHlsUseCase>(),
          gh<_i772.DecryptHlsUseCase>(),
          gh<_i772.GetEpisodeSkipUsecase>(),
          gh<_i772.AppSettingsUseCases>(),
        ));
    gh.factory<_i132.ProfileCubit>(
        () => _i132.ProfileCubit(gh<_i772.ProfileUseCases>()));
    gh.factory<_i451.WatchBloc>(() => _i451.WatchBloc(
          gh<_i772.GetPlayDataUseCase>(),
          gh<_i772.GetAnimeDetailUseCase>(),
          gh<_i772.GetListEpisodeUseCase>(),
        ));
    gh.factory<_i187.HomeBloc>(
        () => _i187.HomeBloc(gh<_i772.GetHomeDataUseCase>()));
    gh.factory<_i30.LoginCubit>(
        () => _i30.LoginCubit(gh<_i772.AuthUseCases>()));
    gh.factory<_i785.SearchBloc>(() => _i785.SearchBloc(
          gh<_i772.SearchAnimeUseCase>(),
          gh<_i772.GetPreSearchUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i823.RegisterModule {}
