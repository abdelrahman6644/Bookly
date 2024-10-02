import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 130,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookView);
              },
              child: Padding(
                padding: EdgeInsets.only(left: index == 0 ? 30 : 10),
                child: ShowPoster(
                  Imageurl: Assets.test_image,
                  height: 130,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
