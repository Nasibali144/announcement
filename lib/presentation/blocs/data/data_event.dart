part of 'data_bloc.dart';

@freezed
class DataEvent with _$DataEvent {
  const factory DataEvent.allAnnouncement() = DataAllEvent;
  const factory DataEvent.categories() = DataCategoryEvent;
  const factory DataEvent.partAnnouncement(String id) = DataPartEvent;
  const factory DataEvent.myAnnouncement(String uid) = DataMyEvent;
}
