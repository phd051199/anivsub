import 'package:anivsub/core/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chewie_player_cubit.freezed.dart';
part 'chewie_player_state.dart';

@injectable
class ChewiePlayerCubit extends BaseCubit<ChewiePlayerState> {
  ChewiePlayerCubit() : super(ChewiePlayerInitial());

  void load() {
    emit(ChewiePlayerLoading());
    // Add your loading logic here
    emit(ChewiePlayerLoaded());
  }

  void error() {
    emit(ChewiePlayerError('An error occurred'));
  }
}
