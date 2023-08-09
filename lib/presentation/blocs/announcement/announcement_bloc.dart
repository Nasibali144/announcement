import 'dart:io';

import 'package:announcement/core/service_locator.dart';
import 'package:announcement/domain/auth_repository/announcement_repository.dart';
import 'package:announcement/domain/auth_repository/auth_repository.dart';
import 'package:announcement/domain/models/announcement_model.dart';
import 'package:announcement/domain/models/category_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_event.dart';

part 'announcement_state.dart';

part 'announcement_bloc.freezed.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final AnnouncementRepository repository;

  AnnouncementBloc({required this.repository})
      : super(const AnnouncementState(status: Status.initial, items: [])) {
    on<UploadEvent>(upload);
    on<GetAllDataEvent>(getAllData);
    on<DeleteDataEvent>(deleteData);
    on<GetImagesEvent>(getImages);
    on<ClearImagesEvent>(clearImages);
  }

  void upload(UploadEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.loading, items: state.items, images: event.files));

    if(event.name.isEmpty || event.files.isEmpty || event.decs.isEmpty) {
      emit(AnnouncementState(status: Status.failure, items: state.items, message: "Please fill all data"));
      return;
    }

    final announcement = Announcement(
      userId: locator<AuthRepository>().user!.uid,
      id: "01",
      name: event.name,
      desc: event.decs,
      createdAt: DateTime.now().toIso8601String(),
      modifyAt: DateTime.now().toIso8601String(),
      category: event.category,
      price: event.price,
      isFavorite: false,
      phone: event.phone,
      images: [],
    );
    final result = await repository.upload(announcement, event.files);
    if(result) {
      emit(AnnouncementState(status: Status.success, items: state.items));
    } else {
      emit(AnnouncementState(status: Status.failure, items: state.items, message: "Some thing error, try again later!!!"));
    }
  }

  void getAllData(GetAllDataEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.loading, items: state.items));
    final result = await repository.getAllData();
    emit(AnnouncementState(status: Status.success, items: result));
  }

  void deleteData(DeleteDataEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.loading, items: state.items));
    final result = await repository.delete(event.key);
    if(result) {
      add(const GetAllDataEvent());
    } else {
      emit(AnnouncementState(status: Status.failure, items: state.items, message: "Some thing error, try again later!!!"));
    }
  }

  void getImages(GetImagesEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.success, items: state.items, images: event.images));
  }

  void clearImages(ClearImagesEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.success, items: state.items));
  }
}
