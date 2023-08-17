import 'package:announcement/domain/models/message/message_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
/*

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@freezed
class Announcement with _$Announcement {

  @JsonSerializable(explicitToJson: true)
  const factory Announcement({
    required String id,
    required String name,
    required String description,
    required String createdAt,
    required String modifyAt,
    @Default([]) List<String> images,
    required String categoryId,
    required double price,
    @Default(false) bool isFavorite,
    required String phone,
    required String userId,
    required String address,
    required int viewsCount,
    @Default([]) List<String> likes,
    @Default([]) List<Message> discussion,
}) = _Announcement;

  factory Announcement.fromJson(Map<String, Object?> json) => _$AnnouncementFromJson(json);
}*/

class Announcement {
  final String id;
  final String name;
  final String description;
  final String createdAt;
  final String modifyAt;
  final List<String> images;
  final String categoryId;
  final double price;
  final bool isFavorite;
  final String phone;
  final String userId;
  final String address;
  final int viewsCount;
  final List<String> likes;
  final List<Message> discussion;

  const Announcement({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.modifyAt,
    this.images = const [],
    required this.categoryId,
    required this.price,
    this.isFavorite = false,
    required this.phone,
    required this.userId,
    required this.address,
    required this.viewsCount,
    this.likes = const [],
    this.discussion = const [],
  });

  factory Announcement.fromJson(Map<String, Object?> json) {
    return Announcement(
      id: json["id"] as String,
      name: json["name"] as String,
      description: json["description"] as String,
      createdAt: json["createdAt"] as String,
      modifyAt: json["modifyAt"] as String,
      categoryId: json["categoryId"] as String,
      price: (json["price"] as num).toDouble(),
      phone: json["phone"] as String,
      userId: json["userId"] as String,
      address: json["address"] as String,
      viewsCount: json["viewsCount"] as int,
      isFavorite: json["isFavorite"] as bool,
      images: List<String>.from((json["images"] as List?) ?? []),
      likes: List<String>.from((json["likes"] as List?) ?? []),
      discussion: ((json["discussion"] as List?) ?? [])
          .map((json) =>
              Message.fromJson(Map<String, Object?>.from(json as Map)))
          .toList(),
    );
  }

  Announcement copyWith({
    String? id,
    String? name,
    String? description,
    String? createdAt,
    String? modifyAt,
    List<String>? images,
    String? categoryId,
    double? price,
    bool? isFavorite,
    String? phone,
    String? userId,
    String? address,
    int? viewsCount,
    List<String>? likes,
    List<Message>? discussion,
  }) {
    return Announcement(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      modifyAt: modifyAt ?? this.modifyAt,
      categoryId: categoryId ?? this.categoryId,
      price: price ?? this.price,
      phone: phone ?? this.phone,
      userId: userId ?? this.userId,
      address: address ?? this.address,
      viewsCount: viewsCount ?? this.viewsCount,
      isFavorite: isFavorite ?? this.isFavorite,
      images: images ?? this.images,
      likes: likes ?? this.likes,
      discussion:  discussion ?? this.discussion,
    );
  }

  Map<String, Object?> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "createdAt": createdAt,
    "modifyAt": modifyAt,
    "images": images,
    "categoryId": categoryId,
    "price": price,
    "isFavorite": isFavorite,
    "phone": phone,
    "userId": userId,
    "address": address,
    "viewsCount": viewsCount,
    "likes": likes,
    "discussion": discussion.map((msg) => msg.toJson()).toList(),
  };

  @override
  String toString() {
    return 'Announcement{id: $id, name: $name, description: $description, createdAt: $createdAt, modifyAt: $modifyAt, images: $images, categoryId: $categoryId, price: $price, isFavorite: $isFavorite, phone: $phone, userId: $userId, address: $address, viewsCount: $viewsCount, likes: $likes, discussion: $discussion}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Announcement &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          images == other.images &&
          categoryId == other.categoryId &&
          price == other.price &&
          isFavorite == other.isFavorite &&
          phone == other.phone &&
          userId == other.userId &&
          address == other.address &&
          viewsCount == other.viewsCount &&
          likes == other.likes &&
          discussion == other.discussion;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      createdAt.hashCode ^
      modifyAt.hashCode ^
      images.hashCode ^
      categoryId.hashCode ^
      price.hashCode ^
      isFavorite.hashCode ^
      phone.hashCode ^
      userId.hashCode ^
      address.hashCode ^
      viewsCount.hashCode ^
      likes.hashCode ^
      discussion.hashCode;
}
