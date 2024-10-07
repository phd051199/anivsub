import 'package:anivsub/core/base/base.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'watch_event.dart';
import 'watch_state.dart';

@injectable
class WatchBloc extends BaseBloc<WatchEvent, WatchState> {
  WatchBloc() : super(WatchInitial()) {
    on<LoadWatch>(_onLoadWatch);
    on<ErrorWatch>(_onErrorWatch);
  }

  void _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) {
    emit(WatchLoaded());
  }

  void _onErrorWatch(ErrorWatch event, Emitter<WatchState> emit) {
    emit(WatchError('An error occurred'));
  }
}
