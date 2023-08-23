import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class Member with _$Member {
  @JsonSerializable(explicitToJson: true)
  const factory Member({
    required String uid,
    required String name,
    required String email,
    required String imageUrl,
    required String createdAt,
    @Default([]) List<String> announcements,
    @Default([]) List<String> likes,
    @Default([]) List<Device> device,
}) = _Member;

  factory Member.fromJson(Map<String, Object?> json) => _$MemberFromJson(json);
}

@freezed
class Device with _$Device {
  const factory Device({
    required String deviceId,
    required String deviceType,
    required String deviceToken,
}) = _Device;

  factory Device.fromJson(Map<String, Object?> json) => _$DeviceFromJson(json);
}