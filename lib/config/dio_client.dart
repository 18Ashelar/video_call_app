import 'dart:io';
import 'package:dio/dio.dart';

class DioClient {
  late Dio _dio;

  DioClient() {
    Map<String, String> headersMap = {};
    headersMap[HttpHeaders.contentTypeHeader] = 'application/json';
    headersMap['token'] = '';

    BaseOptions options = BaseOptions(
      baseUrl: '',
      connectTimeout: const Duration(seconds: 90),
      responseType: ResponseType.json,
      headers: headersMap,
    );

    _dio = Dio(options);
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  Dio get dio => _dio;
}
