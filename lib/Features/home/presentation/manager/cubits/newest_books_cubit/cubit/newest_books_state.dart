part of 'newest_books_cubit.dart';

sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  NewestBooksFailure(this.errorMessage);
}
final class NewestBooksSuccess extends NewestBooksState {
  List<BookModel> books;
  NewestBooksSuccess(this.books);
}