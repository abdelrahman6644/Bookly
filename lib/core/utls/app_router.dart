import 'package:bookly_app/Features/splash/home/data/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/Features/splash/home/data/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSplashView = '/';
  static const kBookView = '/bookView';

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
      builder: (context, state) => const BookDetailesView(),
    ),
  ],
);
}