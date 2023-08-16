part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState({
    required Status status,
    @Default([])List<File> images,
    String? message,
    Stream<Announcement>? stream,
  }) = _AnnouncementState;
}

enum Status {
  initial,
  loading,
  failure,
  success,
}
