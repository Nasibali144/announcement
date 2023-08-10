import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required String uid,
    required String name,
    required String email,
    required String imageUrl,
    required String createdAt,
    @Default([]) List<String> announcements,
    @Default([]) List<String> likes,
}) = _Member;

  factory Member.fromJson(Map<String, Object?> json) => _$MemberFromJson(json);
}