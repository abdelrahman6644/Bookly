part of 'feature_book_cubit.dart';

@immutable
sealed class FeatureBookState {}

final class FeatureBookInitial extends FeatureBookState {}

final class FeatureBookLoading extends FeatureBookState {}

final class FeatureBookSuccess extends FeatureBookState {
  final List<BookModel> books;

  FeatureBookSuccess({required this.books});
}

final class FeatureBookFailure extends FeatureBookState {
  final String errorMessage;

  FeatureBookFailure({required this.errorMessage});
}
