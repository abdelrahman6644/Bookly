import 'package:bookly_app/Features/home/presentation/manager/cubits/similar_book_cubit/cubit/similar_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatefulWidget {
  const SimilarBooksListView({super.key});

  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}

class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 130,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<SimilarBookCubit, SimilarBookState>(
          builder: (context, state) {
            if(state is SimilarBookSuccess) {
              return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookView, extra: state.books[index]);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 30 : 10),
                    child: ShowPoster(
                      Imageurl: state.books[index].thumbnail,
                    ),
                  ),
                );
              },
            );
            }else if(state is SimilarBookFailure){
              return ErrorMessage(errorMessage:state.errorMessage,);
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
