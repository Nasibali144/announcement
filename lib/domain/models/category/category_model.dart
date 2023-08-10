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
