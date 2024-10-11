import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/manager/cubits/similar_book_cubit/cubit/similar_book_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utls/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSplashView = '/';
  static const kBookView = '/bookView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>(),),),
            // BlocProvider(create: (context) => ),
          ],
          child: BookDetailesView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
