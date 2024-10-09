import 'package:bookly_app/Features/home/data/models/book%20model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utls/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService _apiService;
  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(endPoint: 'programming');
      List<BookModel> books = [];
      data['items'].forEach((element) {
        books.add(BookModel.fromJson(element));
      });
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(SeverFilure.fromDioException(e));
      }
      return left(SeverFilure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
