import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/price_and_rating_book.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: ShowPoster(
            Imageurl: Assets.test_image,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.titleStyle30.copyWith(fontWeight: FontWeight.w400),
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
        const YearPulplishedAndPages(yearPublished: '', bookPages: 11,),
        const BooksAction(),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
