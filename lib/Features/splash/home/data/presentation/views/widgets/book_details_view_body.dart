import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_app_bar_book_view.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/price_and_rating_book.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomAppBarBookView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.20),
                child: ShowPoster(
                  Imageurl: Assets.test_image,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                'The Jungle Book',
                style:
                    Styles.titleStyle30.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.titleStyle18.copyWith(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const RatingBook(),
              const BooksAction(),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style:
                      Styles.titleStyle14.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
