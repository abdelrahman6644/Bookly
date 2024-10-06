import 'package:bookly_app/Features/home/data/Models/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures,List<BookModel>>> fetchFeatureBooks();
}
