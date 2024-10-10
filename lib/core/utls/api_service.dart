import 'package:bookly_app/constant.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://www.googleapis.com/books/v1/volumes?key=$apiKey";
  final Dio _dio;
  ApiService(this._dio);
// filter=free-ebooks&
  Future<Map<String, dynamic>> get  ({required String endPoint})async{
   var response = await _dio.get(_baseUrl+endPoint);
   return response.data;
  }
}