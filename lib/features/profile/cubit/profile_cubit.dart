import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileState> {
  ProfileCubit(
    this.profileUseCases,
    this.authUseCases,
  ) : super(const ProfileInitial()) {
    getUser();
  }

  final ProfileUseCases profileUseCases;
  final AuthUseCases authUseCases;

  Future<void> getUser() async {
    emit(const ProfileLoading());

    final authUser = await authUseCases.getLocalUserSession();
    final queryHistory = await Supabase.instance.client.rpc(
      'query_history',
      params: {
        'user_uid': authUser.id,
        'page': 1,
        'size': 30,
      },
    );

    emit(
      ProfileLoaded(
        user: authUser,
        queryHistory: queryHistory,
      ),
    );
  }
}
