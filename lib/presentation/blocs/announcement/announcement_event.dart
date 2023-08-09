part of 'announcement_bloc.dart';

@freezed
class AnnouncementEvent with _$AnnouncementEvent {
  const factory AnnouncementEvent.upload({
    required String name,
    required String decs,
    required String phone,
    required Category category,
    required double price,
  }) = UploadEvent;

  const factory AnnouncementEvent.getAllData() = GetAllDataEvent;
  const factory AnnouncementEvent.deleteData(String key) = DeleteDataEvent;
  const factory AnnouncementEvent.getImages(List<File> images) = GetImagesEvent;
  const factory AnnouncementEvent.clearImages() = ClearImagesEvent;
}
