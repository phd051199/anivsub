import 'package:anivsub/core/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'video_player_cubit.freezed.dart';
part 'video_player_state.dart';

@singleton
class VideoPlayerCubit extends BaseCubit<VideoPlayerState> {
  VideoPlayerCubit() : super(VideoPlayerInitial());

  void load() {
    emit(VideoPlayerLoading());
    // Add your loading logic here
    emit(VideoPlayerLoaded());
  }

  void error() {
    emit(VideoPlayerError('An error occurred'));
  }
}
