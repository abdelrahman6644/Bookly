import 'package:bookly_app/Features/home/presentation/views/widgets/book_title.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/price_and_rating_book.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
  });

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
              Imageurl: Assets.test_image,
              height: 125,
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
                    const BookTitle(),
                    const SizedBox(height: 3),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.titleStyle14,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          '19.99 \$',
                          style: Styles.titleStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        const RatingBook(),
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
