import 'package:anivsub/app/notifier/auth_notifier.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/plugin/plugin.dart';
import 'package:anivsub/core/service/service.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/presentation/screen/watch/cubit/video_player_cubit.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:get_it/get_it.dart';

Environment get environment => GetIt.I<Environment>();
AuthNotifier get authNotifier => GetIt.I<AuthNotifier>();

SharedPreferenceService get sharedPreferenceService =>
    GetIt.I<SharedPreferenceService>();
FlutterSecureStorageService get flutterSecureStorageService =>
    GetIt.I<FlutterSecureStorageService>();
CookieJar get cookieJar => GetIt.I<CookieJar>();
DHA get dha => GetIt.I<DHA>();
FbApiClient get fbApiClient => GetIt.I<FbApiClient>();
VideoPlayerCubit get videoPlayerCubit => GetIt.I<VideoPlayerCubit>();
