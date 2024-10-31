// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anivsub/app/notifier/auth_notifier.dart' as _i644;
import 'package:anivsub/app/theme/cubit/theme_cubit.dart' as _i976;
import 'package:anivsub/core/di/di.dart' as _i823;
import 'package:anivsub/core/plugin/dha/dha.dart' as _i160;
import 'package:anivsub/core/plugin/dha/dha_impl.dart' as _i537;
import 'package:anivsub/core/plugin/plugin.dart' as _i1059;
import 'package:anivsub/core/service/flutter_secure_storage_service.dart'
    as _i723;
import 'package:anivsub/core/service/service.dart' as _i962;
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
import 'package:anivsub/data/datasources/remote/auth/auth_remote_data_source_impl.dart'
    as _i254;
import 'package:anivsub/data/datasources/remote/episode_skip/episode_skip_remote_data_source_impl.dart'
    as _i984;
import 'package:anivsub/data/datasources/remote/history/history_remote_data_source_impl.dart'
    as _i201;
import 'package:anivsub/data/datasources/remote/scraping/anime_remote_data_source_impl.dart'
    as _i603;
import 'package:anivsub/data/repositories/anime_repository_impl.dart' as _i728;
import 'package:anivsub/data/repositories/app_settings_local_repository_impl.dart'
    as _i200;
import 'package:anivsub/data/repositories/auth_local_repository_impl.dart'
    as _i954;
import 'package:anivsub/data/repositories/auth_repository_impl.dart' as _i792;
import 'package:anivsub/data/repositories/history_repositoty_impl.dart'
    as _i469;
import 'package:anivsub/domain/domain_exports.dart' as _i772;
import 'package:anivsub/domain/repositories/app_settings_local_repository.dart'
    as _i104;
import 'package:anivsub/domain/repositories/auth_local_repository.dart'
    as _i1060;
import 'package:anivsub/domain/usecases/app_settings_usecase.dart' as _i268;
import 'package:anivsub/domain/usecases/auth_usecase.dart' as _i586;
import 'package:anivsub/domain/usecases/get_anime_detail_usecase.dart'
    as _i1040;
import 'package:anivsub/domain/usecases/get_encrypted_hls_usecase.dart'
    as _i407;
import 'package:anivsub/domain/usecases/get_episode_skip_usecase.dart' as _i611;
import 'package:anivsub/domain/usecases/get_home_data_usecase.dart' as _i68;
import 'package:anivsub/domain/usecases/get_last_chap_usecase.dart' as _i420;
import 'package:anivsub/domain/usecases/get_list_episode_usecase.dart' as _i72;
import 'package:anivsub/domain/usecases/get_play_data_usecase.dart' as _i539;
import 'package:anivsub/domain/usecases/get_pre_search_usecase.dart' as _i32;
import 'package:anivsub/domain/usecases/get_single_progress_usecase.dart'
    as _i1045;
import 'package:anivsub/domain/usecases/get_user_history_usecase.dart' as _i339;
import 'package:anivsub/domain/usecases/search_anime_usecase.dart' as _i125;
import 'package:anivsub/domain/usecases/set_single_progress_usecase.dart'
    as _i469;
import 'package:anivsub/presentation/screen/home/bloc/home_bloc.dart' as _i865;
import 'package:anivsub/presentation/screen/login/cubit/login_cubit.dart'
    as _i200;
import 'package:anivsub/presentation/screen/profile/cubit/profile_cubit.dart'
    as _i346;
import 'package:anivsub/presentation/screen/search/bloc/search_bloc.dart'
    as _i342;
import 'package:anivsub/presentation/screen/settings/cubit/settings_cubit.dart'
    as _i657;
import 'package:anivsub/presentation/screen/watch/bloc/watch_bloc.dart'
    as _i835;
