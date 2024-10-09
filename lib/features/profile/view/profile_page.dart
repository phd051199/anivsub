import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/features/profile/profile.dart';
import 'package:anivsub/features/shared/error_dialog.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

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
              context: context, title: 'Error', message: state.message,);
        }
      },
      builder: (context, state) => SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            context.read<ProfileCubit>().getUser();
            return Future.value();
          },
          child: switch (state) {
            ProfileInitial() || ProfileLoading() => const LoadingWidget(
                isTransparent: true,
              ),
            ProfileLoaded() => CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                NetworkImage(state.user.image ?? ''),
                          ),
                          const Gap(16),
                          Text(
                            '${state.user.firstName} ${state.user.lastName}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(8),
                          Text(
                            '${state.user.company?.title}\n@${state.user.company?.name}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const Gap(24),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              context.l10n.contacts,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.user.email ?? ''),
                                Text(state.user.phone ?? ''),
                                Text(state.user.university ?? ''),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            _ => Container(),
          },
        ),
      ),
    );
  }
}
