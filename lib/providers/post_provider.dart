import 'package:flutter/widgets.dart';
import 'package:sonix/models/post.dart';

class PostProvider with ChangeNotifier {
  List<Post> _posts;

  getPosts() => _posts;

  setPosts(List<Post> posts) => _posts = posts;

  void fetchPosts ({page = 0, perPage = 30}) {
    
  }
}
