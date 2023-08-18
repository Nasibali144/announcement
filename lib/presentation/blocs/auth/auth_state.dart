part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitialState;
  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.success({String? message, Member? user}) = AuthSuccessState;
  const factory AuthState.successMember({required Member user}) = MemberSuccessState;
  const factory AuthState.signOutSuccess({String? message}) = SignOutSuccessState;
  const factory AuthState.deleteAccountSuccess({String? message}) = DeleteAccountSuccessState;
  const factory AuthState.failure({required String message}) = AuthFailureState;
}
