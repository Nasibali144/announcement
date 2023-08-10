import 'package:announcement/domain/models/message/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    required bool isFavorite,
    required String phone,
    required String userId,
    required String address,
    required int viewsCount,
    required int likesCount,
    @Default([]) List<Message> discussion,
}) = _Announcement;

  factory Announcement.fromJson(Map<String, Object?> json) => _$AnnouncementFromJson(json);
}