import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_app_bar_book_view.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    const CustomAppBarBookView(),
                    BookDetailsSection(
                      width: width,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: Styles.titleStyle14
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              const SimilarBooksListView(),
            ],
          ),
        )
      ],
    );
  }
}
