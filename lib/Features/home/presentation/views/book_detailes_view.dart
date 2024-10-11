import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manager/cubits/similar_book_cubit/cubit/similar_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).fetchSimilarBooks(category: widget.bookModel.categories!.isEmpty ? "general":widget.bookModel.categories![0]);
    // BlocProvider.of<>(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : BookDetailsViewBody(bookModel: widget.bookModel,),
      ),
    );
  }
}
