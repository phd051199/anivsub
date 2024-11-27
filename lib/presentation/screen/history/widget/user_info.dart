import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/extension.dart';
import '../../../../shared/shared_exports.dart';
import '../../login/view/login_screen.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, this.user});
  final UserSessionResponseEntity? user;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(Dimens.d16.responsive()),
        child: Row(
          children: [
            _buildAvatar(context),
            Gap(Dimens.d16.responsive()),
            Expanded(
              child: user?.id != null
                  ? _buildUserInfo(context)
                  : _buildLoginButton(context),
            ),
            if (user?.id != null) _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: context.theme.colorScheme.surfaceContainer,
      backgroundImage: user?.image != null
          ? CachedNetworkImageProvider(user?.image ?? '')
          : null,
      child: user?.image == null ? const Icon(Icons.person, size: 32) : null,
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          user?.username ?? '',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
        ),
        Gap(Dimens.d4.responsive()),
        Text(
          user?.email ?? '',
          style: context.textTheme.titleMedium?.copyWith(
            color: context.theme.colorScheme.onSurfaceVariant.withOpacity(0.8),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const LoginScreen(),
          isScrollControlled: true,
          constraints: BoxConstraints(
            maxHeight: context.screenSize.height * 0.4,
          ),
        );
      },
      child: ListTile(
        title: Text(
          S.current.login,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: Dimens.d4.responsive()),
          child: Text(
            S.current.loginMessage,
            style: context.textTheme.titleMedium?.copyWith(
              color:
                  context.theme.colorScheme.onSurfaceVariant.withOpacity(0.8),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return IconButton(
      onPressed: authNotifier.doLogout,
      icon: Icon(
        Icons.logout,
        color: context.theme.colorScheme.error,
      ),
    );
  }
}
