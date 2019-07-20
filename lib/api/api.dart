import 'package:dio/dio.dart';

class ApiClient {
  static String baseUrl = 'https://sonixgvn.net/wp-json/wp/v2';
  static final defaultPort = 80;

  static BaseOptions options = new BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  static Dio _httpClient = new Dio(options);

  static Future<Response> getUrl(String endpoint) {
    return _httpClient.get(endpoint);
  }
}
