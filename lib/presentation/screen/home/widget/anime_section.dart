import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/home/widget/section_header.dart';
import 'package:anivsub/presentation/widget/anime_list.dart';
import 'package:flutter/material.dart';

class AnimeSection extends StatelessWidget {
  const AnimeSection({super.key, required this.title, required this.movies});
  final String title;
  final List<AnimeDataEntity> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: title),
        AnimeList(movies: movies),
      ],
    );
  }
}
