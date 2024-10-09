import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures({required this.errorMessage});
}

class SeverFilure extends Failures {
  SeverFilure({required super.errorMessage});
  factory SeverFilure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return SeverFilure(errorMessage: "Connection timed out");
      case DioExceptionType.sendTimeout:
        return SeverFilure(errorMessage: "send  timed out");
      case DioExceptionType.receiveTimeout:
        return SeverFilure(errorMessage: "receivee timed out");
      case DioExceptionType.badCertificate:
        return SeverFilure(errorMessage: "Request was bad Certificate");
      case DioExceptionType.badResponse:
        return SeverFilure(errorMessage: "Bad Response");
      case DioExceptionType.cancel:
        return SeverFilure(errorMessage: "Connection Cancel");
      case DioExceptionType.connectionError:
        return SeverFilure(errorMessage: "Connection Error");
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return SeverFilure(errorMessage: "No Internet Connection");
        } else {
          return SeverFilure(
              errorMessage: "Unexpected Error, Please try again Later");
        }
    default:
     return SeverFilure(
              errorMessage: "Unexpected Error, Please try again Later");
    }
  }
}
