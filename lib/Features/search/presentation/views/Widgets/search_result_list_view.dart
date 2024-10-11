import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: ListView.builder(
          
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BookListViewItem(bookModel: testBookModel,),
            );
          }),
    );
  }
}
