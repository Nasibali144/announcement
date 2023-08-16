part of 'data_bloc.dart';

@freezed
class DataState with _$DataState {
  const factory DataState({
    required DataStatus status,
    required List<Category> categories,
    String? selectedCategoryId,
    required List<Announcement> data,
    required List<Announcement> myData,
    String? message,
}) = _DataState;
}

enum DataStatus {
  initial,
  loading,
  failure,
  successData,
  successCategory,
  successMy,
  successLike,
}
