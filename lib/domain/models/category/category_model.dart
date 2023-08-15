import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class Category with _$Category {

  static Category fromString(String category, List<Category> categories) {
    final list = categories.where((element) => element.name == category);
    if(list.isEmpty) {
      return categories.first;
    } else {
      return list.first;
    }
  }

  const factory Category({
    required String id,
    required String name,
    required String description,
    required String createdAt,
    required String modifyAt,
    required String imageUrl,
    @Default([]) List<String> announcements,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}


final categories = [
  {
    "id": "other",
    "name": "Other",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=33934&format=png"
  },
  {
    "id": "phone",
    "name": "Phone",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=85457&format=png"
  },
  {
    "id": "appliances",
    "name": "Appliances",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=85457&format=png"
  },
  {
    "id": "tv",
    "name": "TV",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=85457&format=png"
  },
  {
    "id": "accessory",
    "name": "Accessory",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=85457&format=png"
  },
  {
    "id": "kitchenware",
    "name": "Kitchenware",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=85457&format=png"
  },
  {
    "id": "cars",
    "name": "Cars",
    "description": "none",
    "createdAt": "2023-08-14T22:33:16.680",
    "modifyAt": "2023-08-14T22:33:16.680",
    "imageUrl": "https://img.icons8.com/?size=512&id=85457&format=png"
  },
];