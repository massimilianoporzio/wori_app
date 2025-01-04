import 'package:dio/dio.dart';

part 'rest_client.g.dart';

abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //TODO: here add REST as abstract methods
}
