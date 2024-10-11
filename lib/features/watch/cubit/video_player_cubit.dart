import 'package:anivsub/core/base/base.dart';
import 'package:better_player/better_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'video_player_cubit.freezed.dart';
part 'video_player_state.dart';

@injectable
class VideoPlayerCubit extends BaseCubit<VideoPlayerState> {
  VideoPlayerCubit() : super(const VideoPlayerInitial());
  BetterPlayerController? betterPlayerController;

  void initializePlayer({required BetterPlayerController controller}) {
    betterPlayerController = controller;
    emit(const VideoPlayerLoaded());
  }

  void load() {
    emit(const VideoPlayerLoading());
    // Add your loading logic here
    emit(const VideoPlayerLoaded());
  }

  void error() {
    emit(const VideoPlayerError('An error occurred'));
  }
}
