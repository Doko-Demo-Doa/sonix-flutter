import 'dart:convert';

class Post {
  int id;
  String title;
  String excerpt;
  String content;
  String image;

  Post({this.id, this.title, this.excerpt, this.content, this.image});

  static List<Post> fromJsonArray(String jsonArray) {
    Iterable rawList = json.decode(jsonArray);
    return rawList.map((p) => Post.fromJson(p)).toList();
  }

  factory Post.fromJson(dynamic json) {
    return new Post(
      id: json['id'],
      title: json['title'],
      excerpt: json['excerpt'],
      content: json['content'],
      image: json['jetpack_featured_media_url']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id, 'title': title, 'excerpt': excerpt, 'content': content, 'jetpack_featured_media_url': image
  };
}
