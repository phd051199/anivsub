import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/presentation/screen/profile/profile.dart';
import 'package:anivsub/presentation/screen/profile/widget/profile_content.dart';
import 'package:anivsub/presentation/widget/error_dialog.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends CubitState<ProfilePage, ProfileCubit> {
  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileError) {
          ErrorDialog.showErrorDialog(
            context: context,
            title: 'Error',
            message: state.message,
          );
        }
      },
      builder: (context, state) => RefreshIndicator(
        onRefresh: cubit.getUser,
        child: switch (state) {
          ProfileInitial() || ProfileLoading() => const LoadingWidget(),
          ProfileLoaded() => const ProfileContent(),
          _ => Container(),
        },
      ),
    );
  }
}


