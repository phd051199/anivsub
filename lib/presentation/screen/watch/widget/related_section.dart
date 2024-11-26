import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/widget/anime/anime_list.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedSection extends StatelessWidget {
  const RelatedSection({
    super.key,
    required this.onTap,
  });
  final Function(AnimeDataEntity) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.d12.responsive()),
      child: AnimeList(
        movies: context.watch<WatchBloc>().state.detail?.toPut ?? [],
        onTap: onTap,
      ),
    );
  }
}
