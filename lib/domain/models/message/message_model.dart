import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required String userId,
    required String userName,
    required String userImage,
    required String createdAt,
    required String modifyAt,
    required String messages,
}) = _Message;

  factory Message.fromJson(Map<String, Object?> json) => _$MessageFromJson(json);
}