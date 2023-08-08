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
}
