import 'dart:convert';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:crypto/crypto.dart';
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
    final response = await profileUseCases.getUser();

    final userUid = sha256
        .convert(utf8.encode(response.email! + response.lastName!))
        .toString();

    final result = await Supabase.instance.client.rpc(
      'query_history',
      params: {
        'user_uid': userUid,
        'page': 1,
        'size': 30,
      },
    );

    emit(
      ProfileLoaded(
        user: response,
        queryHistory: result,
      ),
    );
  }
}
