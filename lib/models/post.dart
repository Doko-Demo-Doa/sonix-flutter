class Post {
  int id;
  int guid;
  String title;
  String excerpt;

  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        guid = json['guid'],
        title = json['title']['rendered'],
        excerpt = json['excerpt']['rendered'];

  Map<String, dynamic> toJson() => {
    'id': id, 'guid': guid, 'title': title, 'excerpt': excerpt
  };
}
