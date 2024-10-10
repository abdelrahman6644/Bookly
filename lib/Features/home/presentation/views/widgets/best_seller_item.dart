import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_title.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/price_and_rating_book.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  BookListViewItem({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ShowPoster(
              Imageurl: bookModel.thumbnail,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookTitle(
                      bookTitle: bookModel.title ?? '',
                    ),
                    const SizedBox(height: 3),
                    Text(
                      bookModel.authors!.isEmpty ? "" : bookModel.authors![0],
                      style: Styles.titleStyle14,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          'FREE',
                          style: Styles.titleStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        YearPulplishedAndPages(
                          yearPublished: bookModel.publishedDate!,
                          bookPages: bookModel.pageCount!,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
