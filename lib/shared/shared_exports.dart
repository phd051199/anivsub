import 'package:cookie_jar/cookie_jar.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../app/notifier/auth_notifier.dart';
import '../app/theme/cubit/theme_cubit.dart';
import '../data/data_exports.dart';
import '../presentation/screen/watch/widget/cubit/video_player_cubit.dart';
import 'plugin/plugin.dart';
import 'services/service.dart';

AuthNotifier get authNotifier => GetIt.I<AuthNotifier>();

SharedPreferenceService get sharedPreferenceService =>
    GetIt.I<SharedPreferenceService>();
FlutterSecureStorageService get flutterSecureStorageService =>
    GetIt.I<FlutterSecureStorageService>();
CookieJar get cookieJar => GetIt.I<CookieJar>();
DHA get dha => GetIt.I<DHA>();
FbApiClient get fbApiClient => GetIt.I<FbApiClient>();
Logger get log => GetIt.I<Logger>();

ThemeCubit get themeCubit => GetIt.I<ThemeCubit>();
VideoPlayerCubit get videoPlayerCubit => GetIt.I<VideoPlayerCubit>();
String get getItHost => GetIt.I.get<String>(instanceName: 'HOST_CURL');
