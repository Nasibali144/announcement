part of 'announcement_bloc.dart';

@freezed
class AnnouncementEvent with _$AnnouncementEvent {
  const factory AnnouncementEvent.upload({
    required String name,
    required String decs,
    required String phone,
    required String address,
    required Category category,
    required double price,
    required List<File> files,
  }) = UploadEvent;

  const factory AnnouncementEvent.deleteData(Announcement announcement, String categoryName) = DeleteDataEvent;
  const factory AnnouncementEvent.getImages(List<File> images) = GetImagesEvent;
  const factory AnnouncementEvent.clearImages() = ClearImagesEvent;
  const factory AnnouncementEvent.like(Announcement announcement) = LikeEvent;
  const factory AnnouncementEvent.data(String announcementId) = AnnouncementDataEvent;
}
