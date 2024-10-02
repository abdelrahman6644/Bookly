import 'package:flutter/material.dart';

class ShowPoster extends StatelessWidget {
  ShowPoster({
    super.key,
    required this.Imageurl,
    required this.height,
  });
  String? Imageurl;
  final double height;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(Imageurl!), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
