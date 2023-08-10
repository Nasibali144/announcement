import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    emit(AuthSuccessState(user: repository.user));
  }

  void deleteAccount(AuthDeleteAccountEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    await repository.deleteAccount();
    emit(const DeleteAccountSuccessState());
  }

  void signOut(AuthSignOutEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    await repository.signOut();
    emit(const SignOutSuccessState());
  }

  void signUp(AuthSignUpEvent event, Emitter emit) async {
    emit(const AuthState.loading());
    final isValid = validateSignUp(event.username, event.email, event.password, event.prePassword);

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
    final isValid = validateSignIn(event.email, event.password);
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

  bool validateSignIn(String email, String password) {
    return email.length > 6 && password.length > 4;
  }

  bool validateSignUp(String username, String email, String password, String prePassword) {
    return email.length > 6 && password.length > 4 && password == prePassword && username.length > 1;
  }
}
