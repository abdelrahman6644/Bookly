import 'package:bookly_app/Features/home/data/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewInRow extends StatelessWidget {
  const ViewInRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 8),
      child: SizedBox(
        height: 240,
        child: SizedBox(
          height: 240,
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ShowPoster(
                    Imageurl: Assets.test_image,
                    height: 240,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
