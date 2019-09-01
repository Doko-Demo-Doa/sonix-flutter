import 'dart:convert';

class Post {
  int id;
  String title;
  String excerpt;
  String image;

  Post({this.id, this.title, this.excerpt, this.image});

  static List<Post> fromJsonArray(String jsonArray) {
    Iterable rawList = json.decode(jsonArray);
    return rawList.map((p) => Post.fromJson(p)).toList();
  }

  factory Post.fromJson(dynamic json) {
    return new Post(
      id: json['id'],
      title: json['title'],
      excerpt: json['excerpt'],
      image: json['jetpack_featured_media_url']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id, 'title': title, 'excerpt': excerpt, 'jetpack_featured_media_url': image
  };
}
