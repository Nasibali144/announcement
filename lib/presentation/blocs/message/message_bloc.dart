import 'package:announcement/domain/repositories/announcement_repository.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final AuthRepository authRepository;
  final AnnouncementRepository announcementRepository;
  MessageBloc({required this.announcementRepository, required this.authRepository}) : super(const MessageState(status: MessageStatus.initial)) {
    on<MessageCreateEvent>(_create);
  }

  void _create(MessageCreateEvent event, Emitter emit) async {
    emit(state.copyWith(status: MessageStatus.loading));
    final member = await authRepository.gerUserInfo();
    announcementRepository.writeMessage(announcementId: event.announcementId, message: event.message, user: member);
    // final result = await announcementRepository.writeMessage(announcementId: event.announcementId, message: event.message, user: member);
    // if(result) {
    //   emit(state.copyWith(status: MessageStatus.success));
    // } else {
    //   emit(state.copyWith(status: MessageStatus.failure));
    // }
  }
}
