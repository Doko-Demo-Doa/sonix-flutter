import 'dart:convert';

class Post {
  int id;
  String title;
  String excerpt;

  Post({this.id, this.title, this.excerpt});

  static List<Post> fromJsonArray(String jsonArray) {
    Iterable rawList = json.decode(jsonArray);
    return rawList.map((p) => Post.fromJson(p)).toList();
  }

  factory Post.fromJson(dynamic json) {
    return new Post(
      id: json['id'],
      title: json['title'],
      excerpt: json['excerpt'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id, 'title': title, 'excerpt': excerpt
  };
}
