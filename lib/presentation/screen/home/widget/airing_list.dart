import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/home/widget/anime_card.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:flutter/material.dart';

class AiringList extends StatelessWidget {
  const AiringList({super.key, required this.movies});
  final List<AnimeDataEntity> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.d180.responsive(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) => AnimeCard(movie: movies[index]),
      ),
    );
  }
}
