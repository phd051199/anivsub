// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocSafety<Event, State> on Bloc<Event, State> {
  void safeEmit(State state) {
    if (isClosed) return;
    emit(state);
  }
}

extension CubitSafely<State> on Cubit<State> {
  void safeEmit(State state) {
    if (isClosed) return;
    emit(state);
  }
}
