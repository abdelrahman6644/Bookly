import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: BestSellerItem(),
            );
          }),
    );
  }
}

class BookTitle extends StatelessWidget {
  const BookTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Text(
        "Harry Potter and the Golbet of Fire",
        style: Styles.titleStyle20.copyWith(fontFamily: kGtSectraFine),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
