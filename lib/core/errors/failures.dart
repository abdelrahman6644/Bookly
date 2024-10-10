import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures({required this.errorMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timed out");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "send  timed out");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "receivee timed out");
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: "Request was bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure(errorMessage: "Bad Response");
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Connection Cancel");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "Connection Error");
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: "No Internet Connection");
        } else {
          return ServerFailure(
              errorMessage: "Unexpected Error, Please try again Later");
        }
    default:
     return ServerFailure(
              errorMessage: "Unexpected Error, Please try again Later");
    }
  }
}
