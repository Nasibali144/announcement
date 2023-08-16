part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(String email, String password) = AuthSignInEvent;
  const factory AuthEvent.signUp(String username, String email, String password, String prePassword) = AuthSignUpEvent;
  const factory AuthEvent.signOut() = AuthSignOutEvent;
  const factory AuthEvent.deleteAccount(String password) = AuthDeleteAccountEvent;
  const factory AuthEvent.getAccount({String? uid}) = AuthGetAccountEvent;
}
