import 'dart:async';
import 'package:dio/dio.dart';

class HttpService {
  final Dio _client = Dio();

  Future<Response> get({
    required String endpoint,
    Map<String, dynamic>? arguments,
  }) async {
    try {
      return await _client.get(
        endpoint,
        queryParameters: arguments,
      );
    } catch (error) {
      rethrow;
    }
  }
}
