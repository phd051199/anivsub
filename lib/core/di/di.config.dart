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
import 'package:anivsub/domain/usecases/app_settings_use_cases.dart' as _i531;
import 'package:anivsub/domain/usecases/auth_use_cases.dart' as _i336;
import 'package:anivsub/domain/usecases/home_usecases.dart' as _i179;
import 'package:anivsub/domain/usecases/profile_use_cases.dart' as _i826;
import 'package:anivsub/features/home/cubit/home_cubit.dart' as _i987;
import 'package:anivsub/features/profile/cubit/profile_cubit.dart' as _i132;
import 'package:anivsub/features/search/cubit/search_cubit.dart' as _i607;
import 'package:anivsub/features/settings/cubit/settings_cubit.dart' as _i185;
import 'package:anivsub/features/watch/bloc/watch_bloc.dart' as _i451;
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
    gh.factory<_i607.SearchCubit>(() => _i607.SearchCubit());
    gh.factory<_i451.WatchBloc>(() => _i451.WatchBloc());
    gh.singleton<_i595.SharedPreferenceService>(
        () => _i595.SharedPreferenceService());
    gh.lazySingleton<_i260.LocationService>(() => _i260.LocationService());
    gh.lazySingleton<_i558.AndroidOptions>(() => registerModule.androidOptions);
    gh.lazySingleton<_i558.IOSOptions>(() => registerModule.iosOptions);
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
    gh.lazySingleton<_i870.AuthRepository>(() => _i792.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i540.AuthRemoteDataSource>()));
    gh.singleton<_i826.ProfileUseCases>(
        () => _i826.ProfileUseCases(gh<_i772.AuthRepository>()));
    gh.lazySingleton<_i833.AuthLocalDataSource>(() =>
        _i278.AuthLocalDataSourceImpl(
            flutterSecureStorageService:
                gh<_i723.FlutterSecureStorageService>()));
    gh.lazySingleton<_i1060.AuthLocalRepository>(() =>
        _i954.AuthLocalRepositoryImpl(
            authLocalDataSource: gh<_i833.AuthLocalDataSource>()));
    gh.singleton<_i179.HomeUseCases>(
        () => _i179.HomeUseCases(gh<_i1060.AuthLocalRepository>()));
    gh.lazySingleton<_i104.AppSettingsLocalRepository>(() =>
        _i200.AppSettingsLocalRepositoryImpl(
            appSettingsLocalDataSource:
                gh<_i306.AppSettingsLocalDataSource>()));
    gh.singleton<_i336.AuthUseCases>(() => _i336.AuthUseCases(
          gh<_i870.AuthRepository>(),
          gh<_i1060.AuthLocalRepository>(),
        ));
    gh.singleton<_i531.AppSettingsUseCases>(() =>
        _i531.AppSettingsUseCases(gh<_i104.AppSettingsLocalRepository>()));
    gh.factory<_i132.ProfileCubit>(
        () => _i132.ProfileCubit(gh<_i772.ProfileUseCases>()));
    gh.factory<_i987.HomeCubit>(
        () => _i987.HomeCubit(gh<_i179.HomeUseCases>()));
    gh.singleton<_i910.AuthNotifier>(
        () => _i910.AuthNotifier(authUseCases: gh<_i772.AuthUseCases>()));
    return this;
  }
}

class _$RegisterModule extends _i823.RegisterModule {}
