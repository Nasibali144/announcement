part of 'data_bloc.dart';

@freezed
class DataEvent with _$DataEvent {
  const factory DataEvent.categories() = DataCategoryEvent;
  const factory DataEvent.announcements({String? categoryId}) = DataAnnouncementEvent;
  const factory DataEvent.myAnnouncement(String uid) = DataMyEvent;
}
