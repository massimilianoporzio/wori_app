import 'package:dio/dio.dart';

Dio buildDioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

  dio.interceptors.addAll([
    // TokenInterceptor(),
    // DioLogInterceptor(),
    // LoggyDioInterceptor(); //esempi
  ]);
}
