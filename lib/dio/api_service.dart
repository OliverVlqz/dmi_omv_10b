import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 4),
    ),
  );
  Future<List<dynamic>> getPosts() async {
    try {
      final response = await _dio.get('/posts');
      return response.data;
    } catch (e) {
      throw Exception('Error al obtener los posts: $e');
      return [];
    }
  }
}
