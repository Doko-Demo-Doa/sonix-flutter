
import 'package:sonix/api/api.dart';

class ApiPost {
  static Future getRecentPosts (int page, int perPage) {
    return ApiClient.getUrl("/posts/?page=$page&per_page=$perPage");
  }
}