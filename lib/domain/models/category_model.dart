class Category {
  static final categories = [
    Category(id: "01", name: "Computer", description: "", createdAt: DateTime.now().toIso8601String(), modifyAt: DateTime.now().toIso8601String(), imageUrl: "https://img.icons8.com/?size=512&id=9913&format=png"),
  ];

  static Category fromString(String category) {
    final list = categories.where((element) => element.name == category);
    if(list.isEmpty) {
      return categories.first;
    } else {
      return list.first;
    }
  }



  String id;
  String name;
  String description;
  String createdAt;
  String modifyAt;
  String imageUrl;

  Category(
      {required this.id,
        required this.name,
        required this.description,
        required this.createdAt,
        required this.modifyAt,
        required this.imageUrl});

  factory Category.fromJson(Map<String, Object?> json) => Category(
    id: json["id"] as String,
    name: json["name"] as String,
    description: json["description"] as String,
    createdAt: json["createdAt"] as String,
    modifyAt: json["modifyAt"] as String,
    imageUrl: json["imageUrl"] as String,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "createdAt": createdAt,
    "modifyAt": modifyAt,
    "imageUrl": imageUrl,
  };

  @override
  String toString() {
    return 'Category{id: $id, name: $name, description: $description, createdAt: $createdAt, modifyAt: $modifyAt, imageUrl: $imageUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Category &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              description == other.description &&
              createdAt == other.createdAt &&
              modifyAt == other.modifyAt &&
              imageUrl == other.imageUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      createdAt.hashCode ^
      modifyAt.hashCode ^
      imageUrl.hashCode;
}



