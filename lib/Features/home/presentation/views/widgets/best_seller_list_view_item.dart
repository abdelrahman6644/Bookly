import 'package:bookly_app/Features/home/presentation/manager/cubits/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: BookListViewItem(bookModel: state.books[index],),
                  );
                });
          } else if (state is NewestBooksFailure) {
            return ErrorMessage(
              errorMessage: state.errorMessage,
            );
          } else {
            return const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
