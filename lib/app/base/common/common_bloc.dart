import 'package:anivsub/app/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

@injectable
class CommonBloc extends BaseBloc<CommonEvent, CommonState> {
  CommonBloc() : super(const CommonState());
}
