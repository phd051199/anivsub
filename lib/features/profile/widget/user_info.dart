import 'package:anivsub/domain/domain_exports.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.user});
  final UserSessionResponseEntity user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: CachedNetworkImageProvider(
              user.image ?? '',
            ),
          ),
          const Gap(16),
          Text(
            user.username ?? '',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          Text(
            user.email ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
