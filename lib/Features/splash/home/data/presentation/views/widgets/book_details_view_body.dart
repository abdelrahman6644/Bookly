import 'package:bookly_app/Features/splash/home/data/presentation/views/widgets/custom_app_bar_book_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomAppBarBookView(),
          
        ],
      ),
    );
  }
}
