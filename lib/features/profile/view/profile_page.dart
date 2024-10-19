import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/utils/image_url_utils.dart';
import 'package:anivsub/core/utils/string_utils.dart';
import 'package:anivsub/features/profile/profile.dart';
import 'package:anivsub/features/shared/error_dialog.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
      builder: (context, state) => SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            context.read<ProfileCubit>().getUser();
            return Future.value();
          },
          child: switch (state) {
            ProfileInitial() || ProfileLoading() => const LoadingWidget(),
            ProfileLoaded() => CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: CachedNetworkImageProvider(
                              state.user.image ?? '',
                            ),
                          ),
                          const Gap(16),
                          Text(
                            '${state.user.firstName ?? ''} ${state.user.lastName ?? ''}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(8),
                          Text(
                            state.user.email ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final groupedHistory = groupHistoryByDate(
                          state.queryHistory as List<dynamic>,
                        );
                        final date = groupedHistory.keys.elementAt(index);
                        final items = groupedHistory[date]!;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                formatTimestamp(date, withTime: false),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ...items.map(
                              (e) => e is Map<String, dynamic>
                                  ? GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                          ScreenNames.watch,
                                          queryParameters: {
                                            'path': '/phim/${e['season']}/',
                                          },
                                        );
                                      },
                                      child: ListTile(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        leading: AspectRatio(
                                          aspectRatio: 16 / 9,
                                          child: Container(
                                            width: 100,
                                            clipBehavior: Clip.hardEdge,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  ImageUrlUtils.addHostUrlImage(
                                                e['poster'] ?? '',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        title: Text(
                                          '${e['name']?.toString()}\n${e['season_name']} Tập ${e['watch_name']?.toString()}',
                                          style: const TextStyle(fontSize: 14),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        subtitle: Text(
                                          formatTimestamp(e['created_at']),
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ),
                          ],
                        );
                      },
                      childCount: groupHistoryByDate(
                        state.queryHistory as List<dynamic>,
                      ).length,
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

Map<DateTime, List<dynamic>> groupHistoryByDate(List<dynamic> history) {
  final groupedMap = <DateTime, List<dynamic>>{};
  for (var item in history) {
    if (item is Map<String, dynamic>) {
      final date = DateTime.parse(item['created_at']).toLocal();
      final dateWithoutTime = DateTime(date.year, date.month, date.day);
      groupedMap.putIfAbsent(dateWithoutTime, () => []).add(item);
    }
  }
  return Map.fromEntries(
    groupedMap.entries.toList()..sort((a, b) => b.key.compareTo(a.key)),
  );
}

final RegExp rSpace = RegExp(r' ');

String removeAccents(String input) {
  final accentedCharacters = {
    'à': 'a',
    'á': 'a',
    'â': 'a',
    'ã': 'a',
    'ä': 'a',
    'å': 'a',
    'è': 'e',
    'é': 'e',
    'ê': 'e',
    'ë': 'e',
    'ì': 'i',
    'í': 'i',
    'î': 'i',
    'ï': 'i',
    'ò': 'o',
    'ó': 'o',
    'ô': 'o',
    'õ': 'o',
    'ö': 'o',
    'ù': 'u',
    'ú': 'u',
    'û': 'u',
    'ü': 'u',
    'ý': 'y',
    'ÿ': 'y',
    'ñ': 'n',
  };

  return input
      .toLowerCase()
      .split('')
      .map((char) => accentedCharacters[char] ?? char)
      .join('');
}

String parseChapName(String chapName) {
  return 'tap-${removeAccents(chapName)}'.toLowerCase().replaceAll(rSpace, '-');
}
