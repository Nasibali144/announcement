// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      imageUrl: json['imageUrl'] as String,
      createdAt: json['createdAt'] as String,
      announcements: (json['announcements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
      'announcements': instance.announcements,
      'likes': instance.likes,
    };
