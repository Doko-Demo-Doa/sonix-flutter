import 'package:dio/dio.dart';

import 'package:sonix/api/api.dart';
import 'package:sonix/models/post.dart';

class ApiPost {
  static Future<List<Post>> getRecentPosts(int page, int perPage) async {
    Response resp =
        await ApiClient.getUrl("/posts/?page=$page&per_page=$perPage");
    List<Post> results = [];
    resp.data.forEach((json) => {
          results.add(new Post(
              id: json['id'],
              title: json['title']['rendered'],
              excerpt: json['excerpt']['rendered'],
              image: json['jetpack_featured_media_url']))
        });
    return results;
  }
}
