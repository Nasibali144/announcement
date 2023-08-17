part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.create(String message, String announcementId) = MessageCreateEvent;
  const factory MessageEvent.read() = MessageReadEvent;
  const factory MessageEvent.edit(String id, String message) = MessageEditEvent;
  const factory MessageEvent.delete(String id) = MessageDeleteEvent;
}


/// create
/// read
/// edit
/// delete