part of 'data_bloc.dart';

@freezed
class DataState with _$DataState {
  const factory DataState({
    required DataStatus status,
    required List<Category> categories,
    required List<Announcement> data,
    required List<Announcement> myData,
    required List<Announcement> partData,
    String? message,
}) = _DataState;
}

enum DataStatus {
  initial,
  loading,
  failure,
  success,
}
