import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class SuggestionImage extends StatelessWidget {
  const SuggestionImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: CachedNetworkImage(imageUrl: imageUrl),
    );
  }
}
