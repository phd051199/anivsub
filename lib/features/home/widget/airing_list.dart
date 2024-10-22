import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/home/widget/movie_card.dart';
import 'package:flutter/material.dart';

class AiringList extends StatelessWidget {
  const AiringList({super.key, required this.movies});
  final List<AnimeDataEntity> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) => MovieCard(movie: movies[index]),
      ),
    );
  }
}
