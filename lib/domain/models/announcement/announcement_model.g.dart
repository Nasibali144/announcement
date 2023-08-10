// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcement _$$_AnnouncementFromJson(Map<String, dynamic> json) =>
    _$_Announcement(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as String,
      modifyAt: json['modifyAt'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      categoryId: json['categoryId'] as String,
      price: (json['price'] as num).toDouble(),
      isFavorite: json['isFavorite'] as bool,
      phone: json['phone'] as String,
      userId: json['userId'] as String,
      address: json['address'] as String,
      viewsCount: json['viewsCount'] as int,
      likesCount: json['likesCount'] as int,
      discussion: (json['discussion'] as List<dynamic>?)
              ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AnnouncementToJson(_$_Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'modifyAt': instance.modifyAt,
      'images': instance.images,
      'categoryId': instance.categoryId,
      'price': instance.price,
      'isFavorite': instance.isFavorite,
      'phone': instance.phone,
      'userId': instance.userId,
      'address': instance.address,
      'viewsCount': instance.viewsCount,
      'likesCount': instance.likesCount,
      'discussion': instance.discussion.map((e) => e.toJson()).toList(),
    };
