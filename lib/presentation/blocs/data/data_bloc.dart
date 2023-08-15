import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:announcement/domain/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_event.dart';
part 'data_state.dart';
part 'data_bloc.freezed.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final AuthRepository authRepository;
  final DataRepository dataRepository;

  DataBloc({required this.dataRepository, required this.authRepository}) : super( const DataState(status: DataStatus.initial, data: [], myData: [], categories: [])) {
    on<DataCategoryEvent>(_getCategory);
    on<DataAnnouncementEvent>(_getData);
    on<DataMyEvent>(_getMyData);
  }


  void _getCategory(DataCategoryEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading));
    final category = await dataRepository.categories();
    category.sort((current, previous) => DateTime.parse(previous.createdAt).compareTo(DateTime.parse(current.createdAt)));
    emit(state.copyWith(status: DataStatus.successCategory, categories: category));
  }

  void _getData(DataAnnouncementEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading, selectedCategoryId: event.categoryId));
    final List<Announcement> data;

    if(event.categoryId == null || event.categoryId == "all") {
      data = await dataRepository.allAnnouncement(authRepository.user!.uid);
    } else {
      data = await dataRepository.partAnnouncement(event.categoryId!, authRepository.user!.uid);
    }

    emit(state.copyWith(status: DataStatus.successData, data: data));
  }

  void _getMyData(DataMyEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading));
    final myData = await dataRepository.myAnnouncement(event.uid);
    emit(state.copyWith(status: DataStatus.successMy, myData: myData));
  }
}
