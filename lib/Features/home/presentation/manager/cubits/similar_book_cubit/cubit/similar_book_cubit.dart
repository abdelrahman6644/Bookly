import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
        (failure) =>
            emit(SimilarBookFailure(errorMessage: failure.errorMessage)),
        (books) => emit(SimilarBookSuccess(books)));
  }
}
