part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState({
    required Status status,
    required List<Announcement> items,
    @Default([])List<File> images,
    String? message,
  }) = _AnnouncementState;
}

enum Status {
  initial,
  loading,
  failure,
  success,
}
