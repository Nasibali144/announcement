import 'category_model.dart';

class Announcement implements Comparable<Announcement> {
  String id;
  String name;
  String desc;
  String createdAt;
  String modifyAt;
  // List<String> images;
  Category category;
  double price;
  bool isFavorite;
  String phone;
  // User user;


  Announcement({
    required this.id,
    required this.name,
    required this.desc,
    required this.createdAt,
    required this.modifyAt,
    // required this.images,
    required this.category,
    required this.price,
    required this.isFavorite,
    required this.phone,
    // required this.user,
  });

  factory Announcement.fromJson(Map<String, Object?> json) => Announcement(
        id: json["id"] as String,
        name: json["name"] as String,
        desc: json["desc"] as String,
        createdAt: json["createdAt"] as String,
        modifyAt: json["modifyAt"] as String,
        // images: json["images"] as List<String>,
        phone: json["phone"] as String,
        // user: ConvertUser.fromJson(json["user"] as Map<String, Object?>),
        category: Category.fromJson(Map<String, Object?>.from(json["category"] as Map)),
        price: (json["price"] as num).toDouble(),
        isFavorite: json["isFavorite"] as bool,

      );

  Map<String, Object?> toJson() => {
        "id": id,
        "name": name,
        "desc": desc,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        // "images": images,
        "category": category.toJson(),
        "price": price,
        "isFavorite": isFavorite,
    "phone": phone,
    // "user": user.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Announcement &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          desc == other.desc &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          // images == other.images &&
          category == other.category &&
          price == other.price &&
          phone == other.phone &&
          // user == other.user &&
          isFavorite == other.isFavorite;


  @override
  int get hashCode => Object.hash(id, name, desc, createdAt, modifyAt,/* images,*/
      category, price, isFavorite, phone, /*user*/);

  @override
  String toString() {
    return 'Announcement{id: $id, name: $name, desc: $desc, createdAt: $createdAt, modifyAt: $modifyAt, category: $category, price: $price, isFavorite: $isFavorite, phone: $phone,}';
  }

  @override
  int compareTo(Announcement other) {
    return id.compareTo(other.id);
  }
}


// sealed class ConvertUser {
//   static User fromJson(Map<String, Object?> json) {
//     return User
//   }
// }