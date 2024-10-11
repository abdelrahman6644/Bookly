import 'package:bookly_app/Features/home/presentation/manager/cubits/featured_cubit/feature_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/show_poster.dart';
import 'package:bookly_app/core/utls/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  // late var feature;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 30, top: 8),
        child: SizedBox(
          height: 240,
          child: BlocBuilder<FeatureBookCubit, FeatureBookState>(
            builder: (context, state) {
              if (state is FeatureBookSuccess) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kBookView, extra: state.books[index]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ShowPoster(
                          Imageurl: state.books[index].thumbnail,
                        ),
                      ),
                    );
                  },
                );
              } else if (state is FeatureBookFailure) {
                return ErrorMessage(
                  errorMessage: state.errorMessage,
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ));
  }
}
