part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState.initial() = AnnouncementInitial;
  const factory AnnouncementState.loading() = AnnouncementLoading;
  const factory AnnouncementState.failure({required String message}) = AnnouncementFailure;

  const factory AnnouncementState.uploadSuccess() = AnnouncementUploadSuccess;
  const factory AnnouncementState.getAllDataSuccess({required List<Announcement> items}) = AnnouncementGetAllDataSuccess;
}
