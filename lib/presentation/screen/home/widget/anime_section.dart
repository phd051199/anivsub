import 'package:flutter/material.dart';

import '../../../../domain/domain_exports.dart';
import '../../../widget/anime/anime_list.dart';
import 'section_header.dart';

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
