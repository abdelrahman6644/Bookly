import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/price_and_rating_book.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection(
      {super.key, required this.width, required this.bookModel});
  final double width;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: ShowPoster(
            Imageurl: bookModel.thumbnail,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.title ?? '',
          style: Styles.titleStyle30.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.authors![0],
            style: Styles.titleStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        YearPulplishedAndPages(
          yearPublished: bookModel.publishedDate!.substring(0, 4),
          bookPages: bookModel.pageCount ?? 0,
        ),
        const BooksAction(),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
