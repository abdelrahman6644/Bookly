import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_list_view.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/price_and_rating_book.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
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
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookTitle(),
                    SizedBox(height: 3),
                    Text(
                      'J.K. Rowling',
                      style: Styles.titleStyle14,
                    ),
                    SizedBox(height: 3),
                    PriceAndRatingBook()
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
