import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowPoster extends StatelessWidget {
  ShowPoster({
    super.key,
    required this.Imageurl,
  });
  String? Imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: AspectRatio(
        aspectRatio: 2.4 / 4,
        child: CachedNetworkImage(
          imageUrl: Imageurl!,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}

