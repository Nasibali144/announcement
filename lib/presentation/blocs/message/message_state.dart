part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required MessageStatus status,
    String? message,
}) = _MessageState;
}

enum MessageStatus {
  initial,
  loading,
  failure,
  success,
}


