import 'package:anivsub/core/base/base.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_event.dart';
part 'watch_state.dart';
part 'watch_bloc.freezed.dart';

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
