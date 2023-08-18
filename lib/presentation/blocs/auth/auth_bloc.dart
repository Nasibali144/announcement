import 'package:announcement/domain/models/member/member_model.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc({required this.repository}) : super(const AuthInitialState()) {
    on<AuthSignInEvent>(signIn);
    on<AuthSignUpEvent>(signUp);
    on<AuthSignOutEvent>(signOut);
    on<AuthGetAccountEvent>(getAccount);
    on<AuthDeleteAccountEvent>(deleteAccount);
  }

  void getAccount(AuthGetAccountEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    final user = await repository.gerUserInfo(uid: event.uid);

    if(event.uid != null) {
      emit(MemberSuccessState(user: user));
    } else {
      emit(AuthSuccessState(user: user));
    }
  }

  void deleteAccount(AuthDeleteAccountEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    final isValid = _validateDeleteAccount(event.password);
    if(isValid) {
      final result = await repository.deleteAccount(event.password);
      if(result) {
        emit(const DeleteAccountSuccessState(message: "Successfully Delete Account!"));
      } else {
        emit(const AuthFailureState(message: "Please check your password!"));
      }
    } else {
      emit(const AuthFailureState(message: "Please check your password!"));
    }

  }

  void signOut(AuthSignOutEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    await repository.signOut();
    emit(const SignOutSuccessState());
  }

  void signUp(AuthSignUpEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    final isValid = _validateSignUp(event.username, event.email, event.password, event.prePassword);

    if(isValid) {
      final user = await repository.signUp(event.username, event.email, event.password);
      if(user != null) {
        emit(const AuthSuccessState(message: "Successfully Sign Up!"));
      } else {
        emit(const AuthFailureState(message: "Something error, please try again later!"));
      }
    } else {
      emit(const AuthFailureState(message: "Please check your email or password!"));
    }
  }

  void signIn(AuthSignInEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    final isValid = _validateSignIn(event.email, event.password);
    if(isValid) {
      final user = await repository.signIn(event.email, event.password);
      if(user != null) {
        emit(const AuthSuccessState(message: "Successfully Sign In!"));
      } else {
        emit(const AuthFailureState(message: "Something error, please try again later!"));
      }
    } else {
      emit(const AuthFailureState(message: "Please check your email or password!"));
    }
  }

  bool _validateSignIn(String email, String password) {
    return email.length > 6 && password.length > 4;
  }

  bool _validateDeleteAccount(String password) {
    return password.length > 4;
  }

  bool _validateSignUp(String username, String email, String password, String prePassword) {
    return email.length > 6 && password.length > 4 && password == prePassword && username.length > 1;
  }
}
