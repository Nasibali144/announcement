import 'dart:io';
import 'package:announcement/core/service_locator.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/domain/repositories/announcement_repository.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_event.dart';

part 'announcement_state.dart';

part 'announcement_bloc.freezed.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final AnnouncementRepository repository;

  AnnouncementBloc({required this.repository})
      : super(const AnnouncementState(status: Status.initial)) {
    on<UploadEvent>(upload);
    on<DeleteDataEvent>(deleteData);
    on<GetImagesEvent>(getImages);
    on<ClearImagesEvent>(clearImages);
  }

  void upload(UploadEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.loading, images: event.files));

    if(event.name.isEmpty || event.files.isEmpty || event.decs.isEmpty) {
      emit(const AnnouncementState(status: Status.failure, message: "Please fill all data"));
      return;
    }

    final announcement = Announcement(
      userId: locator<AuthRepository>().user!.uid,
      id: "01",
      name: event.name,
      description: event.decs,
      createdAt: DateTime.now().toIso8601String(),
      modifyAt: DateTime.now().toIso8601String(),
      categoryId: event.category.id,
      price: event.price,
      isFavorite: false,
      phone: event.phone,
      images: [],
      address: event.address,
      viewsCount: 0,
      likesCount: 0,
    );
    final result = await repository.upload(announcement, event.files, event.category.name.toLowerCase());
    if(result) {
      emit(const AnnouncementState(status: Status.success));
    } else {
      emit(const AnnouncementState(status: Status.failure, message: "Some thing error, try again later!!!"));
    }
  }

  void deleteData(DeleteDataEvent event, Emitter emit) async {
    emit(const AnnouncementState(status: Status.loading));
    final result = await repository.delete(event.announcement);
    if(result) {
      emit(const AnnouncementState(status: Status.success, message: "Successfully Deleted"));
    } else {
      emit(const AnnouncementState(status: Status.failure, message: "Some thing error, try again later!!!"));
    }
  }

  void getImages(GetImagesEvent event, Emitter emit) async {
    emit(AnnouncementState(status: Status.success, images: event.images));
  }

  void clearImages(ClearImagesEvent event, Emitter emit) async {
    emit(const AnnouncementState(status: Status.success));
  }
}
