import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileState> {
  ProfileCubit(this.profileUseCases) : super(const ProfileInitial()) {
    getUser();
  }

  final ProfileUseCases profileUseCases;

  Future<void> getUser() async {
    emit(const ProfileLoading());
    final results = await Future.wait([
      profileUseCases.getUser(),
      Future(
        () => Supabase.instance.client.rpc(
          'query_history',
          params: {
            'user_uid':
                'a3aaca2af18b3e54a02c1cfb727028935cca230889afe8b17cf4b3d9f3b66111',
            'page': 1,
            'size': 30,
          },
        ),
      ),
    ]);
    final UserEntity user = results.first;
    final List<dynamic> queryHistory = results.last;

    emit(
      ProfileLoaded(
        user: user,
        queryHistory: queryHistory,
      ),
    );
  }
}
