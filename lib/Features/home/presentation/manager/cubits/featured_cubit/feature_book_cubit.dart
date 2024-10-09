import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks()  async{
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) => emit(FeatureBookFailure(errorMessage: failure.errorMessage)), 
    (books) => emit(FeatureBookSuCcess(books: books)));
  }
}
