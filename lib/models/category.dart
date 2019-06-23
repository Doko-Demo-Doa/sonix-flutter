class Category {
  String currency;
  int id;
  int guid;
  String title;

  Category.fromJson(Map<String, dynamic> json):
    id = json['id'],
    guid = json['guid'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'guid': guid
  };
}
