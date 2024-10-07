import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_state.dart';
part 'base_event.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends Bloc<E, S> {
  BaseBloc(super.initialState);
}
