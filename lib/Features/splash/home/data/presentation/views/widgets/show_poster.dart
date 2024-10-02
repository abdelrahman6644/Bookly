import 'package:bookly_app/core/utls/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShowPoster extends StatelessWidget {
  ShowPoster({
    super.key,
    required this.Imageurl,
    required this.height,
    required this.width,
  });
  String? Imageurl;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookView);
      },
      child: Container(
        width: width,
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
