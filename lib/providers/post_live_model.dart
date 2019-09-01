import 'package:flutter/widgets.dart';
import 'package:sonix/api/api_post.dart';
import 'package:sonix/models/post.dart';

/// Post live model
class PostLiveModel with ChangeNotifier {
  List<Post> _posts = [];

  getPosts() => _posts;

  setPosts(List<Post> posts) => _posts = posts;

  /// Get the posts from repository.
  Future<List<Post>> fetchPosts ({page = 0, perPage = 30}) async {
    var results = await ApiPost.getRecentPosts(page, perPage);
    if (results.length > 0) {
      _posts.addAll(results);
      notifyListeners();
    }
    return results;
  }
}
