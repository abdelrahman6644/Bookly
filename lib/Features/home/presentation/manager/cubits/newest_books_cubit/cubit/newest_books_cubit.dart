import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
    final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()  async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) => emit(NewestBooksFailure(failure.errorMessage)), 
    (books) => emit(NewestBooksSuccess(books)));
  }
}
