

import 'package:dio/dio.dart';

import '../../common/constants/api_constants.dart';

class ApiClient {
  final Dio dio = Dio();

  BaseOptions options = BaseOptions(
    baseUrl: ApiConstants.BASE_URL,
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
    headers: {"Content-Type": "application/json"},
  );

  Dio getDio() {
    dio.options = options;
    dio.interceptors.add(LogInterceptor(error: true, requestBody: true, responseBody: true));
    return dio;
  }
}