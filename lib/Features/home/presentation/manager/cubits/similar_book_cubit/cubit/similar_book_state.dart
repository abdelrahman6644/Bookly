part of 'similar_book_cubit.dart';

@immutable
sealed class SimilarBookState {}

final class SimilarBookInitial extends SimilarBookState {}
final class SimilarBookLoading extends SimilarBookState {}
final class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> books;
  SimilarBookSuccess(this.books);
}
final class SimilarBookFailure extends SimilarBookState {
  String errorMessage;
  SimilarBookFailure({required this.errorMessage});
}
