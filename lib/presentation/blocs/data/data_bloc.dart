import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/domain/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_event.dart';
part 'data_state.dart';
part 'data_bloc.freezed.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final DataRepository dataRepository;

  DataBloc({required this.dataRepository}) : super( const DataState(status: DataStatus.initial, data: [], myData: [], partData: [], categories: [])) {
    on<DataAllEvent>(_getAllData);
    on<DataCategoryEvent>(_getCategory);
    on<DataPartEvent>(_getPartData);
    on<DataMyEvent>(_getMyData);
  }

  void _getAllData(DataAllEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading));
    final data = await dataRepository.allAnnouncement();
    emit(state.copyWith(status: DataStatus.successData, data: data));
  }

  void _getCategory(DataCategoryEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading));
    final category = await dataRepository.categories();
    emit(state.copyWith(status: DataStatus.successCategory, categories: category));
  }

  void _getPartData(DataPartEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading));
    final part = state.data.where((element) => element.categoryId == event.id).toList();
    emit(state.copyWith(status: DataStatus.successPart, partData: part));
  }

  void _getMyData(DataMyEvent event, Emitter emit) async {
    emit(state.copyWith(status: DataStatus.loading));
    final myData = await dataRepository.myAnnouncement(event.uid);
    emit(state.copyWith(status: DataStatus.successMy, myData: myData));
  }
}
