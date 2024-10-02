import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_app_bar_book_view.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomAppBarBookView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: ShowPoster(
              Imageurl: Assets.test_image,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
