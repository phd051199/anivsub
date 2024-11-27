import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../widget/anime/anime_list.dart';
import '../watch.dart';

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