import 'package:anivsub/presentation/screen/watch/cubit/video_player_cubit.dart'
    as _i218;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

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
    gh.factory<_i657.SettingsCubit>(() => _i657.SettingsCubit());
    gh.singleton<_i595.SharedPreferenceService>(
        () => _i595.SharedPreferenceService());
    gh.lazySingleton<_i558.AndroidOptions>(() => registerModule.androidOptions);
    gh.lazySingleton<_i558.IOSOptions>(() => registerModule.iosOptions);
    gh.lazySingleton<_i987.AnimeRemoteDataSource>(() =>
        _i603.AnimeRemoteDataSourceImpl(client: gh<_i987.ScrapingClient>()));
    gh.lazySingleton<_i160.DHA>(() => _i537.DHAImpl());
    gh.lazySingleton<_i723.FlutterSecureStorageService>(
        () => _i723.FlutterSecureStorageService(
              externalAndroidOptions: gh<_i558.AndroidOptions>(),
              externalIosOptions: gh<_i558.IOSOptions>(),
            ));
    gh.lazySingleton<_i987.HistoryRemoteDataSource>(
        () => _i201.HistoryRemoteDataSourceImpl(gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i987.AuthLocalDataSource>(() =>
        _i278.AuthLocalDataSourceImpl(
            flutterSecureStorageService:
                gh<_i962.FlutterSecureStorageService>()));
    gh.lazySingleton<_i987.AuthRemoteDataSource>(() =>
        _i254.AuthRemoteDataSourceImpl(client: gh<_i987.AuthApiClient>()));
    gh.lazySingleton<_i987.EpisodeSkipRemoteDataSource>(() =>
        _i984.EpisodeSkipRemoteDataSourceImpl(
            gh<_i987.EpisodeSkipApiClient>()));
    gh.lazySingleton<_i306.AppSettingsLocalDataSource>(() =>
        _i137.AppSettingsLocalDataSourceImpl(
            sharedPreferenceService: gh<_i962.SharedPreferenceService>()));
    gh.lazySingleton<_i1060.AuthLocalRepository>(() =>
        _i954.AuthLocalRepositoryImpl(
            authLocalDataSource: gh<_i833.AuthLocalDataSource>()));
    gh.lazySingleton<_i104.AppSettingsLocalRepository>(() =>
        _i200.AppSettingsLocalRepositoryImpl(
            appSettingsLocalDataSource:
                gh<_i306.AppSettingsLocalDataSource>()));
    gh.lazySingleton<_i772.AuthRepository>(() => _i792.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i987.AuthRemoteDataSource>()));
    gh.lazySingleton<_i772.AnimeRepository>(() => _i728.AnimeRepositoryImpl(
          gh<_i987.AnimeRemoteDataSource>(),
          gh<_i987.EpisodeSkipRemoteDataSource>(),
        ));
    gh.lazySingleton<_i772.HistoryRepository>(() => _i469.HistoryRepositoryImpl(
          gh<_i987.HistoryRemoteDataSource>(),
          gh<_i987.AuthLocalDataSource>(),
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
    gh.factory<_i268.AppSettingsUseCase>(
        () => _i268.AppSettingsUseCase(gh<_i772.AppSettingsLocalRepository>()));
    gh.factory<_i865.HomeBloc>(
        () => _i865.HomeBloc(gh<_i772.GetHomeDataUseCase>()));
    gh.factory<_i420.GetLastChapUseCase>(
        () => _i420.GetLastChapUseCase(gh<_i772.HistoryRepository>()));
    gh.factory<_i1045.GetSingleProgressUseCase>(
        () => _i1045.GetSingleProgressUseCase(gh<_i772.HistoryRepository>()));
    gh.factory<_i339.GetUserHistoryUseCase>(
        () => _i339.GetUserHistoryUseCase(gh<_i772.HistoryRepository>()));
    gh.factory<_i469.SetSingleProgressUseCase>(
        () => _i469.SetSingleProgressUseCase(gh<_i772.HistoryRepository>()));
    gh.factory<_i342.SearchBloc>(() => _i342.SearchBloc(
          gh<_i772.SearchAnimeUseCase>(),
          gh<_i772.GetPreSearchUseCase>(),
        ));
    gh.factory<_i835.WatchBloc>(() => _i835.WatchBloc(
          gh<_i772.GetPlayDataUseCase>(),
          gh<_i772.GetAnimeDetailUseCase>(),
          gh<_i772.GetListEpisodeUseCase>(),
          gh<_i962.SharedPreferenceService>(),
          gh<_i772.GetLastChapUseCase>(),
        ));
    gh.factory<_i586.AuthUseCase>(() => _i586.AuthUseCase(
          gh<_i772.AuthRepository>(),
          gh<_i772.AuthLocalRepository>(),
        ));
    gh.factory<_i976.ThemeCubit>(
        () => _i976.ThemeCubit(gh<_i268.AppSettingsUseCase>()));
    gh.lazySingleton<_i218.VideoPlayerCubit>(() => _i218.VideoPlayerCubit(
          gh<_i772.GetEncryptedHlsUseCase>(),
          gh<_i772.GetEpisodeSkipUsecase>(),
          gh<_i772.AppSettingsUseCase>(),
          gh<_i772.GetSingleProgressUseCase>(),
          gh<_i772.SetSingleProgressUseCase>(),
          gh<_i1059.DHA>(),
        ));
    gh.singleton<_i644.AuthNotifier>(
        () => _i644.AuthNotifier(authUseCases: gh<_i772.AuthUseCase>()));
    gh.factory<_i200.LoginCubit>(
        () => _i200.LoginCubit(gh<_i772.AuthUseCase>()));
    gh.factory<_i346.ProfileCubit>(() => _i346.ProfileCubit(
          gh<_i772.AuthUseCase>(),
          gh<_i772.GetUserHistoryUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i823.RegisterModule {}
