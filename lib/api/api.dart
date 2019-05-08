import 'package:dio/dio.dart';

class ApiClient {
  static String baseUrl = 'https://sonixgvn.net/';
  static final defaultPort = 80;

  static BaseOptions options = new BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  static Dio _httpClient = new Dio(options);

  static getUrl(String endpoint) async {
    Response response = await _httpClient.get(endpoint);
    return response;
  }
}
