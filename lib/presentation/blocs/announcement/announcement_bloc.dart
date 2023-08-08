import 'package:announcement/domain/auth_repository/announcement_repository.dart';
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
      : super(const AnnouncementState.initial()) {
    on<UploadEvent>(upload);
    on<GetAllDataEvent>(getAllData);
  }

  void upload(UploadEvent event, Emitter emit) async {
    emit(const AnnouncementLoading());
    final announcement = Announcement(
      id: "01",
      name: event.name,
      desc: event.decs,
      createdAt: DateTime.now().toIso8601String(),
      modifyAt: DateTime.now().toIso8601String(),
      category: event.category,
      price: event.price,
      isFavorite: false,
      phone: event.phone,
    );
    final result = await repository.upload(announcement);
    if(result) {
      emit(const AnnouncementUploadSuccess());
    } else {
      emit(const AnnouncementFailure(message: "Some thing error, try again later!!!"));
    }
  }

  void getAllData(GetAllDataEvent event, Emitter emit) async {
    emit(const AnnouncementLoading());
    final result = await repository.getAllData();
    emit(AnnouncementGetAllDataSuccess(items: result));
  }
}
