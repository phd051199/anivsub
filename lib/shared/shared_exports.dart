import 'package:anivsub/app/notifier/auth_notifier.dart';
import 'package:anivsub/app/theme/cubit/theme_cubit.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/presentation/screen/watch/widget/cubit/video_player_cubit.dart';
import 'package:anivsub/shared/plugin/plugin.dart';
import 'package:anivsub/shared/services/service.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

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
