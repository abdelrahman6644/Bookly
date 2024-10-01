import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_list_view.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ViewInRow(),
          SizedBox(
            height: 20,
          ),
          Text("Best Saller", style: Styles.titleStyle18),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 110,
          child: Row(
            children: [
              ShowPoster(
                Imageurl: Assets.test_image,
                height: 110,
                width: 70,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
