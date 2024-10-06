import 'package:bookly_app/constant.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://www.googleapis.com/books/v1/volumes?filter=free-ebooks&key=$apiKey&filters=";
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get  ({required String endPoint})async{
   var response = await dio.get('${_baseUrl+endPoint}');
   return response.data;
  }
}